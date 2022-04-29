
-- This file contains a bunch of useful functions that see heavy use in the other scripts.
Utils = {} -- Helperfunctions

function Utils.Lerp(a, b, t)
	return a + (b - a) * t
end

function Utils.Round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

function Utils.Clamp(num, min, max)
    if(num<min) then
        num = min 
    elseif(num>max) then 
        num = max 
    end
    return num
end

-- returns num if num > min, else defaultvalue
function Utils.Minimum(num, min, defaultvalue)
    if(num<min) then num=(defaultvalue or 0) end
    return num
end

-- /// affliction magic ///
------------------------------
function Utils.GetAfflictionStrength(character,identifier,defaultvalue)
    local aff = character.CharacterHealth.GetAffliction(identifier)
    local res = defaultvalue or 0
    if(aff~=nil) then
        res = aff.Strength
    end
    return res
end

function Utils.GetAfflictionStrengthLimb(character,limbtype,identifier,defaultvalue)
    local aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(limbtype))
    local res = defaultvalue or 0
    if(aff~=nil) then
        res = aff.Strength
    end
    return res
end

function Utils.HasAffliction(character,identifier,minamount)
    local aff = character.CharacterHealth.GetAffliction(identifier)
    local res = false
    if(aff~=nil) then
        res = aff.Strength >= (minamount or 0.5)
    end
    return res
end

function Utils.HasAfflictionLimb(character,identifier,limbtype,minamount)
    local aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(limbtype))
    local res = false
    if(aff~=nil) then
        res = aff.Strength >= (minamount or 0.5)
    end
    return res
end

-- this might be overkill, but a lot of people have reported dislocation fixing issues
function Utils.HasAfflictionExtremity(character,identifier,limbtype,minamount)
    local aff = nil
    
    if(limbtype == LimbType.LeftArm or limbtype == LimbType.LeftForearm or limbtype == LimbType.LeftHand) then
        aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftArm))
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftForearm)) end
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftHand)) end
    elseif(limbtype == LimbType.RightArm or limbtype == LimbType.RightForearm or limbtype == LimbType.RightHand) then
        aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightArm))
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightForearm)) end
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightHand)) end
    elseif(limbtype == LimbType.LeftLeg or limbtype == LimbType.LeftThigh or limbtype == LimbType.LeftFoot) then
        aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftLeg))
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftThigh)) end
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.LeftFoot)) end
    elseif(limbtype == LimbType.RightLeg or limbtype == LimbType.RightThigh or limbtype == LimbType.RightFoot) then
        aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightLeg))
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightThigh)) end
        if(aff==nil) then aff = character.CharacterHealth.GetAffliction(identifier,character.AnimController.GetLimb(LimbType.RightFoot)) end
    end
    
    local res = false
    if(aff~=nil) then
        res = aff.Strength >= (minamount or 0.5)
    end
    return res
end

function Utils.SetAffliction(character,identifier,strength,aggressor,prevstrength)
    Utils.SetAfflictionLimb(character,identifier,LimbType.Torso,strength,aggressor,prevstrength)
end

-- the main "mess with afflictions" function
function Utils.SetAfflictionLimb(character,identifier,limbtype,strength,aggressor,prevstrength)
    local prefab = AfflictionPrefab.Prefabs[identifier]
    local resistance = character.CharacterHealth.GetResistance(prefab)
    if resistance >= 1 then return end

    local strength = strength*character.CharacterHealth.MaxVitality/100/(1-resistance)
    local affliction = prefab.Instantiate(
        strength
        ,aggressor)

    character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limbtype),affliction,false)

    -- turn target aggressive if damaging
--    if(aggressor ~= nil and character~=aggressor) then 
--        if prevstrength == nil then prevstrength = 0 end
--
--        local dmg = affliction.GetVitalityDecrease(character.CharacterHealth,strength-prevstrength)
--
--        if (dmg ~= nil and dmg > 0) then
--            MakeAggressive(aggressor,character,dmg)
--        end
--    end

    
end

function Utils.ApplyAfflictionChange(character,identifier,strength,prevstrength,minstrength,maxstrength)
    strength = Utils.Clamp(strength,minstrength,maxstrength)
    prevstrength = Utils.Clamp(prevstrength,minstrength,maxstrength)
    if (prevstrength~=strength) then
        Utils.SetAffliction(character,identifier,strength)
    end
end

function Utils.ApplyAfflictionChangeLimb(character,limbtype,identifier,strength,prevstrength,minstrength,maxstrength)
    strength = Utils.Clamp(strength,minstrength,maxstrength)
    prevstrength = Utils.Clamp(prevstrength,minstrength,maxstrength)
    if (prevstrength~=strength) then
        Utils.SetAfflictionLimb(character,identifier,limbtype,strength)
    end
end

