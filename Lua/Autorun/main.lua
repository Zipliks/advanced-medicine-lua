---@diagnostic disable: undefined-global
PATH = table.pack(...)[1]
IS_ENABLED = Game.GetEnabledContentPackages()
Main = {}

print("honk!")

if (Game.IsMultiplayer and SERVER) or (Game.IsSingleplayer) then
    for _, value in pairs(IS_ENABLED) do
        if (value.Name == "Advanced Medicine (LUA)") then
            require("Scripts._DEFINES.const")
            require("Scripts._HELPERS.utils")

            require("Scripts.damage")
            require("Scripts.items")
            require("Scripts.update")
            require("Scripts.debug")

            require("Scripts.human")
            require("Scripts.afflictions")
        end
    end
end

if CLIENT then return end