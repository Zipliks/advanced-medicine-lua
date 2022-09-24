---@diagnostic disable: undefined-field, undefined-global

-- Функции для аффликшенов
local handlers_afflictions_body = {} -- Функции, привязанные к аффликшенам.
local handlers_afflictions_limb = {} -- Функции, привязанные к аффликшенам на отдельных конечностях.
local updaters_human = {} -- Функции, которые работают независимо от аффликшенов.

local checkable_afflictions = {} -- Айди аффликшенов, которые будут проверятся апдейтером (для конечностей)


--[[ Main.AddHumanUpdater
"Добавляет постоянный апдейтер человека"
* id = Айди аффликшена                  
* name = Имя апдейтера
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character    --]]
function Main.AddHumanUpdater(name, func)
    if name == nil or type(func) ~= "function" then
        Utils.ThrowError("Bad argument",1)
    end
    updaters_human[name] = func
    print("INIT: Initialized HumanUpdater with name \""..name.."\"")
end


--[[ Main.AddAfflictionHandler
"Добавит обработчик аффликшена: func будет исполнятся только при наличии аффликшена id"
* id - ID аффликшена
* name - Имя обработчика
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character, Strength    --]]
function Main.AddAfflictionHandler(id, name, func)
    if name == nil or id == nil or type(func) ~= "function" then
        Utils.ThrowError("Bad argument",1)
    end
    
    if handlers_afflictions_body[id] == nil then
        handlers_afflictions_body[id] = {}
    end

    handlers_afflictions_body[id][name] = func
    print("INIT: Initialized AfflictionHandler \""..name.."\" on affliction \""..id.."\"")
end


--[[ Main.AddAfflictionLimbHandler
"Добавит обработчик аффликшена на отдельных конечностях: func будет исполнятся только при наличии аффликшена id"
* id - ID аффликшена
* name - Имя обработчика
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character, Strength, LimbType
    P.S Strength - Сила аффликшена на конечности LimbType   --]]
function Main.AddAfflictionLimbHandler(id, name, func)
    if name == nil or id == nil or type(func) ~= "function" then
        Utils.ThrowError("Bad argument",1)
    end
    
    if handlers_afflictions_limb[id] == nil then
        handlers_afflictions_limb[id] = {}
    end

    handlers_afflictions_limb[id][name] = func
    table.insert(checkable_afflictions,id) -- Вставить проверяемый аффликшен в соответствующий массив
    print("INIT: Initialized AfflictionLimbHandler \""..name.."\" on affliction \""..id.."\"")
end




-- Вот эта херня работает 60 раз за тик \
-- Задаёт интервал для срабатывая update()
Hook.Add("think", "AM.updater", function()
    if(Utils.is_game_paused()) then
        return
    end

    UPDATE_COOLDOWN = UPDATE_COOLDOWN - 1
    if(UPDATE_COOLDOWN <= 0) then
        UPDATE_COOLDOWN = UPDATE_INTERVAL
        updater()
    end
end)


-- Обновляет все afflictions на персонаже
local function update_human(character)
    -- Постоянные обработчики
    for _, func in pairs(updaters_human) do
        func(character)
    end


    -- Обработчики, привязанные к аффликшенам по всему телу
    local all_list = character.CharacterHealth.GetAllAfflictions()
    local merged_list = {}
    for aff in all_list do
        local id = aff.Prefab.Identifier.Value
        if aff.Strength > 0 and handlers_afflictions_body[id] ~= nil then
            if merged_list[id] == nil then merged_list[id] = 0 end
            merged_list[id] = merged_list[id] + aff.Strength
            --print("* (A) "..id.." = "..merged_list[id])
        end
    end
    for id, strength in pairs(merged_list) do   
        for _, func in pairs(handlers_afflictions_body[id]) do
            func(character, strength)
        end
    end


    -- Обработчики, привязанные к конечностям
    for _, limb in pairs(HUMAN_LIMBS) do
        for _, aff in pairs(checkable_afflictions) do
            local strength = Utils.GetAfflictionLimb(character, aff, limb) 
            if strength ~= 0 then
                --print("* ("..limb..") "..aff.." = "..strength)
                for _, func in pairs(handlers_afflictions_limb[aff]) do
                    func(character, strength)
                end
            end
        end
    end
end

--lua print(Client.ClientList[1].Character.CharacterHealth.GetAllAfflictions())

-- * Срабатывает каждые 2 секунды
-- * Проверяет каждого human
-- * Задержка с разбросом в 0.5с. (500ms) чтобы сервер не умер
function updater()
    for _, character in pairs(Character.CharacterList) do
        if(character.IsHuman and not character.IsDead) then
            Timer.Wait(function()
                update_human(character)
            end, math.random() * 500)
        end
    end
end


-- ПРИМЕРЫ
-- Раскомментируйте если вам надо, они сильно жрут консоль своими выводами

--[[
-- Исполняется для каждого живого человека, независимо от аффликшенов
Main.AddHumanUpdater("example",function (character)
    print(character.Name.." is alive")
end) --]]


--[[
-- Исполняется при наличии тупых травм
Main.AddAfflictionHandler("blunttrauma","test",function (character,strength)
    print("blunt for "..character.Name.." is "..strength)
    --Utils.SetAffliction(character,"blunttrauma",2*DELTA_TIME,nil,true) -- Умер от синяка
end)  --]]


--[[
-- Исполняется для каждой конечности с тупыми травмами
Main.AddAfflictionLimbHandler("blunttrauma","test",function (character,strength,limb)
    --print("blunt for "..character.Name.." on "..tostring(limb).." is "..strength)
    print("test")
end)  --]]