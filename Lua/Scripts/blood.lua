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

Hook.Add("characterCreated", "AM.Character_init", function(createdCharacter)
    Timer.Wait(function()
        if (createdCharacter.IsHuman and not createdCharacter.IsDead) then
            Main.InitAfflictions(createdCharacter)
        end
    end, 1000)
end)

-- Применяет на персонажа первоначальные аффликшены, которые у него отсутствуют
function Main.InitAfflictions(character)
    -- Blood Group
    Main.TryRandomizeBlood(character)

    -- Blood Pressure
    if (character.CharacterHealth.GetAffliction("bloodpressure") == nil) then
        Utils.SetAffliction(character,"bloodpressure",100)
    end

    -- Immunity
    if (character.CharacterHealth.GetAffliction("immunity") == nil) then
        Utils.SetAffliction(character,"immunity",100)
    end

    -- Brain Integrity
    if (character.CharacterHealth.GetAffliction("brain_integrity") == nil) then
        Utils.SetAffliction(character,"brain_integrity",100)
    end

    -- Nerve Integrity
    if (character.CharacterHealth.GetAffliction("nerveintegrity") == nil) then
        Utils.SetAffliction(character,"nerveintegrity",100)
    end
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