---@diagnostic disable: undefined-field, undefined-global
UPDATE_COOLDOWN = 0
UPDATE_INTERVAL = 120
DELTA_TIME = UPDATE_INTERVAL/60 -- Time in seconds that transpires between updates

local function is_game_paused()
    if(SERVER) then
        return FALSE
    end

    return Game.Paused
end

aff_list = {}
local function update_human(character)
    for affliction in AfflictionPrefab.Prefabs do
        table.insert(aff_list, affliction)
    end
end

-- gets run once every two seconds
local function update()
    -- for every human
    for _, character in pairs(Character.CharacterList) do
        if(character.IsHuman and not character.IsDead) then
            -- we spread the characters out over a timespan of half a second so the load isnt done all at once
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



