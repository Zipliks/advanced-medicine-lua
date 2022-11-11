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

	if (not is_retracted) then
		return
	end
	Utils.SetAffliction(target, "incision", 0, limbtype, true)
end)
