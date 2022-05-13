---@diagnostic disable: undefined-field, undefined-global

-- Функции для аффликшенов
local handlers_Afflictions_Body = {} -- Функции, привязанные к аффликшенам.
local handlers_Afflictions_Limb = {} -- Функции, привязанные к аффликшенам на отдельных конечностях.
local updaters_Human = {} -- Функции, которые работают независимо от аффликшенов.

local checkable_afflictions = {} -- Айди аффликшенов, которые будут проверятся апдейтером (для конечностей)




--[[ Main.AddHumanUpdater
"Добавляет постоянный апдейтер человека"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character    --]]
function Main.AddHumanUpdater(name,func)
    if name == nil or func == nil then return end
    updaters_Human[name] = func
    print("Human Updater "..name.." initialized ")
end


--[[ Main.AddAfflictionHandler
"Добавит обработчик аффликшена: func будет исполнятся только при наличии аффликшена id"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character, Strength    --]]
function Main.AddAfflictionHandler(id,func)
    if id == nil or func == nil then return end
    handlers_Afflictions_Body[id] = func
    print("Affliction Handler initialized on "..id)
end


--[[ Main.AddAfflictionLimbHandler
"Добавит обработчик аффликшена на отдельных конечностях: func будет исполнятся только при наличии аффликшена id"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
    * Аргументы func: Character, Strength, LimbType
    P.S Strength - Сила аффликшена на конечности LimbType   --]]
function Main.AddAfflictionLimbHandler(id,func)
    if id == nil or func == nil then return end
    handlers_Afflictions_Limb[id] = func
    table.insert(checkable_afflictions,id) -- Вставить проверяемый аффликшен в соответствующий массив
    print("Affliction Limb Handler initialized on "..id)
end




-- Вот эта херня работает 60 раз за тик \
-- Задаёт интервал для срабатывая update()
Hook.Add("think", "AM.updater", function()
    if(Utils.is_game_paused()) then
         return
    end

    UPDATE_COOLDOWN = UPDATE_COOLDOWN-1
    if(UPDATE_COOLDOWN <= 0) then
        UPDATE_COOLDOWN = UPDATE_INTERVAL
        updater()
    end
end)


-- Обновляет все afflictions на персонаже
local function update_human(character)
    -- Постоянные обработчики
    for name, update_func in pairs(updaters_Human) do
        update_func(character)
    end


    -- Обработчики, привязанные к аффликшенам по всему телу
    local all_list = character.CharacterHealth.GetAllAfflictions()
    local merged_list = {}
    for aff in all_list do
        local id = aff.Prefab.Identifier.Value
        if aff.Strength > 0 and handlers_Afflictions_Body[id] ~= nil then
            if merged_list[id] == nil then merged_list[id] = 0 end
            merged_list[id] = merged_list[id] + aff.Strength
            --print("* (A) "..id.." = "..merged_list[id])
        end
    end
    for id,strength in pairs(merged_list) do
        handlers_Afflictions_Body[id](character,strength)
    end


    -- Обработчики, привязанные к конечностям
    for i_l,limb in pairs(HUMAN_LIMBS) do
        for i_a,aff in pairs(checkable_afflictions) do
            local strength = Utils.GetAfflictionLimb(character,aff,limb) 
            if strength ~= 0 then
                handlers_Afflictions_Limb[aff](character,strength,limb) 
                --print("* ("..limb..") "..aff.." = "..strength)
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
Main.AddAfflictionHandler("blunttrauma",function (character,strength)
    print("blunt for "..character.Name.." is "..strength)
    --Utils.SetAffliction(character,"blunttrauma",2*DELTA_TIME,nil,true) -- Умер от синяка
end)  --]]


--[[
-- Исполняется для каждой конечности с тупыми травмами
Main.AddAfflictionLimbHandler("blunttrauma",function (character,strength,limb)
    print("blunt for "..character.Name.." on "..limb.." is "..strength)
end)  --]]