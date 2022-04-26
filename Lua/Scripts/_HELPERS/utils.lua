Utils = {}

function Utils.is_game_paused()
    if SERVER then
        return false
    end
    
    return Game.Paused
end
