--if Game.IsMultiplayer and CLIENT then return end

Main = {} -- Neurotrauma
Main.Name="Advanced Neurotrauma"
Main.Version = "A0.0.1"
Main.VersionNum = 01070400
Main.Path = table.pack(...)[1]

--dofile(Main.Path.."/Lua/Scripts/helperfunctions.lua")
require("Scripts.helperfunctions")

-- server-side code (also run in singleplayer)
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then

    -- Version and expansion display
    Timer.Wait(function() Timer.Wait(function()
        local runstring = "\n/// Running AAAAAAAAAAAAAAAA "..Main.Version.." ///\n"

        -- add dashes
        local linelength = string.len(runstring)+4
        local i = 0
        while i < linelength do runstring=runstring.."-" i=i+1 end
        local hasAddons = #NTC.RegisteredExpansions>0

        -- add expansions
        for val in NTC.RegisteredExpansions do
            runstring = runstring.."\n+ "..(val.Name or "Unnamed expansion").." V "..(val.Version or "???")
            if val.MinNTVersion ~= nil and Main.VersionNum < (val.MinNTVersionNum or 1) then
                runstring = runstring.."\n-- WARNING! Neurotrauma version "..val.MinNTVersion.." or higher required!"
            end
        end

        -- No expansions
        runstring=runstring.."\n"
        if not hasAddons then
            runstring = runstring.."- Not running any expansions\n"
        end

        print(runstring)
    end,1) end,1)

    require("Scripts.ntcompat")
    require("Scripts.blood")
    require("Scripts.humanupdate")
    require("Scripts.ondamaged")
    require("Scripts.items")
    require("Scripts.onfire")
    require("Scripts.cpr")
    require("Scripts.surgerytable")

    require("Scripts.testing")

    --[[dofile(Main.Path.."/Lua/Scripts/ntcompat.lua")
    dofile(Main.Path.."/Lua/Scripts/blood.lua")
    dofile(Main.Path.."/Lua/Scripts/humanupdate.lua")
    dofile(Main.Path.."/Lua/Scripts/ondamaged.lua")
    dofile(Main.Path.."/Lua/Scripts/items.lua")
    dofile(Main.Path.."/Lua/Scripts/onfire.lua")
    dofile(Main.Path.."/Lua/Scripts/cpr.lua")
    dofile(Main.Path.."/Lua/Scripts/surgerytable.lua")
    
    dofile(Main.Path.."/Lua/Scripts/testing.lua")--]]
end

-- client-side code // Клиентсайд пока не используется.
-- Нужно также сделать возможность игры игрокам без клиентсайда (Иначе людям с модом играть проблематично будет).

--if CLIENT then
--    dofile(Main.Path.."/Lua/Scripts/clientonly.lua")
--end