function Utils.ApplySymptom(character,identifier,hassymptom,removeifnot)    
    if(not hassymptom and not removeifnot) then return end
    
    local strength = 0
    if(hassymptom) then strength = 100 end
    
    if(removeifnot or hassymptom) then 
        Utils.SetAffliction(character,identifier,strength)
    end
end

function Utils.ApplySymptomLimb(character,limbtype,identifier,hassymptom,removeifnot)    
    if(not hassymptom and not removeifnot) then return end
    
    local strength = 0
    if(hassymptom) then strength = 100 end
    
    if(removeifnot or hassymptom) then 
        Utils.SetAfflictionLimb(character,identifier,limbtype,strength)
    end
end

function Utils.AddAfflictionLimb(character,identifier,limbtype,strength,aggressor)
    local prevstrength = Utils.GetAfflictionStrengthLimb(character,limbtype,identifier,0)
    Utils.SetAfflictionLimb(character,identifier,limbtype,
    strength+prevstrength,
    aggressor,prevstrength)
end

function Utils.AddAffliction(character,identifier,strength,aggressor)
    local prevstrength = Utils.GetAfflictionStrength(character,identifier,0)
    Utils.SetAffliction(character,identifier,
    strength+prevstrength,
    aggressor,prevstrength)
end

-- /// misc ///

function PrintChat(msg)
    if SERVER then
        -- use server method
        Game.SendMessage(msg, ChatMessageType.Server) 
    else
        -- use client method
        Game.ChatBox.AddMessage(ChatMessage.Create("", msg, ChatMessageType.Server, nil))
    end
    
end

function Utils.DMClient(client,msg,color)
    if SERVER then
        if(client==nil) then return end

        local chatMessage = ChatMessage.Create("", msg, ChatMessageType.Server, nil)
        if(color~=nil) then chatMessage.Color = color end
        Game.SendDirectChatMessage(chatMessage, client)
    else
        PrintChat(msg)
    end
end

function Utils.Chance(chance)
    return math.random() < chance
end

function Utils.BoolToNum(val,trueoutput)
    if(val) then return trueoutput or 1 end
    return 0
end

function Utils.GetSkillLevel(character,skilltype)
    return character.GetSkillLevel(Identifier(skilltype))
end

function Utils.GetSkillRequirementMet(character,skilltype,requiredamount)
    local skilllevel = Utils.GetSkillLevel(character,skilltype)
    return Utils.Chance(Utils.Clamp(skilllevel/requiredamount,0,1))
end

function Utils.GetSurgerySkillRequirementMet(character,requiredamount)
    local skilllevel = Utils.GetSurgerySkill(character)
    return Utils.Chance(Utils.Clamp(skilllevel/requiredamount,0,1))
end

function Utils.GetSurgerySkill(character)
    if NTSP ~= nil then 
        return math.max(
            5,
            Utils.GetSkillLevel(character,"surgery"),
            Utils.GetSkillLevel(character,"medical")/4)
     end

    return Utils.GetSkillLevel(character,"medical")
end

function Utils.GiveSkill(character,skilltype,amount)
    if character ~= nil and character.Info ~= nil then
        character.Info.IncreaseSkillLevel(Identifier(skilltype), amount)
    end
end

-- amount = vitality healed
function Utils.GiveSkillScaled(character,skilltype,amount)
    if character ~= nil and character.Info ~= nil then
        Utils.GiveSkill(character,skilltype,amount*0.001/math.max(Utils.GetSkillLevel(character,skilltype),1))
    end
end

function Utils.GiveItem(character,identifier)
    if SERVER then
        -- use server spawn method
        Game.SpawnItem(identifier,character.WorldPosition,true,character)
    else
        -- use client spawn method
        character.Inventory.TryPutItem(Item(ItemPrefab.GetItemPrefab(identifier), character.WorldPosition), nil, {InvSlotType.Any})
    end
end

function Utils.GiveItemAtCondition(character,identifier,condition)
    if SERVER then
        -- use server spawn method
        local prefab = ItemPrefab.GetItemPrefab(identifier)
        Entity.Spawner.AddItemToSpawnQueue(prefab, character.WorldPosition, nil, nil, function(item)
            item.Condition = condition
            character.Inventory.TryPutItem(item, nil, {InvSlotType.Any})
        end)
    else
        -- use client spawn method
        local item = Item(ItemPrefab.GetItemPrefab(identifier), character.WorldPosition)
        item.Condition = condition
        character.Inventory.TryPutItem(item, nil, {InvSlotType.Any})
    end
end

function Utils.SpawnItemAt(identifier,position)
    if SERVER then
        -- use server spawn method
        Game.SpawnItem(identifier,position,false,nil)
    else
        -- use client spawn method
        Item(ItemPrefab.GetItemPrefab(identifier), position)
    end
end

