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