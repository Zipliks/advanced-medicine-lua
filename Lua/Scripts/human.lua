-- Накладывает случайную группу крови в таблице
local function give_random_blood(character)
    rand = math.random(1, #BLOODTYPE)
    Utils.SetAffliction(character, BLOODTYPE[rand], 1)
end

-- Проверяет наличие крови и возвращает true если она есть
local function has_blood_group(character)
    for _, affliction in pairs(BLOODTYPE) do
        local conditional = Utils.GetAffliction(character, affliction)

        if (conditional > 0) then
            return true -- Если у игрока есть кровь, сразу выходим из цикла
        end
    end
    return false
end

-- Возвращает недостающие аффликшены, которые обязательны
function Main.FixRequiredAfflictions(character)
    -- Выдача крови
    if (not has_blood_group(character)) then
        give_random_blood(character)
    end

    -- Выдача иммунитета
    if (Utils.GetAffliction(character, "immunity") == 0) then
        Utils.SetAffliction(character, "immunity", 600)
    end

    -- Выдача давления
    if (Utils.GetAffliction(character, "bloodpressure") == 0) then
        Utils.SetAffliction(character, "bloodpressure", 100)
    end

    -- Выдача кислорода
    if (Utils.GetAffliction(character, "oxygen_saturation") == 0) then
        Utils.SetAffliction(character, "oxygen_saturation", 100)
    end

    -- Set heart rate
    if (not Utils.GetAffliction(character, "heartrate")) then
        Utils.SetAffliction(character, "heartrate", 70)
    end
end

Hook.Add("characterCreated", "AM.init_char", function(createdCharacter)
    Timer.Wait(function()
        if (createdCharacter.IsHuman and not createdCharacter.IsDead) then
            Main.FixRequiredAfflictions(createdCharacter)
        end
    end, 1000)
end)
