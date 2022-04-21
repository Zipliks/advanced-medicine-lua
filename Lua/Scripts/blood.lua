---@diagnostic disable: lowercase-global, undefined-global
local BLOODTYPE = {"ominus","oplus","aminus","aplus","bminus","bplus","abminus","abplus"}
local setBlood = {}
hasBlood = FALSE

-- Insert all blood types in one table for RandomizeBlood()
for _, blood in pairs(BLOODTYPE) do
    table.insert(setBlood, AfflictionPrefab.Prefabs[blood])
end

-- Applies math.random() blood type. Still not based on probability
function RandomizeBlood(character)
    rand = math.random(1,8)
    character.CharacterHealth.ApplyAffliction(character.AnimController.MainLimb, setBlood[rand].Instantiate(100))
end

Hook.Add("characterCreated", "bloodGenerate", function(createdCharacter)
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            for _, affliction in pairs(BLOODTYPE) do
                local conditional = createdCharacter.CharacterHealth.GetAffliction(affliction)

                if(conditional ~= nil and conditional.Strength > 0) then
                    -- So if we found one -> break immediately and don't check any further 
                    hasBlood = TRUE
                    break
                end
            end

            -- If not -> ApplyAffliction. Random blood group.
            if(not hasBlood) then
                RandomizeBlood(createdCharacter)
            end
        end
    end, 1000)
end)


