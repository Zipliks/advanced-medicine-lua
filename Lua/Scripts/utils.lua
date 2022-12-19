---@diagnostic disable: undefined-field, undefined-global
Utils = {}

math.randomseed(os.time())

function Utils.is_game_paused()
	if SERVER then
		return false
	end

	return Game.Paused
end

local function isTable(array)
	if(type(array) == "table") then
		return true
	end
	return false
end

--[[ Utils.SetAffliction
* character: Кто получит аффликшен (Barotrauma.Character)
* affliction: Айди (String)
* strength: Сколько должно быть аффликшена
* limb: Конечность для применения. (Barotrauma.LimbType)
* add: Если true, то аффликшен будет добавлятся, а не переназначаться
* source: кто применил этот аффликшен (Barotrauma.Character) ]] --
function Utils.SetAffliction(character, affliction, strength, limb, add, source)
	local prefab = AfflictionPrefab.Prefabs[affliction]

	local limb = limb or LimbType.Torso
	local add = add or false

	local strength = strength * character.CharacterHealth.MaxVitality / 100
	local affliction = prefab.Instantiate(strength, source)

	character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limb), affliction, add)
end

--[[ Utils.SetAffliction
* character: Кто получит аффликшен (Barotrauma.Character)
* affliction: Айди (String)
* strength: Сколько должно быть аффликшена
* limb: Конечность для применения. (Barotrauma.LimbType)
* add: Если true, то аффликшен будет добавлятся, а не переназначаться
* seconds: длительность аффликшена, если он временный
* source: кто применил этот аффликшен (Barotrauma.Character) ]]
function Utils.SetAfflictionTime(character, affliction, strength, limb, add, seconds, source)
	local prefab = AfflictionPrefab.Prefabs[affliction]
	local limbtype = limb or LimbType.Torso
	local is_add = add or false
	local delay = seconds * 1000 or 0
	local apply_str = strength * character.CharacterHealth.MaxVitality / 100
	local apply_aff = prefab.Instantiate(apply_str, source)
	character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limbtype), apply_aff, is_add)

	Timer.Wait(function()
		local apply_aff = prefab.Instantiate(-strength, source)
		character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limbtype), apply_aff, is_add)
	end, delay)
end

--[[ Utils.SetAffCondition
* target: targetCharacter. Кого проверять.
* id: String. Айди аффликшена
* strength: Integer. Сила аффликшена
* limb: LimbType. Конечность проверки
* condition: String|Table. Условие при котором будет применён id
* condition_str: Integer|Table. Сила condition при котором будет применён id
* add: Bool. Перезаписывать значение или прибавлять
* source: usingCharacter. Кто применил	
	]]
function Utils.SetAffCondition(target, id, strength, limb, condition, condition_str, add, source)
	local check = Utils.GetAffliction(target, condition[i])
	for i=1, #id do
		if check and check == condition_str[i] then
			Utils.SetAffliction(id[i], strength[i])
		end
	end
end

function Utils.RemoveItem(item)
	if item == nil or item.Removed then return end
	if SERVER then
		-- use server remove method
		Entity.Spawner.AddEntityToRemoveQueue(item)
	else
		-- use client remove method
		item.Remove()
	end
end

function Utils.SearchTable(table, value)
	for _, val in ipairs(table) do
		if val == value then
			return true
		end
	end
	return false
end

--[[
Utils.GetAffliction
* character: У кого проверять (Barotrauma.Character)
* affliction: Айди аффликшена на проверку (String) 
]]
function Utils.GetAffliction(character, affliction)
	local aff = character.CharacterHealth.GetAffliction(affliction)
	if aff == nil then
		return nil
	end
	return aff.Strength
end

--[[ Utils.GetAfflictionLimb
* character: У кого проверять (Barotrauma.Character)
* affliction: Айди аффликшена на проверку (String)
* limb: Конечность для проверки. (Barotrauma.LimbType) --]]
function Utils.GetAfflictionLimb(character, affliction, limb)
	local aff = character.CharacterHealth.GetAffliction(affliction, character.AnimController.GetLimb(limb))
	if aff == nil then
		return nil
	end
	return aff.Strength
end

function Utils.GetSkillLevel(character, skilltype)
	return character.GetSkillLevel(Identifier(skilltype))
end

function Utils.ThrowError(text, level)
	if level == nil then level = 0 end
	error("AMlua Custom Error: " .. text, 2 + level)
end

--[[
Возвращает true/false с псевдошансом
]]
function Utils.Probability(chance)
	local random = math.random() * 100
	return random <= chance
end

-- Thanks Mannatu. Now this is my function e-he-he-he
function Utils.LimbTypeToString(type)
	if (type == LimbType.Torso) then return "Torso" end
	if (type == LimbType.Head) then return "Head" end
	if (type == LimbType.LeftArm or type == LimbType.LeftForearm or type == LimbType.LeftHand) then return "Left Arm" end
	if (type == LimbType.RightArm or type == LimbType.RightForearm or type == LimbType.RightHand) then return "Right Arm" end
	if (type == LimbType.LeftLeg or type == LimbType.LeftThigh or type == LimbType.LeftFoot) then return "Left Leg" end
	if (type == LimbType.RightLeg or type == LimbType.RightThigh or type == LimbType.RightFoot) then return "Right Leg" end
	return "???"
end

-- converts thighs, feet, forearms and hands into legs and arms
function Utils.NormalizeLimbType(limbtype)
	if limbtype == LimbType.Head or
		limbtype == LimbType.Torso or
		limbtype == LimbType.RightArm or
		limbtype == LimbType.LeftArm or
		limbtype == LimbType.RightLeg or
		limbtype == LimbType.LeftLeg then
		return limbtype
	end
	if limbtype == LimbType.LeftForearm or limbtype == LimbType.LeftHand then
		return LimbType.LeftArm
	end
	if limbtype == LimbType.RightForearm or limbtype == LimbType.RightHand then
		return LimbType.RightArm
	end
	if limbtype == LimbType.LeftThigh or limbtype == LimbType.LeftFoot then
		return LimbType.LeftLeg
	end
	if limbtype == LimbType.RightThigh or limbtype == LimbType.RightFoot then
		return LimbType.RightLeg
	end
	if limbtype == LimbType.Waist then
		return LimbType.Torso
	end
	return limbtype
end

-- misc --
local function PrintChat(msg)
	if SERVER then
		-- use server method
		Game.SendMessage(msg, ChatMessageType.Server)
	else
		-- use client method
		Game.ChatBox.AddMessage(ChatMessage.Create("", msg, ChatMessageType.Server, nil))
	end

end

function Utils.DMClient(client, msg, color)
	if SERVER then
		if (client == nil) then return end

		local chatMessage = ChatMessage.Create("", msg, ChatMessageType.Server, nil)
		if (color ~= nil) then chatMessage.Color = color end
		Game.SendDirectChatMessage(chatMessage, client)
	else
		PrintChat(msg)
	end
end

function Utils.CharacterToClient(character)
	if not SERVER then return nil end
	for _, client in pairs(Client.ClientList) do
		if client.Character == character then
			return client
		end
	end
	return nil
end