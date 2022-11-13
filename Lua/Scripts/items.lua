local item_functions = {}

--[[ Main.SetItemFunction
"Назначает функцию предмету, исполняемую при его применении в Health Menu"
* id = Айди предмета
* func - Функция, привязанная к аффликшену
* Аргументы func: item, source, target, дimb
	* item: относительно чего работает
	* source: кто использовал
	* target: на кого использовал
	* limb: на какую конечность ]]
function Main.SetItemFunction(id, func)
	print("Test")
	if id == nil or func == nil then
		Utils.ThrowError("Bad argument", 1)
	end
	item_functions[id] = func
	print("INIT: Initialized ItemFunction for item \"" .. id .. "\"")
end

Hook.Add("item.applyTreatment", "AM.itemused", function(item, source, target, limb)

	local id = item.Prefab.Identifier.Value
	local func = item_functions[id]

	print("Item Used: " .. id)
	print(limb)

	if (func ~= nil) then
		print("func")
		func(item, source, target, limb)
		return
	end
end)

Main.SetItemFunction("healthscanner", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	local contained_item = item.OwnInventory.GetItemAt(0)
	local has_voltage = contained_item.Condition > 0

	contained_item.Condition = contained_item.Condition - 5

	if (contained_item == nil) then
		return
	end
	if (not has_voltage) then
		return
	end

	-- print readout of afflictions
	local readoutstring = "Health status report for " .. target.Name .. " on " .. Utils.LimbTypeToString(limbtype) .. ":\n"
	local afflictionlist = target.CharacterHealth.GetAllAfflictions()
	local afflictionsdisplayed = 0
	for value in afflictionlist do
		local strength = math.floor(value.Strength)
		local prefab = value.Prefab
		local limb = target.CharacterHealth.GetAfflictionLimb(value)
		local afflimbtype = LimbType.Torso

		if (not prefab.LimbSpecific) then
			afflimbtype = prefab.IndicatorLimb
		elseif (limb ~= nil) then
			afflimbtype = limb.type
		end

		afflimbtype = Utils.NormalizeLimbType(afflimbtype)
		if (strength >= prefab.ShowInHealthScannerThreshold and afflimbtype == limbtype) then
			-- add the affliction to the readout
			readoutstring = readoutstring .. "\n" .. value.Prefab.Name.Value .. ": " .. strength .. "%"
			afflictionsdisplayed = afflictionsdisplayed + 1
		end
	end
	-- add a message in case there is nothing to display
	if afflictionsdisplayed <= 0 then
		readoutstring = readoutstring .. "\nNo deviations were detected."
	end

	Timer.Wait(function()
		Utils.DMClient(Utils.CharacterToClient(source), readoutstring, Color(127, 255, 255, 255))
	end, 2000)
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
Main.SetItemFunction("antibleeding1", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	Utils.SetAffliction(target, "bleeding", -15, limbtype, true)
	Utils.SetAffliction(target, "bandaged", 20, limbtype, true)

	Utils.RemoveItem(item)
end)

Main.SetItemFunction("scalpel", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	Utils.SetAffliction(target, "incision", 1, limbtype, false)
end)

Main.SetItemFunction("hemostat", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	local has_incision = Utils.GetAfflictionLimb(target, "incision", limbtype)
	if (not has_incision) then
		return
	end

	Utils.SetAffliction(target, "incision", 0, limbtype, false)
	Utils.SetAffliction(target, "ligature", 1, limbtype, false)
end)

Main.SetItemFunction("retractor", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	local has_ligature = Utils.GetAfflictionLimb(target, "ligature", limbtype)
	if (not has_ligature) then
		return
	end
	Utils.SetAffliction(target, "ligature", 0, limbtype, false)
	Utils.SetAffliction(target, "retraction", 1, limbtype, false)
end)

Main.SetItemFunction("tweezers", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	local is_retracted = Utils.GetAfflictionLimb(target, "retraction", limbtype)

	if (not is_retracted) then
		return
	end
	Utils.SetAffliction(target, "foreignbody", -1, limbtype, true)
end)

Main.SetItemFunction("suture", function(item, source, target, limb)
	local limbtype = Utils.NormalizeLimbType(limb.type)
	local is_retracted = Utils.GetAfflictionLimb(target, "retraction", limbtype)

	if (has_incision) then
		Utils.SetAffliction(target, "incision", -1, true)
	elseif (has_ligature) then
		Utils.SetAffliction(target, "ligature", -1, true)
	elseif (is_retracted) then
		Utils.SetAffliction(target, "retraction", -1, true)
	else
		return
	end

	Utils.RemoveItem(item)
	Utils.SetAfflictionTime(target, "stitches", 100, limbtype, false, 300)
end)
