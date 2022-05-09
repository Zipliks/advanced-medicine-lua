-- What is my purpose?
Hook.Add("characterCreated", "immunityGenerate", function(createdCharacter)
    print("immunity!")
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            local conditional = Utils.GetAffliction(createdCharacter,"immunity")
            if(conditional > 0) then return end

            Utils.SetAffliction(createdCharacter,"immunity",600)
        end
    end, 1000)
end)