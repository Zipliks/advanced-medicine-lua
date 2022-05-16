Utils = {}

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
* aggressor: Кто применил этот аффликшен (Barotrauma.Character) --]]
function Utils.SetAffliction(character,affliction,strength,limb,add,aggressor)
    local prefab = AfflictionPrefab.Prefabs[affliction]
    
    limb = limb or LimbType.Torso
    add = add or false

    local strength = strength*character.CharacterHealth.MaxVitality/100
    local affliction = prefab.Instantiate(strength,aggressor)

    character.CharacterHealth.ApplyAffliction(character.AnimController.GetLimb(limb),affliction,add)
end

--[[ Utils.GetAffliction
* character: У кого проверять (Barotrauma.Character)
* affliction: Айди аффликшена на проверку (String) --]]
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

function Utils.ThrowError(text,level)
    if level == nil then level = 0 end
    error("AMlua Custom Error: "..text,2+level)
end
