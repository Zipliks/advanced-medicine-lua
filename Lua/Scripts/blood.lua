---@diagnostic disable: lowercase-global, undefined-global

-- Накладывает случайную группу крови в таблице 
local function randomize_blood(character)
    rand = math.random(1,#BLOODTYPE)
    Utils.SetAffliction(character,BLOODTYPE[rand],1)
end

-- Проверяет наличие крови и возвращает true если она есть
local function HasBlood(character)
    for _, affliction in pairs(BLOODTYPE) do
        local conditional = Utils.GetAffliction(character,affliction)

        if(conditional > 0) then
            return true -- Если у игрока есть кровь, сразу выходим из цикла
        end
    end
    return false
end

Hook.Add("characterCreated", "bloodGenerate", function(createdCharacter)
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            -- Если крови нет, генерируем
            if(not HasBlood(createdCharacter)) then
                randomize_blood(createdCharacter)
            end
        end
    end, 1000)
end)

function Main.FixBlood(character)
    if(not HasBlood(character)) then
        randomize_blood(character)
    end
end
