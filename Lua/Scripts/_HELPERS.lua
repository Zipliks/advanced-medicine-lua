aff_list = {}

function get_affliction()
    for affliction in AfflictionPrefab.Prefabs do
        table.insert(aff_list, affliction)
    end
end

function is_game_paused()
    if(SERVER) then
        return FALSE
    end

    return Game.Paused
end
