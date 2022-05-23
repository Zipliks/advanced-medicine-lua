-- Checks if player limb is in water and applies freezing
local function is_freezing(character)
    for _, limb in pairs(character.AnimController.Limbs) do
        if (limb.InWater) then
            Utils.SetAffliction(character, "freezing", 0.005, true)
        end
    end
end

Hook.Add("think", "coldwater", function()
    for _, character in pairs(Character.CharacterList) do
        if (character.IsPlayer) then
            is_freezing(character)
        end
    end
end)