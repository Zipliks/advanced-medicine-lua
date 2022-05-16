PATH = table.pack(...)[1]
IS_ENABLED = Game.GetEnabledContentPackages()
Main = {}

print("honk!")

if Game.IsMultiplayer and SERVER or not Game.IsMultiplayer then
    for _, value in pairs(IS_ENABLED) do
        if (value.Name == "AMlua") then
            require("Scripts._DEFINES.const")
            require("Scripts._HELPERS.utils")

            require("Scripts.damage")
            require("Scripts.items")
            require("Scripts.update")
            require("Scripts.debug")

            require("Scripts.human")
            --require("Scripts.hypothermia") -- freezing-а нету в аффликшенах

        end
    end
end

if CLIENT then return end