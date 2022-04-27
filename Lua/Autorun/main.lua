PATH = table.pack(...)[1]
IS_ENABLED = Game.GetEnabledContentPackages()

print("honk!")

if Game.IsMultiplayer and SERVER or not Game.IsMultiplayer then
    for _, value in pairs(IS_ENABLED) do
        if (value.Name == "AMlua") then
            require("Scripts.blood")
            require("Scripts.immunity")
            require("Scripts.hypothermia")
            require("Scripts.debug")
            require("Scripts.update")
        end
    end
end

if CLIENT then return end