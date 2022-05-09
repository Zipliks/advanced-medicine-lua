-- Debug commands
local asys = AfflictionPrefab.Prefabs["asys"]


Hook.Add('chatMessage', 'chat_console', function(msg, client)
    -- Если клиент не управляет персонажем - игнорить
    if client.Character == nil then return false end

    local char = client.Character

    -- Suicide command, obviously
    if msg == '--die' then
        for key, character in pairs(Character.CharacterList) do
            print(key, character)
        end
        Utils.SetAffliction(char,"burn",200,LimbType.Torso,false)
    end

    -- Возвращает недостающие аффликшены, которые обязательны
    if(msg == '--fix') then
        if Utils.GetAffliction(char,"immunity") == 0 then
            Utils.SetAffliction(char,"immunity",600)
        end
        Main.FixBlood(char)
    end

    if(msg == '--bloody') then
        for _, character in pairs(Character.CharacterList) do
            if (character.IsPlayer) then
                check(character)
            end
        end
    end

    if(msg == '--aff_set') then
        Utils.SetAffliction(char,"burn",5,LimbType.Torso,false)
        print("ouch!")
    end

    if(msg == '--aff_get') then
        print("ouch is "..Utils.GetAffliction(char,"burn"))
    end

    if(msg == '--aff_getl') then
        print("ouch is "..Utils.GetAfflictionLimb(char,"burn",LimbType.Head))
    end

    -- Выводит все аффликшены из всех модов. Использовать на чистом AMlua
    if(msg == '--getaffs') then
        for affliction in AfflictionPrefab.Prefabs do
            print(affliction)
        end 
    end

    -- Накладывает асистолию на всех существ с огнестрельной раной
    if(msg == '--applyasys') then
        for _, character in pairs(Character.CharacterList) do
            if (Utils.GetAffliction(character,"gunshotwound")) then
                Utils.SetAffliction(character,"asys",5,LimbType.Torso,true)
            end
        end
    end
end)

function check(character)
    if (Utils.GetAffliction(character,"ominus")) then
        print(Utils.GetAffliction(character,"ominus"))
        print(Utils.GetAffliction(character,"ominus"))
    end
end


