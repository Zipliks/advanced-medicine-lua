Hook.Add("human.CPRSuccess", "CPRSuccess", function(animcontroller)
	if (animcontroller == nil) or (animcontroller.Character == nil) or (animcontroller.Character.SelectedCharacter == nil) then
		return
	end
	local character = animcontroller.Character.SelectedCharacter

	Utils.SetAffliction(character, "oxygenlow", -5, nil, true)
	Utils.SetAffliction(character, "asystole", -3, nil, true)
end)

Hook.Add("human.CPRFailed", "CPRFailed", function(animcontroller)
	if (animcontroller == nil) or (animcontroller.Character == nil) or (animcontroller.Character.SelectedCharacter == nil) then
		return
	end

	local character = animcontroller.Character.SelectedCharacter

	Utils.SetAffliction(character, "internaldamage", 2, LimbType.Torso, true)
end)
