---@diagnostic disable: undefined-global
IS_ENABLED = Game.GetEnabledContentPackages()
Main = {}

print("honk!")

if (Game.IsMultiplayer and SERVER) or (Game.IsSingleplayer) then
	for _, value in pairs(IS_ENABLED) do
		require("Lua.Scripts.const")
		require("Lua.Scripts.utils")

		require("Scripts.damage")
		require("Scripts.items")
		require("Scripts.update")
		require("Scripts.debug")

		require("Scripts.human")
		require("Scripts.afflictions")
	end
end

if CLIENT then return end
