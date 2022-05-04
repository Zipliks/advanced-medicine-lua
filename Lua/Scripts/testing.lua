
-- set the below variable to true to enable debug and testing features
Main.TestingEnabled = true

Hook.Add('chatMessage', 'AM.testing', function(msg, client)
    
    if (msg == 'AM test') then -- a glorified suicide button

        if(client.Character == nil) then return true end
        Main.TraumamputateLimb(client.Character,LimbType.RightArm)
        Main.TraumamputateLimb(client.Character,LimbType.LeftArm)
        Main.TraumamputateLimb(client.Character,LimbType.RightLeg)
        Main.TraumamputateLimb(client.Character,LimbType.LeftLeg)

        return true -- hide message
    elseif (msg == 'AM unfuck') then -- a command to remove non-sensical extremity amputations on the head and torso

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
    elseif(msg=="am1") then
        if not Main.TestingEnabled then return end
        -- insert testing stuff here
        
        local skills = client.Character.Info.Job.Skills

        for key,val in pairs(skills) do 
            print(key,val.Identifier.Identifier,val.Level)
        end

        return true
    elseif(msg=="am2") then
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