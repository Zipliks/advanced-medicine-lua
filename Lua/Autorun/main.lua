TRUE  = true
FALSE = false

if CLIENT then
    return
end

print("honk!")

local enabled = Game.GetEnabledContentPackages()

for _, value in pairs(enabled) do
    if (value.Name == "Medicalypse") then
        dofile("Mods/Medicalypse/Lua/Scripts/blood.lua")
		dofile("Mods/Medicalypse/Lua/Scripts/hypothermia.lua")
		dofile("Mods/Medicalypse/Lua/Scripts/debug.lua")
    end
end