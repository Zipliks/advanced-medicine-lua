---@diagnostic disable: undefined-field, undefined-global

local function is_game_paused()
    if(SERVER) then
        return FALSE
    end

    return Game.Paused
end

-- * Срабатывает каждые 2 секунды
-- * Проверяет каждого human
-- * Задержка с разбросом в 0.5с. (500ms) чтобы сервер не умер
local function update()
    for _, character in pairs(Character.CharacterList) do
        if(character.IsHuman and not character.IsDead) then
            Timer.Wait(function()
                update_human(character)
            end, math.random() * 500)
        end
    end
end

-- Вот эта херня работает 60 раз за тик \
-- Задаёт интервал для срабатывая update()
Hook.Add("think", "update", function()
    if(is_game_paused()) then
        return
    end

    UPDATE_COOLDOWN = UPDATE_COOLDOWN-1
    if(UPDATE_COOLDOWN <= 0) then
        UPDATE_COOLDOWN = UPDATE_INTERVAL
        update()
    end
end)



