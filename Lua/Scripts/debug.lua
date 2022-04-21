-- Debug commands
local burnPrefab = AfflictionPrefab.Prefabs["ominus"]
local gunshotwound = AfflictionPrefab.Prefabs["gunshotwound"]
local asys = AfflictionPrefab.Prefabs["asys"]


Hook.Add('chatMessage', 'suicideMod', function(msg, client)
    if msg == '--die' and client.Character ~= nil then
        for key, character in pairs(Character.CharacterList) do
            print(key, character)
            character.CharacterHealth.ApplyAffliction(character.AnimController.MainLimb, burnPrefab.Instantiate(100))
        end
    end
end)

function check(char)
    if (char.CharacterHealth.GetAffliction("ominus")) then
        print(char.CharacterHealth.GetAffliction("ominus").Strength)  
    print(char.CharacterHealth.GetAffliction("ominus").Strength)
    end
end

Hook.Add('chatMessage', 'bloodCheck', function(msg, client)
    if(msg == '--bloody' and client.Character ~= nil) then
        for _, character in pairs(Character.CharacterList) do
            if (character.IsPlayer) then
                check(character)
            end
        end
    end
end)

Hook.Add('chatMessage', 'getAffliction', function(msg, client)
    if(msg == 'getAffs') then
        for affliction in AfflictionPrefab.Prefabs do
            print(affliction)
        end 
    end
end)

Hook.Add('chatMessage', 'applyAffliction', function(msg, client)
    if(msg == 'applyasys') then
        for _, character in pairs(Character.CharacterList) do
            if (character.CharacterHealth.GetAffliction("gunshotwound")) then
                character.CharacterHealth.ApplyAffliction(character.AnimController.Limbs.Torso, asys.Instantiate(5))
            end
        end
    end
end)

