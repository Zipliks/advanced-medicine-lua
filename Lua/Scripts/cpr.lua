Hook.Add("human.CPRSuccess", "CPRSuccess", function(animcontroller)
    if (animcontroller == nil) or (animcontroller.Character == nil) or (animcontroller.Character.SelectedCharacter == nil) then return end
    local character = animcontroller.Character.SelectedCharacter
    
    Utils.SetAffliction(character, "cpr_buff", 2, nil, false)
end)

Hook.Add("human.CPRFailed", "CPRFailed", function(animcontroller)
    if (animcontroller == nil) or (animcontroller.Character == nil) or (animcontroller.Character.SelectedCharacter == nil) then return end
    local character = animcontroller.Character.SelectedCharacter

    Utils.SetAffliction(character, "blunttrauma", 0.3, LimbType.Torso, true)
end)