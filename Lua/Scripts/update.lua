---@diagnostic disable: undefined-field, undefined-global

aff_list = {}

-- Вот эта херня работает 60 раз за тик \
-- Задаёт интервал для срабатывая update()
Hook.Add("think", "updater", function()
    if(Utils.is_game_paused()) then
         return
    end

    UPDATE_COOLDOWN = UPDATE_COOLDOWN-1
    if(UPDATE_COOLDOWN <= 0) then
        UPDATE_COOLDOWN = UPDATE_INTERVAL
        updater()
    end
end)

function get_affliction()
    for affliction in AfflictionPrefab.Prefabs do
        table.insert(aff_list, affliction)
    end
end


-- Обновляет все afflictions на персонаже
local function update_human(character)
    get_affliction()

    --[[for key, affliction in ipairs(aff_list) do
        temp_affliction[key] = affliction
    end--]]
end

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