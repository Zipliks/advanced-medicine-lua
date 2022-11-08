---@diagnostic disable: undefined-field, undefined-global
Utils = {}

math.randomseed(os.time())

function Utils.is_game_paused()
    if SERVER then
        return false
    end
    
    return Game.Paused
end

--[[ Utils.SetAffliction
* character: Кто получит аффликшен (Barotrauma.Character)
* affliction: Айди (String)
* strength: Сколько должно быть аффликшена
* limb: Конечность для применения. (Barotrauma.LimbType)
* add: Если true, то аффликшен будет добавлятся, а не переназначаться
* source: кто применил этот аффликшен (Barotrauma.Character) ]]--
function Utils.SetAffliction(character, affliction, strength, limb, add, source)
    local prefab = AfflictionPrefab.Prefabs[affliction]
    
    limb = limb or LimbType.Torso
    add = add or false

    local strength = strength * character.CharacterHealth.MaxVitality / 100
    local affliction = prefab.Instantiate(strength, source)

    character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limb),affliction,add)
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
    
    limb = limb or LimbType.Torso
    add = add or false
    delay = seconds * 1000

    local strength = strength*character.CharacterHealth.MaxVitality/100
    local affliction = prefab.Instantiate(strength, source)

    character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limb),affliction,add)
    
    Timer.Wait(function()
        local affliction = prefab.Instantiate(-strength, source)
        character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limb),affliction,add)
    end, delay)
end

--[[
Utils.GetAffliction
* character: У кого проверять (Barotrauma.Character)
* affliction: Айди аффликшена на проверку (String) 
]]
function Utils.GetAffliction(character,affliction)
    local aff = character.CharacterHealth.GetAffliction(affliction)
    if aff == nil then
        return 0
    end
    return aff.Strength
end


--[[ Utils.GetAfflictionLimb
* character: У кого проверять (Barotrauma.Character)
* affliction: Айди аффликшена на проверку (String)
* limb: Конечность для проверки. (Barotrauma.LimbType) --]]
function Utils.GetAfflictionLimb(character,affliction,limb)
    local aff = character.CharacterHealth.GetAffliction(affliction,character.AnimController.GetLimb(limb))
    if aff == nil then
        return 0
    end
    return aff.Strength
end

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

function Utils.GetSkillLevel(character,skilltype)
    return character.GetSkillLevel(Identifier(skilltype))
end

function Utils.ThrowError(text,level)
    if level == nil then level = 0 end
    error("AMlua Custom Error: "..text,2+level)
end

--[[
Возвращает true/false с псевдошансом
]]
function Utils.Probabilty(chance)
    local random = math.random() * 100

    if random <= chance then
        return true
    end
    return false
end
