Main.Tags = {}
local body_checkers = {}
local body_tags = {}

local limb_checkers = {}
local limb_tags = {}

-- Возвращает список тегов без дубликатов и несуществующих тегов
function Main.Tags.CleanUpTagsBody(tags)
    local clear_tags = {}
    for i, tag in ipairs(body_tags) do
        if Utils.Contains(tags,tag) then
            table.insert(clear_tags,tag)
        end
    end
    print("{"..table.concat(clear_tags,",").."}")
    return clear_tags
end

-- Делает тоже самое, но уже с тегами для конечностей
function Main.Tags.CleanUpTagsLimb(tags)
    local clear_tags = {}
    for i, tag in ipairs(limb_tags) do
        if Utils.Contains(tags,tag) then
            table.insert(clear_tags,tag)
        end
    end
    print("{"..table.concat(clear_tags,",").."}")
    return clear_tags
end



function Main.Tags.CheckTagsBody(character,tags)
    if (tags == nil) or (#tags == 0) then return false end
    for k, tag in ipairs(tags) do
        local checker = body_checkers[tag]
        local prevent = false

        if checker ~= nil then
            prevent = checker(character)
        end
        if prevent then return true end
    end
    return false
end

function Main.Tags.CheckTagsLimb(character,limb,tags)
    if (tags == nil) or (#tags == 0) then return false end
    for k, tag in pairs(tags) do
        local checker = limb_checkers[tag]
        local prevent = false

        if checker ~= nil then
            prevent = checker(character,limb)
        end
        if prevent == true then return true end
    end
    return false
end



function Main.Tags.AddNewTagBody(name,checker)
    -- Проверка аргументов
    if name == nil or type(checker) ~= "function" then
        Utils.ThrowError("Bad argument",1)
    end
    -- Если тэга в списке тэгов нету, то добавить его (Условие для того-чтобы избежать дубликатов при замене логики)
    if Utils.Contains(body_tags,name) == false then
        table.insert(body_tags,name)
    end
    body_checkers[name] = checker

    Utils.Print("INIT: Initialized TagBody with name \""..name.."\"")
end

function Main.Tags.AddNewTagLimb(name,checker)
    if name == nil or type(checker) ~= "function" then
        Utils.ThrowError("Bad argument",1)
    end
    -- Если тэга в списке тэгов нету, то добавить его
    if Utils.Contains(limb_tags,name) == false then
        table.insert(limb_tags,name)
    end
    limb_checkers[name] = checker

    Utils.Print("INIT: Initialized TagLimb with name \""..name.."\"")
end


--- BODY CHECKERS ---
Main.Tags.AddNewTagBody("can_stasis",function ()
    return false -- Если апдейтер/хендлер не должен работать - надо возвращать true
end)

Main.Tags.AddNewTagBody("mechanical",function ()
    return false
end)



--- LIMB CHECKERS --- 
Main.Tags.AddNewTagLimb("can_stasis",function ()
    return false
end)

Main.Tags.AddNewTagLimb("disable_with_amputation",function ()
    return false
end)

Main.Tags.AddNewTagLimb("mechanical",function ()
    return false
end)