function Utils.ForceArmLock(character,identifier)
    if SERVER then
        Utils.GiveItem(character,identifier)
    else
        local item = Item(ItemPrefab.GetItemPrefab(identifier), character.WorldPosition)
        local handindex = 6
        if(identifier=="armlock2") then handindex = 5 end

        -- drop previously held item
        local previtem = character.Inventory.GetItemAt(handindex)
        if(previtem ~= nil) then 
            previtem.Drop(character,true)
        end

        character.Inventory.ForceToSlot(item,handindex)
    end
end

function Utils.RemoveItem(item) 
    if SERVER then
        -- use server remove method
        Entity.Spawner.AddEntityToRemoveQueue(item)
    else
        -- use client remove method
        item.Remove()
    end
end

function Utils.StartsWith(String,Start)
    return string.sub(String,1,string.len(Start))==Start
end

function Utils.SplitString (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

-- this function is dumb and you shouldn't use it
function Utils.TableSize(table)
    return #table
end

function Utils.HasAbilityFlag(character,flagtype)
    return character.HasAbilityFlag(flagtype)
end

function Utils.MakeAggressive(aggressor,target,damage)
    
    -- this shit isnt working!!!!
    -- why is this shit not working!?!?!?!
    
--    if(aggressor==nil) then print("no aggressor") else print("aggressor: "..aggressor.Name) end
--    if(target==nil) then print("no target") else print("target: "..target.Name) end
--    if(damage==nil) then print("no damage") else print("damage: "..damage) end
--    
--    if ((damage ~= nil and damage <= 0.5) or target==nil or aggressor==nil or target.AIController==nil or aggressor==target) then return end
--    
--    if damage == nil then damage = 5 end
--        
--    local AttackResult = LuaUserData.CreateStatic("Barotrauma.AttackResult")
--    local res = AttackResult.__new(Round(damage),nil)
--    target.AIController.OnAttacked(aggressor,res)
 
end

function Utils.CharacterToClient(character)

    if not SERVER then return nil end

    for key,client in pairs(Client.ClientList) do
        if client.Character == character then 
            return client
        end
    end

    return nil
end

function Utils.ClientFromName(name)

    if not SERVER then return nil end

    for key,client in pairs(Client.ClientList) do
        if client.Name == name then 
            return client
        end
    end

    return nil
end

function Utils.LimbTypeToString(type)
    if(type==LimbType.Torso) then return "Torso" end
    if(type==LimbType.Head) then return "Head" end
    if(type==LimbType.LeftArm or type==LimbType.LeftForearm or type==LimbType.LeftHand) then return "Left Arm" end
    if(type==LimbType.RightArm or type==LimbType.RightForearm or type==LimbType.RightHand) then return "Right Arm" end
    if(type==LimbType.LeftLeg or type==LimbType.LeftThigh or type==LimbType.LeftFoot) then return "Left Leg" end
    if(type==LimbType.RightLeg or type==LimbType.RightThigh or type==LimbType.RightFoot) then return "Right Leg" end
    return "???"
end

function Utils.GameIsPaused()
    if SERVER then return false end

    return Game.Paused
end

function Utils.TableContains(table, value)
    for i, v in ipairs(table) do
        if v == value then
            return true
        end
    end

    return false
end

function Utils.PutItemInsideItem(container,identifier,index)
    if index==nil then index = 0 end

    local inv = container.OwnInventory
    if inv == nil then return end

    local previtem = inv.GetItemAt(index)
    if previtem ~= nil then
        inv.ForceRemoveFromSlot(previtem, index)
        previtem.Drop()
    end

    Timer.Wait(function() 
        if SERVER then
            -- use server spawn method
            local prefab = ItemPrefab.GetItemPrefab(identifier)
            Entity.Spawner.AddItemToSpawnQueue(prefab, container.WorldPosition, nil, nil, function(item)
                inv.TryPutItem(item, nil, {index}, true, true)
            end)
        else
            -- use client spawn method
            local item = Item(ItemPrefab.GetItemPrefab(identifier), container.WorldPosition)
            inv.TryPutItem(item, nil, {index}, true, true)
        end
    end,
    10)
end

function Utils.CanPerformSurgeryOn(character)
    return Utils.HasAffliction(character,"analgesia",1) or Utils.HasAffliction(character,"sym_unconsciousness",0.1)
end

-- converts thighs, feet, forearms and hands into legs and arms
function Utils.NormalizeLimbType(limbtype) 
    if 
        limbtype == LimbType.Head or 
        limbtype == LimbType.Torso or 
        limbtype == LimbType.RightArm or
        limbtype == LimbType.LeftArm or
        limbtype == LimbType.RightLeg or
        limbtype == LimbType.LeftLeg then 
        return limbtype end

    if limbtype == LimbType.LeftForearm or limbtype==LimbType.LeftHand then return LimbType.LeftArm end
    if limbtype == LimbType.RightForearm or limbtype==LimbType.RightHand then return LimbType.RightArm end

    if limbtype == LimbType.LeftThigh or limbtype==LimbType.LeftFoot then return LimbType.LeftLeg end
    if limbtype == LimbType.RightThigh or limbtype==LimbType.RightFoot then return LimbType.RightLeg end

    if limbtype == LimbType.Waist then return LimbType.Torso end

    return limbtype
end

-- returns an unrounded random number
function Utils.RandomRange(min,max) 
    return min+math.random()*(max-min)
end

function Utils.LimbIsExtremity(limbtype) 
    return limbtype~=LimbType.Torso and limbtype~=LimbType.Head
end

function Utils.HasTalent(character,talentidentifier) 

    local talents = character.Info.UnlockedTalents

    for value in talents do
        if value.Value == talentidentifier then return true end
    end

    return false
end

function Utils.CharacterDistance(char1,char2) 
    return Vector2.Distance(char1.WorldPosition,char2.WorldPosition)
end

function Utils.GetOuterWearIdentifier(character) 
    return Utils.GetCharacterInventorySlotIdentifer(character,4)
end
function Utils.GetInnerWearIdentifier(character) 
    return Utils.GetCharacterInventorySlotIdentifer(character,3)
end
function Utils.GetHeadWearIdentifier(character) 
    return Utils.GetCharacterInventorySlotIdentifer(character,2)
end

function Utils.GetCharacterInventorySlotIdentifer(character,slot) 
    local item = character.Inventory.GetItemAt(slot)
    if item==nil then return nil end
    return item.Prefab.Identifier.Value
end

function Utils.GetOuterWear(character) 
    return Utils.GetCharacterInventorySlot(character,4)
end
function Utils.GetInnerWear(character) 
    return Utils.GetCharacterInventorySlot(character,3)
end
function Utils.GetHeadWear(character) 
    return Utils.GetCharacterInventorySlot(character,2)
end

function Utils.GetCharacterInventorySlot(character,slot) 
    return character.Inventory.GetItemAt(slot)
end

function Utils.ItemHasTag(item,tag)
    if item==nil then return false end
    return item.HasTag(tag)
end

function Utils.CauseOfDeathToString(cod) 
    local res = nil

    if cod.Affliction ~= nil and -- from affliction
    cod.Affliction.CauseOfDeathDescription ~= nil then
        res = cod.Affliction.CauseOfDeathDescription
    else -- from type
        res = tostring(cod.Type)
    end

    return res or ""
end

function Utils.CombineArrays(arr1,arr2)
    local res = {}
    for _,v in ipairs(arr1) do
        table.insert(res, v) end
    for _,v in ipairs(arr2) do
        table.insert(res, v) end
    return res
end

Utils.EndocrineTalents =
{"aggressiveengineering","crisismanagement","cannedheat",
"doubleduty","firemanscarry","fieldmedic","multitasker",
"aceofalltrades","stillkicking","drunkensailor","trustedcaptain",
"downwiththeship","physicalconditioning","beatcop","commando",
"justascratch","intheflow","collegeathletics"}
function Utils.ApplyEndocrineBoost(character,talentlist)
    talentlist=talentlist or Utils.EndocrineTalents
        
    -- gee i sure do love translating c# into lua
    local targetCharacter = character
    if (targetCharacter.Info == nil) then return end
    local talentTree = TalentTree.JobTalentTrees[character.Info.Job.Prefab.Identifier.Value] if talentTree == nil then return end
    -- for the sake of technical simplicity, for now do not allow talents to be given if the character could unlock them in their talent tree as well
    local disallowedTalents = {}
    for subtree in talentTree.TalentSubTrees do for stage in subtree.TalentOptionStages do for talent in stage.Talents do
        table.insert(disallowedTalents,talent.Identifier.Value)
    end end end

    local characterTalents = {}
    for talent in targetCharacter.Info.UnlockedTalents do
        table.insert(characterTalents,talent.Value)
    end

    local viableTalents = {}
    for talent in talentlist do
        if not Utils.TableContains(disallowedTalents,talent) and not Utils.TableContains(characterTalents,talent) then
            table.insert(viableTalents,talent)
        end
    end
    
    if #viableTalents <= 0 then return end

    local talent = viableTalents[math.random(#viableTalents)]

    targetCharacter.GiveTalent(Identifier(talent), true);

end

function Utils.JobMemberCount(jobidentifier)
    local res = 0
    for _, character in pairs(Character.CharacterList) do
        if (character.IsHuman and not character.IsDead and character.Info.Job ~= nil) then
            if character.Info.Job.Prefab.Identifier.Value == jobidentifier then
                res = res + 1
            end
        end
    end
    return res
end
