local item_functions = {}

--[[ Main.SetItemFunction
"Назначает функцию предмету, исполняемую при его применении в Health Menu"
* id = Айди предмета
* func - Функция, привязанная к аффликшену
    * Аргументы func: Item, UserChar, TargetChar, Limb--]]
function Main.SetItemFunction(id,func)
	print("Test")
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

Main.SetItemFunction("healthscanner", function(item, usingCharacter, targetCharacter, limb)
    local limbtype = Utils.NormalizeLimbType(limb.type)
    local contained_item = item.OwnInventory.GetItemAt(0)
    local has_voltage = contained_item.Condition > 0

	contained_item.Condition = contained_item.Condition - 5
	
	if(contained_item == nil) then 
		return
	end

    if(not has_voltage) then
		return
	end

	-- print readout of afflictions
	local readoutstring = "Health status report for "..targetCharacter.Name.." on "..Utils.LimbTypeToString(limbtype)..":\n"
	local afflictionlist = targetCharacter.CharacterHealth.GetAllAfflictions()
	local afflictionsdisplayed = 0

	for value in afflictionlist do
		local strength = math.floor(value.Strength)
		local prefab = value.Prefab
		local limb = targetCharacter.CharacterHealth.GetAfflictionLimb(value)
		local afflimbtype = LimbType.Torso
		
		if(not prefab.LimbSpecific) then
			afflimbtype = prefab.IndicatorLimb
		elseif(limb~=nil) then
			afflimbtype=limb.type
		end
		
		afflimbtype = Utils.NormalizeLimbType(afflimbtype)

		if(strength >= prefab.ShowInHealthScannerThreshold and afflimbtype==limbtype) then
			-- add the affliction to the readout
			readoutstring = readoutstring.."\n"..value.Prefab.Name.Value..": "..strength.."%"
			afflictionsdisplayed = afflictionsdisplayed + 1
		end
	end

	-- add a message in case there is nothing to display
	if afflictionsdisplayed <= 0 then
		readoutstring = readoutstring.."\nNo deviations were detected." 
	end

	Timer.Wait(function()
		Utils.DMClient(Utils.CharacterToClient(usingCharacter), readoutstring, Color(127,255,255,255))
	end, 2000)
end)

-- Пример использования на бинте
-- NOTE: Из-за особенностей барки, у предмета в xml должно быть прописана возможность применения в Health Menu
-- NOTE: Также функция не триггерится при использовании вне Health Menu.
-- TODO: Сделать чтобы они триггерились и вне меню (Или смирится с этим, лол)
-- Zipliks: Пока забить и смириться
Main.SetItemFunction("antibleeding1", function(item, usingCharacter, targetCharacter, limb)
		Utils.SetAffliction(targetCharacter, "bleeding", -15, limb, true)
		Utils.SetAffliction(targetCharacter, "bandaged", 20, limb, true)
end)

