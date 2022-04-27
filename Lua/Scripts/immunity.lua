local immunityPrefab = AfflictionPrefab.Prefabs["immunity"]

-- What is my purpose?
Hook.Add("characterCreated", "immunityGenerate", function(createdCharacter)
    print("immunity!")
    Timer.Wait(function()
        if(createdCharacter.IsPlayer and not createdCharacter.IsDead) then
            local conditional = createdCharacter.CharacterHealth.GetAffliction("immunity")
            if(conditional and conditional.Strength > 0) then return end

            createdCharacter.CharacterHealth.ApplyAffliction(createdCharacter.AnimController.MainLimb, immunityPrefab.Instantiate(600))
        end
    end, 1000)
end)