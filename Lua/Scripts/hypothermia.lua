local freezingPrefab = AfflictionPrefab.Prefabs["freezing"]

-- Checks if player limb is in water and applies freezing
local function isFreezing(character)
    for _, limb in pairs(character.AnimController.Limbs) do
        if (limb.InWater) then
            character.CharacterHealth.ApplyAffliction(limb, freezingPrefab.Instantiate(0.005))
        end
    end
end

Hook.Add("think", "coldwater", function()
    for _, character in pairs(Character.CharacterList) do
        if (character.IsPlayer) then
            isFreezing(character)
        end
    end
end)