---@diagnostic disable: undefined-field, undefined-global

local function is_game_paused()
    if(SERVER) then
        return FALSE
    end

    return Game.Paused
end

local function update_human(character)
    for affliction in AfflictionPrefab.Prefabs do
        table.insert(aff_list, affliction)
    end
end

-- Срабатывает каждые две секунды
local function update()
    -- Для каждого человека
    for _, character in pairs(Character.CharacterList) do
        if(character.IsHuman and not character.IsDead) then
            -- Задаём разброс обновлений в полсекунды, чтобы не обновлять всех хуманов разом
            Timer.Wait(function()
                update_human(character)
            end, math.random()*500)
        end
    end
end


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



