
-- set the below variable to true to enable debug and testing features
Main.TestingEnabled = false

Hook.Add('chatMessage', 'Main.testing', function(msg, client)
    
    if (msg == 'Main test') then -- a glorified suicide button

        if(client.Character == nil) then return true end

        Utils.SetAfflictionLimb(client.Character,"gate_ta_ra",LimbType.RightArm,100)
        Utils.SetAfflictionLimb(client.Character,"gate_ta_la",LimbType.LeftArm,100)
        Utils.SetAfflictionLimb(client.Character,"gate_ta_rl",LimbType.RightLeg,100)
        Utils.SetAfflictionLimb(client.Character,"gate_ta_ll",LimbType.LeftLeg,100)

        return true -- hide message
    elseif (msg == 'Main unfuck') then -- a command to remove non-sensical extremity amputations on the head and torso

        if(client.Character == nil) then return true end

        Utils.SetAfflictionLimb(client.Character,"tll_amputation",LimbType.Head,0)
        Utils.SetAfflictionLimb(client.Character,"trl_amputation",LimbType.Head,0)
        Utils.SetAfflictionLimb(client.Character,"tla_amputationg",LimbType.Head,0)
        Utils.SetAfflictionLimb(client.Character,"tra_amputation",LimbType.Head,0)

        Utils.SetAfflictionLimb(client.Character,"tll_amputation",LimbType.Torso,0)
        Utils.SetAfflictionLimb(client.Character,"trl_amputation",LimbType.Torso,0)
        Utils.SetAfflictionLimb(client.Character,"tla_amputation",LimbType.Torso,0)
        Utils.SetAfflictionLimb(client.Character,"tra_amputation",LimbType.Torso,0)

        return true -- hide message
    elseif(msg=="nt1") then
        if not Main.TestingEnabled then return end
        -- insert testing stuff here
        
        local skills = client.Character.Info.Job.Skills

        for key,val in pairs(skills) do 
            print(key,val.Identifier.Identifier,val.Level)
        end

        return true
    elseif(msg=="nt2") then
        if not Main.TestingEnabled then return end
        -- insert other testing stuff here
        local crewenum = Character.GetFriendlyCrew(client.Character)
        local targetchar = nil
        local i = 0
        for char in crewenum do
            print(char.Name)
            targetchar = char
            i = i+1
            if i == 2 then break end
        end

        client.SetClientCharacter(nil)

        print(targetchar)

        Timer.Wait(function() 
            client.SetClientCharacter(targetchar)
        end,50)

        return true
    end
end)