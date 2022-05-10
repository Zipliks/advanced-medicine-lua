-- Накладывает случайную группу крови в таблице 
local function GiveRandomBlood(character)
    rand = math.random(1,#BLOODTYPE)
    Utils.SetAffliction(character,BLOODTYPE[rand],1)
end

-- Проверяет наличие крови и возвращает true если она есть
local function HasBloodGroup(character)
    for _, affliction in pairs(BLOODTYPE) do
        local conditional = Utils.GetAffliction(character,affliction)

        if(conditional > 0) then
            return true -- Если у игрока есть кровь, сразу выходим из цикла
        end
    end
    return false
end

-- Возвращает недостающие аффликшены, которые обязательны
function Main.FixRequiredAfflictions(character)
    -- Выдача крови
    if(not HasBloodGroup(character)) then
        GiveRandomBlood(character)
    end

    -- Выдача иммунитета
    if(Utils.GetAffliction(character,"immunity") == 0) then
        Utils.SetAffliction(character,"immunity",600)
    end
end

Hook.Add("characterCreated", "AM.init_char", function(createdCharacter)
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            Main.FixRequiredAfflictions(createdCharacter)
        end
    end, 1000)
end)
