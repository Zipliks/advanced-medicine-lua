print("honk!")

local enabled = Game.GetEnabledContentPackages()


for _, value in pairs(enabled) do
    if (value.Name == "AMlua") then
        dofile("LocalMods/AMlua/Lua/Scripts/blood.lua")
        dofile("LocalMods/AMlua/Lua/Scripts/hypothermia.lua")
        dofile("LocalMods/AMlua/Lua/Scripts/debug.lua")
        dofile("LocalMods/AMlua/Lua/Scripts/update.lua")
    end
end
