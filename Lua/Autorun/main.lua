print("honk!")

local enabled = Game.GetEnabledContentPackages()

for _, value in pairs(enabled) do
    if (value.Name == "Medicalypse") then
        dofile("LocalMods/Medicalypse/Lua/Scripts/_DEFINES.lua")
        dofile("Mods/Medicalypse/Lua/Scripts/blood.lua")
		dofile("Mods/Medicalypse/Lua/Scripts/hypothermia.lua")
		dofile("Mods/Medicalypse/Lua/Scripts/debug.lua")
        dofile("Mods/Medicalypse/Lua/Scripts/update.lua")
    end
end