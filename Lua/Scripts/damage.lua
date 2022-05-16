local damage_Handlers = {}



--[[ Main.AddDamageHandler
"Добавляет обработчик урона"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character, Affliction, Strength, Limb, AttackResult    --]]
    function Main.AddDamageHandler(id,func)
        if id == nil or func == nil then 
            Utils.ThrowError("Bad argument",1)
        end
        damage_Handlers[id] = func
        print("INIT: Damage Handler for "..id.." initialized ")
    end



Hook.Add("character.applyDamage", "AM.ondamaged", function (characterHealth, attackResult, hitLimb)

    for index, aff in ipairs(attackResult.Afflictions) do
        
        local id = aff.Prefab.Identifier.Value
        local strength = aff.Strength
        local method = damage_Handlers[id]

        --print(index..". "..id..": "..strength) -- Выводит все полученные аффликшены в консоль

        if method ~= nil then
            method(characterHealth.Character,id,strength,hitLimb.type,attackResult)
        end
    end
end)


--[[
    Методы при уроне
    * Ниже идут методы, выполняющиеся при определённом уроне
    * На данный момент они тестовые
--]]

-- Этот код исполняется при получении стана
Main.AddDamageHandler("stun",function (character,id,strength,limb,attackResult)
    print("Stun: "..strength)

    -- Добавить ещё 2 секунды стана при ударе по голове
    if limb == LimbType.Head then
        Utils.SetAffliction(character,"stun",2,nil,true)
        print("Bonk!")
    end
end)

-- Этот код исполняется при получении тупых травм
Main.AddDamageHandler("blunttrauma",function (character,id,strength,limb,attackResult)
    print("blunttrauma: "..strength)
end)