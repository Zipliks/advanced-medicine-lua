---@diagnostic disable: lowercase-global, undefined-global
require("Scripts._DEFINES")

local blood = {}

-- Пихаем всю кровь в таблицу, откуда потом достанем нужный тип
for _, type in pairs(BLOODTYPE) do
    table.insert(blood, AfflictionPrefab.Prefabs[type])
end

-- Накладывает случайную группу крови через таблицу (1,8) 
local function randomize_blood(character)
    rand = math.random(1,8)
    character.CharacterHealth.ApplyAffliction(character.AnimController.MainLimb, blood[rand].Instantiate(100))
end

Hook.Add("characterCreated", "bloodGenerate", function(createdCharacter)
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            local has_blood = false

            for _, affliction in pairs(BLOODTYPE) do
                local conditional = createdCharacter.CharacterHealth.GetAffliction(affliction)

                if(conditional and conditional.Strength > 0) then
                    has_blood = true -- Если у игрока есть кровь, сразу выходим из цикла
                    break
                end
            end

            -- Если крови нет, генерируем
            if(not has_blood) then
                randomize_blood(createdCharacter)
            end
        end
    end, 1000)
end)


