local OnDamagedMethods = {}

Hook.Add("character.applyDamage", "AM.ondamaged", function (characterHealth, attackResult, hitLimb)

    for index, aff in ipairs(attackResult.Afflictions) do
        
        local id = aff.Prefab.Identifier.Value
        local strength = aff.Strength
        local method = OnDamagedMethods[id]

        --print(index..". "..id..": "..strength) -- Выводит все полученные аффликшены в консоль

        if method ~= nil then
            method(characterHealth.Character,id,strength,hitLimb.type)
        end
    end
end)


--[[
    Методы при уроне
    * Ниже идут методы, выполняющиеся при определённом уроне
    * На данный момент они тестовые
--]]

-- Этот код исполняется при получении стана
OnDamagedMethods["stun"] = function (character,id,strength,limb)
    print("Stun: "..strength)

    -- Добавить ещё 2 секунды стана при ударе по голове
    if limb == LimbType.Head then
        Utils.SetAffliction(character,"stun",2,nil,true)
        print("Bonk!")
    end
end

-- Этот код исполняется при получении тупых травм
OnDamagedMethods["blunttrauma"] = function (character,id,strength,limb)
    print("blunttrauma: "..strength)
end