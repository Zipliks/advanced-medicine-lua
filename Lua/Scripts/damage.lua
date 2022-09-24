local damage_handlers = {}

Hook.Add("character.applyDamage", "AM.ondamaged", function(characterHealth, attackResult, hitLimb)
    if not characterHealth.Character.IsHuman and not characterHealth.Character.IsDead then return end
    -- Все операции должны происходить только с людьми

    for _, aff in ipairs(attackResult.Afflictions) do
        local id = aff.Prefab.Identifier.Value
        local strength = aff.Strength
        local method = damage_handlers[id]

        --print(index..". "..id..": "..strength) -- Выводит все полученные аффликшены в консоль

        if method ~= nil then
            method(characterHealth.Character,strength,hitLimb.type,attackResult)
        end
    end
end)


--[[ 
Main.AddDamageHandler
"Добавляет обработчик урона"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
* Аргументы func: Character, Affliction, Strength, Limb, AttackResult 
]]
function Main.AddDamageHandler(id, func)
    if id == nil or func == nil then 
        Utils.ThrowError("Bad argument",1)
    end
    damage_handlers[id] = func
    print("INIT: Damage Handler for "..id.." initialized ")
end




--[[
Методы при уроне
* Ниже идут методы, выполняющиеся при определённом уроне
* На данный момент они тестовые
]]
-- Этот код исполняется при получении стана
Main.AddDamageHandler("stun", function(character, id, strength, limb, attackResult)
    print("Stun: "..strength)

    -- Добавить ещё 2 секунды стана при ударе по голове
    if limb == LimbType.Head then
        Utils.SetAffliction(character, "stun", 2, nil, true)
        print("Bonk!")
    end
end)

-- Этот код исполняется при получении тупых травм
Main.AddDamageHandler("blunttrauma", function(character, strength, limb, attackResult)
    print("blunttrauma: "..strength)
    head_bonk = Utils.GetAfflictionLimb(character, "blunttrauma", LimbType.Head)
    chance = head_bonk * 3 - 50
    --print("Chance: " .. chance)
    
    if(chance <= 0) then
        return
    end
    if limb == LimbType.Head and Utils.Probabilty(chance) then
        Utils.SetAfflictionTime(character, "stun", 3, LimbType.Head, true, 3)
    end
end)