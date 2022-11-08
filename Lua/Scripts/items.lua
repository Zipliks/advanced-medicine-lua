local item_functions = {}

--[[ Main.SetItemFunction
"Назначает функцию предмету, исполняемую при его применении в Health Menu"
* id = Айди предмета
* func - Функция, привязанная к аффликшену
    * Аргументы func: Item, UserChar, TargetChar, Limb--]]
function Main.SetItemFunction(id,func)
    if id == nil or func == nil then
        Utils.ThrowError("Bad argument",1)
    end
    item_functions[id] = func
    print("INIT: Initialized ItemFunction for item \""..id.."\"")
end

Hook.Add("item.applyTreatment", "AM.itemused", function(item, usingCharacter, targetCharacter, limb)

    local id = item.Prefab.Identifier.Value
    local func = item_functions[id]

    print("Item Used: "..id)

    if(func~=nil) then
        print("func")
        func(item, usingCharacter, targetCharacter, limb)
        return
    end
end)


-- Пример использования на бинте
-- NOTE: Из-за особенностей барки, у предмета в xml должно быть прописана возможность применения в Health Menu
-- NOTE: Также функция не триггерится при использовании вне Health Menu.
-- TODO: Сделать чтобы они триггерились и вне меню (Или смирится с этим, лол)
-- Zipliks: Пока забить и смириться
Main.SetItemFunction("antibleeding1", function(item, usingCharacter, targetCharacter, limb)
    print("User: " .. usingCharacter.Name .. " Target: " .. targetCharacter.Name)
end)


Main.SetItemFunction("defib", function(item, usingCharacter, targetCharacter, limb) 
    print("User: " .. usingCharacter.Name .. " Target: " .. targetCharacter.Name)

    if item.Condition <= 0 then return end

    if limb ~= LimbType.Torso then return end

    local containedItem = item.OwnInventory.GetItemAt(0)
    if containedItem==nil then return end
    local hasVoltage = containedItem.Condition > 0

    if hasVoltage then 
        local actionRequired =
        Utils.GetAffliction(targetCharacter,"ventricular_tachy") > 0
            or Utils.GetAffliction(targetCharacter,"ventricular_fib") > 0
            or Utils.GetAffliction(targetCharacter,"heartattack") > 0 


        if not actionRequired then
            -- HF.GiveItem(targetCharacter,"ntsfx_defib2")            -- TODO: Add SFX 
        else
            -- HF.GiveItem(targetCharacter,"ntsfx_defib1")            -- TODO: Add SFX 

            containedItem.Condition = containedItem.Condition-10
            if containedItem.Prefab.Identifier.Value ~= "fulguriumbatterycell" then containedItem.Condition = containedItem.Condition-10 end
    
            local arrestSuccessChance = Utils.GetSkillLevel(usingCharacter,"medical")

            if Utils.Probabilty(arrestSuccessChance) then
                Timer.Wait(function()
                    Utils.SetAffliction(targetCharacter, "stun", 2, LimbType.Torso, true, usingCharacter)
                    
                    Utils.SetAffliction(targetCharacter, "ventricular_tachy",   0, LimbType.Torso, false, usingCharacter)
                    Utils.SetAffliction(targetCharacter, "ventricular_fib",     0, LimbType.Torso, false, usingCharacter)
                    Utils.SetAffliction(targetCharacter, "heartattack",         0, LimbType.Torso, false, usingCharacter)
                end, 3200)
            end
        end
    end
end)

Main.SetItemFunction("ambubag", function(item, usingCharacter, targetCharacter, limb) 
    print("User: " .. usingCharacter.Name .. " Target: " .. targetCharacter.Name)
    if item.Condition <= 0 then return end

    if limb ~= LimbType.Head then return end

    local containedItem = item.OwnInventory.GetItemAt(0)
    if containedItem==nil then return end
    local hasOxygen = containedItem.Condition > 0

    if hasOxygen then 
        containedItem.Condition = containedItem.Condition-5
        Utils.SetAffliction(targetCharacter, "lifesupport",   50, LimbType.Torso, false, usingCharacter)
    end
end)


--- TODO: НЕ БУДЕТ РАБОТАТЬ НОРМАЛЬНО, ПОТОМУ ЧТО НЕ ПОДДЕРЖИВАЕТСЯ НОРМАЛЬНАЯ РАБОТА ЛЕКАРСТВ ПРИ ИХ НАНЕСЕНИИ НЕ ЧЕРЕЗ ХИЛ МЕНЮ
Main.SetItemFunction("antibiotics", function(item, usingCharacter, targetCharacter, limb) 
    print("User: " .. usingCharacter.Name .. " Target: " .. targetCharacter.Name)

    local SuccessChance = Utils.GetSkillLevel(usingCharacter,"medical")

    if Utils.Probabilty(SuccessChance) then
        if Utils.GetAffliction(targetCharacter, "huskinfection") < 100 then
            Utils.SetAfflictionTime(targetCharacter, "huskinfection", -0.5, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "sepsis", -4, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "infectedwound", -20, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAffliction(targetCharacter, "huskinfectionresistance", 600, LimbType.Torso, false, usingCharacter)
            
        end
        Utils.SetAfflictionTime(targetCharacter, "organdamage", 0.55, LimbType.Torso, true, 60, usingCharacter)
    else
        if Utils.GetAffliction(targetCharacter, "huskinfection") < 100 then
            Utils.SetAfflictionTime(targetCharacter, "huskinfection", -0.25, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "sepsis", -2, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "infectedwound", -10, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAffliction(targetCharacter, "huskinfectionresistance", 300, LimbType.Torso, false, usingCharacter)
            
        end
        Utils.SetAfflictionTime(targetCharacter, "organdamage", 1, LimbType.Torso, true, 60, usingCharacter)
    end
end)

Main.SetItemFunction("adrenaline", function(item, usingCharacter, targetCharacter, limb) 
    print("User: " .. usingCharacter.Name .. " Target: " .. targetCharacter.Name)

    local SuccessChance = Utils.GetSkillLevel(usingCharacter,"medical")

    if Utils.Probabilty(SuccessChance) then
        if Utils.GetAffliction(targetCharacter, "huskinfection") < 100 then
            Utils.SetAfflictionTime(targetCharacter, "huskinfection", -0.5, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "sepsis", -4, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "infectedwound", -20, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAffliction(targetCharacter, "huskinfectionresistance", 600, LimbType.Torso, false, usingCharacter)
            
        end
        Utils.SetAfflictionTime(targetCharacter, "organdamage", 0.55, LimbType.Torso, true, 60, usingCharacter)
    else
        if Utils.GetAffliction(targetCharacter, "huskinfection") < 100 then
            Utils.SetAfflictionTime(targetCharacter, "huskinfection", -0.25, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "sepsis", -2, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAfflictionTime(targetCharacter, "infectedwound", -10, LimbType.Torso, true, 60, usingCharacter)
            Utils.SetAffliction(targetCharacter, "huskinfectionresistance", 300, LimbType.Torso, false, usingCharacter)
            
        end
        Utils.SetAfflictionTime(targetCharacter, "organdamage", 1, LimbType.Torso, true, 60, usingCharacter)
    end
end)