---@diagnostic disable: lowercase-global, undefined-global
Main.BLOODTYPE = { -- blood types and chance in percent
    {"ominus",7},
    {"oplus",37},
    {"aminus",6},
    {"aplus",36},
    {"bminus",2},
    {"bplus",8},
    {"abminus",1},
    {"abplus",3}}
Main.setBlood = {}
Main.foundAny = false

-- Insert all blood types in one table for RandomizeBlood()
for index, value in ipairs(Main.BLOODTYPE) do
    -- print(index," : ",value[1],", ",value[2],"%")
    table.insert(Main.setBlood,index, {value[2],value[1]})
end

-- Applies math.random() blood type.
-- returns the applied bloodtype as an affliction identifier
function Main.RandomizeBlood(character)
    rand = math.random(0,99)
    local i = 0
    for index, value in ipairs(Main.setBlood) do
        i = i + value[1]
        if (i > rand) then
            Utils.SetAffliction(character, value[2], 100)
            return value[2]
        end
    end
end

Hook.Add("characterCreated", "AM.BloodAndImmunity", function(createdCharacter)
    Timer.Wait(function()
        if (createdCharacter.IsHuman and not createdCharacter.IsDead) then
            
            Main.TryRandomizeBlood(createdCharacter)

            -- add immunity
            local conditional2 = createdCharacter.CharacterHealth.GetAffliction("immunity")
            if (conditional2 == nil) then
                Utils.SetAffliction(createdCharacter,"immunity",100)
            end
        end
    end, 1000)
end)

-- applies a new bloodtype only if the character doesnt already have one
function Main.TryRandomizeBlood(character)
    Main.GetBloodtype(character)
end

-- returns the bloodtype of the character as an affliction identifier string
-- generates blood type if none present
function Main.GetBloodtype(character)
    for index, affliction in ipairs(Main.BLOODTYPE) do
        local conditional = character.CharacterHealth.GetAffliction(affliction[1])

        if (conditional ~= nil and conditional.Strength > 0) then
            return affliction[1]
        end
    end

    return Main.RandomizeBlood(character)
end