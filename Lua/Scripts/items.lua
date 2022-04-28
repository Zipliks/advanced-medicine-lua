
Hook.Add("item.applyTreatment", "AM.itemused", function(item, usingCharacter, targetCharacter, limb)
    
    if -- invalid use, dont do anything
        item == nil or
        usingCharacter == nil or
        targetCharacter == nil or
        limb == nil 
    then return end
    
    local identifier = item.Prefab.Identifier.Value

    local methodtorun = Main.ItemMethods[identifier] -- get the function associated with the identifer
    if(methodtorun~=nil) then 
         -- run said function
        methodtorun(item, usingCharacter, targetCharacter, limb)
        return
    end

    -- startswith functions
    for key,value in pairs(Main.ItemStartsWithMethods) do 
        if Utils.StartsWith(identifier,key) then
            value(item, usingCharacter, targetCharacter, limb)
            return
        end
    end

end)

-- storing all of the item-specific functions in a table
Main.ItemMethods = {} -- with the identifier as the key
Main.ItemStartsWithMethods = {} -- with the start of the identifier as the key


-- misc

Main.ItemMethods.healthscanner = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    local containedItem = item.OwnInventory.GetItemAt(0)
    if containedItem==nil then return end
    local hasVoltage = containedItem.Condition > 0

    if hasVoltage then 
        Utils.GiveItem(targetCharacter,"ntsfx_selfscan")
        containedItem.Condition = containedItem.Condition-5
        Utils.AddAffliction(targetCharacter,"radiationsickness",1,usingCharacter)

        -- print readout of afflictions
        local readoutstring = "Affliction readout for "..targetCharacter.Name.." on limb "..Utils.LimbTypeToString(limbtype)..":\n"
        local afflictionlist = targetCharacter.CharacterHealth.GetAllAfflictions()
        local afflictionsdisplayed = 0
        for value in afflictionlist do
            local strength = Utils.Round(value.Strength)
            local prefab = value.Prefab
            local limb = targetCharacter.CharacterHealth.GetAfflictionLimb(value)
            local afflimbtype = LimbType.Torso

            if(limb~=nil) then afflimbtype=limb.type
            elseif(prefab.IndicatorLimb~=nil) then afflimbtype = prefab.IndicatorLimb end

            if (strength > prefab.ShowInHealthScannerThreshold and afflimbtype==limbtype) then
                -- add the affliction to the readout
                readoutstring = readoutstring.."\n"..value.Prefab.Name.Value..": "..strength.."%"
                afflictionsdisplayed = afflictionsdisplayed + 1
            end
        end

        -- add a message in case there is nothing to display
        if afflictionsdisplayed <= 0 then
            readoutstring = readoutstring.."\nNo afflictions! Good work!" 
        end

        Timer.Wait(function()
            Utils.DMClient(Utils.CharacterToClient(usingCharacter),readoutstring,Color(127,255,255,255))
        end, 2000)
    end
end
Main.HematologyDetectable = 
{"sepsis","immunity","acidosis","alkalosis","bloodloss","bloodpressure",
"afimmunosuppressant","afthiamine","afadrenaline","afstreptokinase","afantibiotics",
"afsaline","afringerssolution"}
Main.ItemMethods.bloodanalyzer = function(item, usingCharacter, targetCharacter, limb) 
    
    -- only work if no cooldown
    if item.Condition < 50 then return end
    
    local limbtype = limb.type

    local success = Utils.GetSkillRequirementMet(usingCharacter,"medical",30)
    local bloodlossinduced = 1
    if(not success) then bloodlossinduced = 3 end
    Utils.AddAffliction(targetCharacter,"bloodloss",bloodlossinduced,usingCharacter)

    -- spawn donor card
    local containedItem = item.OwnInventory.GetItemAt(0)
    local hasCartridge = containedItem ~= nil and containedItem.Prefab.Identifier.Value == "bloodcollector"
    if hasCartridge then 
        Utils.RemoveItem(containedItem)
        local bloodtype = Main.GetBloodtype(targetCharacter)
        Utils.PutItemInsideItem(item,bloodtype.."card")
    end

    -- print readout of afflictions
    local readoutstring = "Affliction readout for the blood of "..targetCharacter.Name..":\n"
    local afflictionlist = targetCharacter.CharacterHealth.GetAllAfflictions()
    local afflictionsdisplayed = 0
    for value in afflictionlist do
        local strength = Utils.Round(value.Strength)
        local prefab = value.Prefab

        if (strength > 2 and Utils.TableContains(Main.HematologyDetectable,prefab.Identifier.Value)) then
            -- add the affliction to the readout
            readoutstring = readoutstring.."\n"..value.Prefab.Name.Value..": "..strength.."%"
            afflictionsdisplayed = afflictionsdisplayed + 1
        end
    end

    -- add a message in case there is nothing to display
    if afflictionsdisplayed <= 0 then
        readoutstring = readoutstring.."\nNo blood pressure detected..." 
    end

    Utils.DMClient(Utils.CharacterToClient(usingCharacter),readoutstring,Color(127,255,255,255))
end

-- trauma shears and diving knife
Main.CuttableAfflictions = {"bandaged","dirtybandage"}
Main.TraumashearsAfflictions = {"gypsumcast"}
Main.ItemMethods.traumashears = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    -- does the target have any cuttable afflictions?
    local cuttables = Utils.CombineArrays(Main.CuttableAfflictions,Main.TraumashearsAfflictions)
    local canCut = false
    for val in cuttables do
        local prefab = AfflictionPrefab.Prefabs[val]
        if prefab ~= nil then
            if prefab.LimbSpecific then 
                if Utils.HasAfflictionLimb(targetCharacter,val,limbtype,0.1) then canCut = true break end
            elseif Utils.NormalizeLimbType(limbtype) == prefab.IndicatorLimb then
                if Utils.HasAffliction(targetCharacter,val,0.1) then canCut = true break end
            end
        end
    end

    if canCut then
        if(Utils.GetSkillRequirementMet(usingCharacter,"medical",10)) then
            Utils.GiveItem(targetCharacter,"ntsfx_scissors")

            -- remove 8% fracture so that they dont scream again
            if(Utils.HasAfflictionLimb(targetCharacter,"gypsumcast",limbtype,0.1)) then 
                Utils.AddAfflictionLimb(targetCharacter,"ll_fracture",limbtype,-8,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"rl_fracture",limbtype,-8,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"la_fracture",limbtype,-8,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"ra_fracture",limbtype,-8,usingCharacter)
            end

            -- remove cuttables
            for val in cuttables do
                local prefab = AfflictionPrefab.Prefabs[val]
                if prefab ~= nil then
                    if prefab.LimbSpecific then 
                        Utils.SetAfflictionLimb(targetCharacter,val,limbtype,0,usingCharacter)
                    elseif Utils.NormalizeLimbType(limbtype) == prefab.IndicatorLimb then
                        Utils.SetAffliction(targetCharacter,val,0,usingCharacter)
                    end
                end
            end
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,10,usingCharacter)
        end
    end
end
Main.ItemMethods.divingknife = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    -- does the target have any cuttable afflictions?
    local canCut = false
    for val in Main.CuttableAfflictions do
        local prefab = AfflictionPrefab.Prefabs[val]
        if prefab ~= nil then
            if prefab.LimbSpecific then 
                if Utils.HasAfflictionLimb(targetCharacter,val,limbtype,0.1) then canCut = true break end
            elseif Utils.NormalizeLimbType(limbtype) == prefab.IndicatorLimb then
                if Utils.HasAffliction(targetCharacter,val,0.1) then canCut = true break end
            end
        end
    end
    
    if canCut then
        if(Utils.GetSkillRequirementMet(usingCharacter,"medical",30)) then
            Utils.GiveItem(targetCharacter,"ntsfx_bandage")
            -- remove cuttables
            for val in Main.CuttableAfflictions do
                local prefab = AfflictionPrefab.Prefabs[val]
                if prefab ~= nil then
                    if prefab.LimbSpecific then 
                        Utils.SetAfflictionLimb(targetCharacter,val,limbtype,0,usingCharacter)
                    elseif Utils.NormalizeLimbType(limbtype) == prefab.IndicatorLimb then
                        Utils.SetAffliction(targetCharacter,val,0,usingCharacter)
                    end
                end
            end
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,10,usingCharacter)
        end
    end
end

Main.ItemMethods.gypsum = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.HasAfflictionLimb(targetCharacter,"bandaged",limbtype,0.1) and
        not Utils.HasAfflictionLimb(targetCharacter,"gypsumcast",limbtype,0.1) and
        not Utils.HasAfflictionLimb(targetCharacter,"surgeryincision",limbtype,1) and (
            limbtype~=LimbType.Waist and limbtype~=LimbType.Torso and limbtype~=LimbType.Head 
    )) then
        if(Utils.GetSkillRequirementMet(usingCharacter,"medical",40)) then
            Utils.SetAfflictionLimb(targetCharacter,"bandaged",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"gypsumcast",limbtype,100,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"ll_fracture",limbtype,-20,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"rl_fracture",limbtype,-20,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"la_fracture",limbtype,-20,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"ra_fracture",limbtype,-20,usingCharacter)
            Utils.GiveSkillScaled(usingCharacter,"medical",200)
            Utils.RemoveItem(item)
        else
            Utils.RemoveItem(item)
        end
    end
end

Main.SutureAfflictions = {
    boncut1={xpgain=0,case="surgeryincision"},
    boncut2={xpgain=0,case="surgeryincision"},
    boncut3={xpgain=0,case="surgeryincision"},
    boncut4={xpgain=0,case="surgeryincision"},
    drilledbones={xpgain=0,case="surgeryincision"},

    ll_arterialcut={xpgain=1,case="retractedskin"},
    rl_arterialcut={xpgain=1,case="retractedskin"},
    la_arterialcut={xpgain=1,case="retractedskin"},
    ra_arterialcut={xpgain=1,case="retractedskin"},
    h_arterialcut={xpgain=1,case="retractedskin"},
    t_arterialcut={xpgain=2,case="retractedskin"},
    arteriesclamp={xpgain=0,case="retractedskin"},
    tamponade={xpgain=1,case="retractedskin"},
    internalbleeding={xpgain=1,case="retractedskin"},
    stroke={xpgain=2,case="retractedskin"},

    clampedbleeders={},
    surgeryincision={},
    retractedskin={}
}
Main.ItemMethods.suture = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(Utils.GetSkillRequirementMet(usingCharacter,"medical",30)) then
        -- in field use
        local healeddamage = 0
        healeddamage = healeddamage + Utils.Clamp(Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"lacerations",0),0,20)
        healeddamage = healeddamage + Utils.Clamp(Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"bitewounds",0),0,20)
        healeddamage = healeddamage + Utils.Clamp(Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"explosiondamage",0),0,20)
        healeddamage = healeddamage + Utils.Clamp(Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"gunshotwound",0),0,20)
        healeddamage = healeddamage + Utils.Clamp(Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"bleeding",0)/10,0,4)

        Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,-20,usingCharacter)
        Utils.AddAfflictionLimb(targetCharacter,"bitewounds",limbtype,-20,usingCharacter)
        Utils.AddAfflictionLimb(targetCharacter,"explosiondamage",limbtype,-20,usingCharacter)
        Utils.AddAfflictionLimb(targetCharacter,"gunshotwound",limbtype,-20,usingCharacter)
        Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,-40,usingCharacter)
        Utils.AddAfflictionLimb(targetCharacter,"suturedw",limbtype,healeddamage)

        Utils.GiveSkillScaled(usingCharacter,"medical",healeddamage)

        -- terminating surgeries
        -- amputations
        if(Utils.HasAfflictionLimb(targetCharacter,"boncut1",limbtype,1)) then
            local droplimb = not Utils.HasAfflictionLimb(targetCharacter,"tll_amputation",limbtype,1) and not Utils.HasAfflictionLimb(targetCharacter,"gangrene",limbtype,15)
            Utils.SetAfflictionLimb(targetCharacter,"tll_amputation",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"sll_amputation",limbtype,100,usingCharacter)
            if (droplimb) then 
                Utils.GiveItem(usingCharacter,"lleg")
                if NTSP ~= nil then Utils.GiveSkill(usingCharacter,"surgery",0.5) end
             end
        end
        if(Utils.HasAfflictionLimb(targetCharacter,"boncut2",limbtype,1)) then
            local droplimb = not Utils.HasAfflictionLimb(targetCharacter,"trl_amputation",limbtype,1) and not Utils.HasAfflictionLimb(targetCharacter,"gangrene",limbtype,15)
            Utils.SetAfflictionLimb(targetCharacter,"trl_amputation",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"srl_amputation",limbtype,100,usingCharacter)
            if (droplimb) then 
                Utils.GiveItem(usingCharacter,"rleg")
                if NTSP ~= nil then Utils.GiveSkill(usingCharacter,"surgery",0.5) end
            end
        end
        if(Utils.HasAfflictionLimb(targetCharacter,"boncut3",limbtype,1)) then
            local droplimb = not Utils.HasAfflictionLimb(targetCharacter,"tla_amputation",limbtype,1) and not Utils.HasAfflictionLimb(targetCharacter,"gangrene",limbtype,15)
            Utils.SetAfflictionLimb(targetCharacter,"tla_amputation",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"sla_amputation",limbtype,100,usingCharacter)
            if (droplimb) then 
                Utils.GiveItem(usingCharacter,"larm")
                if NTSP ~= nil then Utils.GiveSkill(usingCharacter,"surgery",0.5) end
            end
        end
        if(Utils.HasAfflictionLimb(targetCharacter,"boncut4",limbtype,1)) then
            local droplimb = not Utils.HasAfflictionLimb(targetCharacter,"tra_amputation",limbtype,1) and not Utils.HasAfflictionLimb(targetCharacter,"gangrene",limbtype,15)
            Utils.SetAfflictionLimb(targetCharacter,"tra_amputation",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"sra_amputation",limbtype,100,usingCharacter)
            if (droplimb) then 
                Utils.GiveItem(usingCharacter,"rarm")
                if NTSP ~= nil then Utils.GiveSkill(usingCharacter,"surgery",0.5) end
            end
        end

        -- the other stuff
        local function removeAfflictionPlusGainSkill(affidentifier,skillgain)
            if Utils.HasAfflictionLimb(targetCharacter,affidentifier,limbtype) then
                Utils.SetAfflictionLimb(targetCharacter,affidentifier,limbtype,0,usingCharacter)

                if NTSP ~= nil then 
                    Utils.GiveSkill(usingCharacter,"surgery",skillgain)
                else 
                    Utils.GiveSkill(usingCharacter,"medical",skillgain/4)
                end
            end
        end
        local function removeAfflictionNonLimbSpecificPlusGainSkill(affidentifier,skillgain)
            if Utils.HasAffliction(targetCharacter,affidentifier) then
                Utils.SetAffliction(targetCharacter,affidentifier,0,usingCharacter)

                if NTSP ~= nil then 
                    Utils.GiveSkill(usingCharacter,"surgery",skillgain)
                else 
                    Utils.GiveSkill(usingCharacter,"medical",skillgain/4)
                end
            end
        end

        for key, value in pairs(Main.SutureAfflictions) do
            local prefab = AfflictionPrefab.Prefabs[key]
            if prefab ~= nil and (value.case == nil or Utils.HasAfflictionLimb(targetCharacter,value.case,limbtype)) then
                if value.func ~= nil then
                    value.func(item, usingCharacter, targetCharacter, limb)
                else
                    local skillgain = value.xpgain or 0
                    if prefab.LimbSpecific then
                        removeAfflictionPlusGainSkill(key,skillgain)
                    elseif prefab.IndicatorLimb == limbtype then
                        removeAfflictionNonLimbSpecificPlusGainSkill(key,skillgain)
                    end
                end
            end
        end
        
    else
        Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,6)
    end
end
Main.ItemMethods.tourniquet = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(Utils.GetSkillRequirementMet(usingCharacter,"medical",30) and not Utils.HasAfflictionLimb(targetCharacter,"arteriesclamp",limbtype,1)) then
        
        if(
            Utils.HasAfflictionLimb(targetCharacter,"ll_arterialcut",limbtype,1) or
            Utils.HasAfflictionLimb(targetCharacter,"rl_arterialcut",limbtype,1) or
            Utils.HasAfflictionLimb(targetCharacter,"la_arterialcut",limbtype,1) or
            Utils.HasAfflictionLimb(targetCharacter,"ra_arterialcut",limbtype,1)
        ) then
            Utils.SetAfflictionLimb(targetCharacter,"arteriesclamp",limbtype,100,usingCharacter)
            Utils.GiveSkillScaled(usingCharacter,"medical",200)
            Utils.RemoveItem(item)
        elseif(Utils.HasAfflictionLimb(targetCharacter,"h_arterialcut",limbtype,1)) then
            Utils.SetAffliction(targetCharacter,"oxygenlow",200,usingCharacter)
            Utils.AddAffliction(targetCharacter,"cerebralhypoxia",15,usingCharacter)
            Utils.RemoveItem(item)
        end
        
    else
        Utils.AddAfflictionLimb(targetCharacter,"blunttrauma",limbtype,6,usingCharacter)
    end
end
Main.ItemMethods.emptybloodpack = function(item, usingCharacter, targetCharacter, limb) 
    if(targetCharacter.Bloodloss <= 31) then 
        local success = Utils.GetSkillRequirementMet(usingCharacter,"medical",30)
        local bloodlossinduced = 30
        if(not success) then bloodlossinduced = 40 end

        local bloodtype = Main.GetBloodtype(targetCharacter)

        Utils.AddAffliction(targetCharacter,"bloodloss",bloodlossinduced,usingCharacter)
        Utils.GiveItem(usingCharacter,"bloodpack" .. bloodtype)
        Utils.RemoveItem(item)
    end
end
Main.ItemMethods.propofol = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    local anesthesiaGained = 1
    if Utils.HasTalent(usingCharacter,"ntsp_properfol") then anesthesiaGained=15 end

    if Utils.GetAfflictionStrength(targetCharacter,"anesthesia",0) < 15 then
        Utils.AddAffliction(targetCharacter,"anesthesia",anesthesiaGained,usingCharacter)
    end

    Utils.RemoveItem(item)
    Utils.GiveItem(targetCharacter,"ntsfx_syringe")
end
Main.ItemMethods.streptokinase = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    Utils.AddAffliction(targetCharacter,"heartattack",-100,usingCharacter)
    Utils.AddAffliction(targetCharacter,"hemotransfusionshock",-100,usingCharacter)
    Utils.AddAffliction(targetCharacter,"afstreptokinase",50,usingCharacter)
    
    -- make stroke worse if present
    local hasStroke = Utils.HasAffliction(targetCharacter,"stroke")
    if hasStroke then
        Utils.AddAffliction(targetCharacter,"stroke",5,usingCharacter)
        Utils.AddAffliction(targetCharacter,"cerebralhypoxia",10,usingCharacter)
    end

    Utils.RemoveItem(item)
    Utils.GiveItem(targetCharacter,"ntsfx_syringe")
end

-- surgery

Main.ItemMethods.advscalpel = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and not Utils.HasAfflictionLimb(targetCharacter,"surgeryincision",limbtype,1)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,30)) then
            Utils.AddAfflictionLimb(targetCharacter,"surgeryincision",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"suturedi",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"gypsumcast",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"bandaged",limbtype,0,usingCharacter)
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,10,usingCharacter)
        end
    end
end
Main.ItemMethods.advhemostat = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"surgeryincision",limbtype,99) and not Utils.HasAfflictionLimb(targetCharacter,"clampedbleeders",limbtype,1)) then
        Utils.AddAfflictionLimb(targetCharacter,"clampedbleeders",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter)
    end
end
Main.ItemMethods.advretractors = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"clampedbleeders",limbtype,99) and not Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,30)) then
            Utils.AddAfflictionLimb(targetCharacter,"retractedskin",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter)
        else
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,10,usingCharacter)
        end
    end
end
Main.ItemMethods.surgicaldrill = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99) and not Utils.HasAfflictionLimb(targetCharacter,"drilledbones",limbtype,1)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,45)) then
            Utils.AddAfflictionLimb(targetCharacter,"drilledbones",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter)
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,10,usingCharacter)
        end
    end
end
Main.ItemMethods.surgerysaw = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)
        and not Utils.HasAfflictionLimb(targetCharacter,"boncut1",limbtype,1)
        and not Utils.HasAfflictionLimb(targetCharacter,"boncut2",limbtype,1)
        and not Utils.HasAfflictionLimb(targetCharacter,"boncut3",limbtype,1)
        and not Utils.HasAfflictionLimb(targetCharacter,"boncut4",limbtype,1)
    ) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,50)) then
            if(limbtype==LimbType.LeftLeg or limbtype==LimbType.LeftThigh or limbtype==LimbType.LeftFoot) then Utils.AddAfflictionLimb(targetCharacter,"boncut1",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter) end
            if(limbtype==LimbType.RightLeg or limbtype==LimbType.RightThigh or limbtype==LimbType.RightThigh) then Utils.AddAfflictionLimb(targetCharacter,"boncut2",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter) end
            if(limbtype==LimbType.LeftArm or limbtype==LimbType.LeftForearm or limbtype==LimbType.LeftHand) then Utils.AddAfflictionLimb(targetCharacter,"boncut3",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter) end
            if(limbtype==LimbType.RightArm  or limbtype==LimbType.RightForearm or limbtype==LimbType.RightHand) then Utils.AddAfflictionLimb(targetCharacter,"boncut4",limbtype,1+Utils.GetSurgerySkill(usingCharacter)/2,usingCharacter) end
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,6,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,4,usingCharacter)
        end
    end
end
Main.ItemMethods.tweezers = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,30)) then
            Utils.AddAfflictionLimb(targetCharacter,"lacerations",limbtype,5,usingCharacter)

            local function healAfflictionGiveSkill(identifier,healamount,skillgain) 
                local affAmount = Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"blunttrauma")
                local healedamount = math.min(affAmount,healamount)
                Utils.AddAfflictionLimb(targetCharacter,identifier,limbtype,-healamount,usingCharacter)
                
                if NTSP ~= nil then 
                    Utils.GiveSkillScaled(usingCharacter,"surgery",healedamount*skillgain)
                else 
                    Utils.GiveSkillScaled(usingCharacter,"medical",healedamount*skillgain/2)
                end
            end

            local foreignbody = Utils.GetAfflictionStrengthLimb(targetCharacter,limbtype,"foreignbody",0)
            local scrapdropchance = math.min(foreignbody,5)/5*0.05 -- 5% chance to drop scrap
            if Utils.Chance(scrapdropchance) then Utils.GiveItem(usingCharacter,"scrap") end

            healAfflictionGiveSkill("foreignbody",5,15)
            healAfflictionGiveSkill("internaldamage",5,3)
            healAfflictionGiveSkill("blunttrauma",5,3)
            healAfflictionGiveSkill("necrosis",5,1)
        else
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,6,usingCharacter)
        end
    end
end

Main.ItemMethods.organscalpel_liver = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        local damage = Utils.GetAfflictionStrength(targetCharacter,"liverdamage",0)
        local removed = Utils.GetAfflictionStrength(targetCharacter,"liverremoved",0)
        if(removed <= 0) then

            if(Utils.GetSurgerySkillRequirementMet(usingCharacter,40)) then
                Utils.SetAffliction(targetCharacter,"liverremoved",100,usingCharacter)
                Utils.SetAffliction(targetCharacter,"liverdamage",100,usingCharacter)

                Utils.AddAffliction(targetCharacter,"organdamage",(100-damage)/5,usingCharacter)
                local transplantidentifier = "livertransplant_q1"
                if NTC.HasTag(usingCharacter,"organssellforfull") then transplantidentifier = "livertransplant" end
                if(damage < 90) then Utils.GiveItemAtCondition(usingCharacter,transplantidentifier,100-damage) end
            else
                Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"organdamage",limbtype,5,usingCharacter)
                Utils.AddAffliction(targetCharacter,"liverdamage",20,usingCharacter)
            end
        end
    end
end
Main.ItemMethods.organscalpel_lungs = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        local damage = Utils.GetAfflictionStrength(targetCharacter,"lungdamage",0)
        local removed = Utils.GetAfflictionStrength(targetCharacter,"lungremoved",0)
        if(removed <= 0) then

            if(Utils.GetSurgerySkillRequirementMet(usingCharacter,50)) then
                Utils.SetAffliction(targetCharacter,"lungremoved",100,usingCharacter)
                Utils.SetAffliction(targetCharacter,"lungdamage",100,usingCharacter)

                Utils.SetAffliction(targetCharacter,"pneumothorax",0,usingCharacter)
                Utils.SetAffliction(targetCharacter,"needlec",0,usingCharacter)

                Utils.AddAffliction(targetCharacter,"organdamage",(100-damage)/5,usingCharacter)
                local transplantidentifier = "lungtransplant_q1"
                if NTC.HasTag(usingCharacter,"organssellforfull") then transplantidentifier = "lungtransplant" end
                if(damage < 90) then Utils.GiveItemAtCondition(usingCharacter,transplantidentifier,100-damage) end
            else
                Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"organdamage",limbtype,5,usingCharacter)
                Utils.AddAffliction(targetCharacter,"lungdamage",20,usingCharacter)
            end
        end
    end
end
Main.ItemMethods.organscalpel_heart = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        local damage = Utils.GetAfflictionStrength(targetCharacter,"heartdamage",0)
        local removed = Utils.GetAfflictionStrength(targetCharacter,"heartremoved",0)
        if(removed <= 0) then

            if(Utils.GetSurgerySkillRequirementMet(usingCharacter,60)) then
                Utils.SetAffliction(targetCharacter,"heartremoved",100,usingCharacter)
                Utils.SetAffliction(targetCharacter,"heartdamage",100,usingCharacter)
                
                Utils.SetAffliction(targetCharacter,"tamponade",0,usingCharacter)
                
                Utils.AddAffliction(targetCharacter,"organdamage",(100-damage)/5,usingCharacter)
                local transplantidentifier = "hearttransplant_q1"
                if NTC.HasTag(usingCharacter,"organssellforfull") then transplantidentifier = "hearttransplant" end
                if(damage < 90) then Utils.GiveItemAtCondition(usingCharacter,transplantidentifier,100-damage) end
            else
                Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"organdamage",limbtype,5,usingCharacter)
                Utils.AddAffliction(targetCharacter,"heartdamage",20,usingCharacter)
            end
        end
    end
end
Main.ItemMethods.organscalpel_kidneys = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        local damage = Utils.GetAfflictionStrength(targetCharacter,"kidneydamage",0)
        local removed = Utils.GetAfflictionStrength(targetCharacter,"kidneyremoved",0)
        if(removed <= 0) then
            if(Utils.GetSurgerySkillRequirementMet(usingCharacter,30)) then
                Utils.SetAffliction(targetCharacter,"kidneyremoved",100,usingCharacter)
                Utils.SetAffliction(targetCharacter,"kidneydamage",100,usingCharacter)
                Utils.AddAffliction(targetCharacter,"organdamage",(100-damage)/5,usingCharacter)
                local transplantidentifier = "kidneytransplant_q1"
                if NTC.HasTag(usingCharacter,"organssellforfull") then transplantidentifier = "kidneytransplant" end
                if(damage < 50) then 
                    Utils.GiveItemAtCondition(usingCharacter,transplantidentifier,100)
                    damage = damage+50
                end
                if(damage < 95) then
                    Utils.GiveItemAtCondition(usingCharacter,transplantidentifier,100-(damage-50)*2)
                end
            else
                Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
                Utils.AddAfflictionLimb(targetCharacter,"organdamage",limbtype,5,usingCharacter)
                Utils.AddAffliction(targetCharacter,"kidneydamage",20,usingCharacter)
            end
        end
    end
end
Main.ItemMethods.organscalpel_brain = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(limbtype == LimbType.Head and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,1)) then
        local damage = Utils.GetAfflictionStrength(targetCharacter,"cerebralhypoxia",0)
        local removed = Utils.GetAfflictionStrength(targetCharacter,"brainremoved",0)
        if(removed <= 0) then

            if(Utils.GetSurgerySkillRequirementMet(usingCharacter,100)) then
                Utils.SetAffliction(targetCharacter,"brainremoved",100,usingCharacter)
                Utils.AddAffliction(targetCharacter,"cerebralhypoxia",100,usingCharacter)
                
                if NTSP ~= nil then
                    if Utils.HasAffliction(targetCharacter,"artificialbrain") then
                        Utils.SetAffliction(targetCharacter,"artificialbrain",0,usingCharacter)
                        damage=100
                    end
                end
                
                if(damage < 90) then
                    local postSpawnFunction = function(item,donor,client)
                        item.Condition = 100-damage
                        if client ~= nil then
                            item.Description = client.Name
                        end
                    end

                    if SERVER then
                        -- use server spawn method
                        local prefab = ItemPrefab.GetItemPrefab("braintransplant")
                        local client = Utils.CharacterToClient(targetCharacter)
                        Entity.Spawner.AddItemToSpawnQueue(prefab, usingCharacter.WorldPosition, nil, nil, function(item)
                            usingCharacter.Inventory.TryPutItem(item, nil, {InvSlotType.Any})
                            postSpawnFunction(item,targetCharacter,client)
                        end)

                        if client ~= nil then
                        client.SetClientCharacter(nil) end
                    else
                        -- use client spawn method
                        local item = Item(ItemPrefab.GetItemPrefab("braintransplant"), usingCharacter.WorldPosition)
                        usingCharacter.Inventory.TryPutItem(item, nil, {InvSlotType.Any})
                        postSpawnFunction(item,targetCharacter,nil)
                    end
                end
            else
                Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,15,usingCharacter)
                Utils.AddAffliction(targetCharacter,"cerebralhypoxia",50,usingCharacter)
            end
        end
    end
end

Main.ItemMethods.osteosynthesisimplants = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"drilledbones",limbtype,99)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,45)) then
            local function removeAfflictionPlusGainSkill(affidentifier,skillgain)
                if Utils.HasAfflictionLimb(targetCharacter,affidentifier,limbtype) then
                    Utils.SetAfflictionLimb(targetCharacter,affidentifier,limbtype,0,usingCharacter)

                    if NTSP ~= nil then 
                        Utils.GiveSkillScaled(usingCharacter,"surgery",skillgain)
                    else 
                        Utils.GiveSkillScaled(usingCharacter,"medical",skillgain/4)
                    end
                end
            end
            removeAfflictionPlusGainSkill("ll_fracture",200)
            removeAfflictionPlusGainSkill("rl_fracture",200)
            removeAfflictionPlusGainSkill("la_fracture",200)
            removeAfflictionPlusGainSkill("ra_fracture",200)
            removeAfflictionPlusGainSkill("t_fracture",200)
            removeAfflictionPlusGainSkill("h_fracture",200)
            removeAfflictionPlusGainSkill("n_fracture",200)
            removeAfflictionPlusGainSkill("boneclamp",0)
            removeAfflictionPlusGainSkill("drilledbones",0)
            Utils.SetAfflictionLimb(targetCharacter,"bonegrowth",limbtype,100,usingCharacter)
            item.Condition = item.Condition-25
            if(item.Condition<=0) then Utils.RemoveItem(item) end
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,5,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,5,usingCharacter)
        end
    end
end
Main.ItemMethods.spinalimplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    if(Utils.CanPerformSurgeryOn(targetCharacter) and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,50)) then
        if(Utils.GetSurgerySkillRequirementMet(usingCharacter,45)) then
            Utils.SetAfflictionLimb(targetCharacter,"t_paralysis",limbtype,0,usingCharacter)
            Utils.RemoveItem(item)

            if NTSP ~= nil then 
                Utils.GiveSkillScaled(usingCharacter,"surgery",400)
            else 
                Utils.GiveSkillScaled(usingCharacter,"medical",100)
            end
        else
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,5,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"internaldamage",limbtype,5,usingCharacter)
        end
    end
end

Main.ItemMethods.endovascballoon = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"surgeryincision",limbtype,1) and Utils.HasAffliction(targetCharacter,"t_arterialcut",1)) then
        Utils.AddAfflictionLimb(targetCharacter,"balloonedaorta",limbtype,100,usingCharacter)
        Utils.SetAfflictionLimb(targetCharacter,"internalbleeding",limbtype,0,usingCharacter)

        if NTSP ~= nil then 
            Utils.GiveSkillScaled(usingCharacter,"surgery",400)
        else 
            Utils.GiveSkillScaled(usingCharacter,"medical",200)
        end

        if Utils.Chance(NTC.GetMultiplier(usingCharacter,"balloonconsumechance")) then
            Utils.RemoveItem(item)
        end
    end
end
Main.ItemMethods.medstent = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(limbtype == LimbType.Torso and Utils.HasAffliction(targetCharacter,"balloonedaorta",1)) then
        Utils.SetAfflictionLimb(targetCharacter,"balloonedaorta",limbtype,0,usingCharacter)
        Utils.SetAfflictionLimb(targetCharacter,"t_arterialcut",limbtype,0,usingCharacter)
    
        if NTSP ~= nil then 
            Utils.GiveSkillScaled(usingCharacter,"surgery",800)
        else 
            Utils.GiveSkillScaled(usingCharacter,"medical",400)
        end
    end
end
Main.ItemMethods.drainage = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype) and Utils.HasAffliction(targetCharacter,"pneumothorax")) then
        Utils.SetAfflictionLimb(targetCharacter,"pneumothorax",limbtype,0,usingCharacter)
        Utils.SetAfflictionLimb(targetCharacter,"needlec",limbtype,0,usingCharacter)
    
        if Utils.Chance(NTC.GetMultiplier(usingCharacter,"drainageconsumechance")) then
            Utils.RemoveItem(item)
        end

        if NTSP ~= nil then 
            Utils.GiveSkillScaled(usingCharacter,"surgery",400)
        else 
            Utils.GiveSkillScaled(usingCharacter,"medical",200)
        end
    end
end
Main.ItemMethods.needle = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type

    -- don't work on stasis
    if(Utils.HasAffliction(targetCharacter,"stasis",0.1)) then return end

    if(limbtype == LimbType.Torso) then
        if Utils.GetSkillRequirementMet(usingCharacter,"medical",20) then 
            Utils.SetAfflictionLimb(targetCharacter,"needlec",limbtype,100,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"pneumothorax",limbtype,1,usingCharacter)
        
            if Utils.Chance(NTC.GetMultiplier(usingCharacter,"needleconsumechance")) then
                Utils.RemoveItem(item)
            end
        else 
            Utils.AddAfflictionLimb(targetCharacter,"organdamage",limbtype,10,usingCharacter)
            Utils.AddAfflictionLimb(targetCharacter,"bleeding",limbtype,10,usingCharacter)
        end  
    end
end

Main.ItemMethods.braintransplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    local conditionmodifier = 0
    if (not Utils.GetSurgerySkillRequirementMet(usingCharacter,100)) then conditionmodifier = -40 end
    local workcondition = Utils.Clamp(item.Condition+conditionmodifier,0,100)
    if(Utils.HasAffliction(targetCharacter,"brainremoved",1) and limbtype == LimbType.Head) then
        Utils.AddAffliction(targetCharacter,"cerebralhypoxia",-(workcondition),usingCharacter)
        Utils.SetAffliction(targetCharacter,"brainremoved",0,usingCharacter)

        -- give character control to the donor
        if SERVER then
            local donorclient = item.Description
            local client = Utils.ClientFromName(donorclient)
            if client ~= nil then
                client.SetClientCharacter(targetCharacter)
            end
        end

        Utils.RemoveItem(item)
    end
end

-- startswith region begins

-- transplants

Main.ItemStartsWithMethods.livertransplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    local conditionmodifier = 0
    if (not Utils.GetSurgerySkillRequirementMet(usingCharacter,40)) then conditionmodifier = -40 end
    local workcondition = Utils.Clamp(item.Condition+conditionmodifier,0,100)
    if(Utils.HasAffliction(targetCharacter,"liverremoved",1) and limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)) then
        Utils.AddAffliction(targetCharacter,"liverdamage",-(workcondition),usingCharacter)
        Utils.AddAffliction(targetCharacter,"organdamage",-(workcondition)/5,usingCharacter)
        Utils.SetAffliction(targetCharacter,"liverremoved",0,usingCharacter)
        Utils.RemoveItem(item)

        local rejectionchance = Utils.Clamp((Utils.GetAfflictionStrength(targetCharacter,"immunity",0)-10)/150*NTC.GetMultiplier(usingCharacter,"organrejectionchance"),0,1)
        if Utils.Chance(rejectionchance) then
            Utils.SetAffliction(targetCharacter,"liverdamage",100)
        end
    end
end
Main.ItemStartsWithMethods.hearttransplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    local conditionmodifier = 0
    if (not Utils.GetSurgerySkillRequirementMet(usingCharacter,40)) then conditionmodifier = -40 end
    local workcondition = Utils.Clamp(item.Condition+conditionmodifier,0,100)
    if(Utils.HasAffliction(targetCharacter,"heartremoved",1) and limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)) then
        Utils.AddAffliction(targetCharacter,"heartdamage",-(workcondition),usingCharacter)
        Utils.AddAffliction(targetCharacter,"organdamage",-(workcondition)/5,usingCharacter)
        Utils.SetAffliction(targetCharacter,"heartremoved",0,usingCharacter)
        Utils.RemoveItem(item)

        local rejectionchance = Utils.Clamp((Utils.GetAfflictionStrength(targetCharacter,"immunity",0)-10)/150*NTC.GetMultiplier(usingCharacter,"organrejectionchance"),0,1)
        if Utils.Chance(rejectionchance) then
            Utils.SetAffliction(targetCharacter,"heartdamage",100)
        end
    end
end
Main.ItemStartsWithMethods.lungtransplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    local conditionmodifier = 0
    if (not Utils.GetSurgerySkillRequirementMet(usingCharacter,40)) then conditionmodifier = -40 end
    local workcondition = Utils.Clamp(item.Condition+conditionmodifier,0,100)
    if(Utils.HasAffliction(targetCharacter,"lungremoved",1) and limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)) then
        Utils.AddAffliction(targetCharacter,"lungdamage",-(workcondition),usingCharacter)
        Utils.AddAffliction(targetCharacter,"organdamage",-(workcondition)/5,usingCharacter)
        Utils.SetAffliction(targetCharacter,"lungremoved",0,usingCharacter)
        Utils.RemoveItem(item)

        local rejectionchance = Utils.Clamp((Utils.GetAfflictionStrength(targetCharacter,"immunity",0)-10)/150*NTC.GetMultiplier(usingCharacter,"organrejectionchance"),0,1)
        if Utils.Chance(rejectionchance) then
            Utils.SetAffliction(targetCharacter,"lungdamage",100)
        end
    end
end
Main.ItemStartsWithMethods.kidneytransplant = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    local conditionmodifier = 0
    if (not Utils.GetSurgerySkillRequirementMet(usingCharacter,40)) then conditionmodifier = -40 end
    local workcondition = Utils.Clamp(item.Condition+conditionmodifier,0,100)
    if(Utils.HasAffliction(targetCharacter,"kidneyremoved",1) and limbtype == LimbType.Torso and Utils.HasAfflictionLimb(targetCharacter,"retractedskin",limbtype,99)) then
        
        Timer.Wait(function()
            Utils.SetAffliction(targetCharacter,"kidneyremoved",0,usingCharacter)
        end, 5000)

        local rejectionchance = Utils.Clamp((Utils.GetAfflictionStrength(targetCharacter,"immunity",0)-10)/150*NTC.GetMultiplier(usingCharacter,"organrejectionchance"),0,1)
        if Utils.Chance(rejectionchance) then 
            Utils.RemoveItem(item)
            return
        end
        
        Utils.AddAffliction(targetCharacter,"kidneydamage",-(workcondition)/2,usingCharacter)
        Utils.AddAffliction(targetCharacter,"organdamage",-(workcondition)/10,usingCharacter)
        Utils.RemoveItem(item)
    end
end

-- misc

Main.ItemStartsWithMethods.wrench = function(item, usingCharacter, targetCharacter, limb) 
    local limbtype = limb.type
    if(Utils.HasAfflictionExtremity(targetCharacter,"dislocation1",limbtype,1) or 
    Utils.HasAfflictionExtremity(targetCharacter,"dislocation2",limbtype,1) or
    Utils.HasAfflictionExtremity(targetCharacter,"dislocation3",limbtype,1) or
    Utils.HasAfflictionExtremity(targetCharacter,"dislocation4",limbtype,1)) then

        local skillrequired = 60
        if(Utils.HasAffliction(targetCharacter,"analgesia",0.5)) then skillrequired = skillrequired-30 end

        if(Utils.GetSkillRequirementMet(usingCharacter,"medical",skillrequired)) then 
            Utils.SetAfflictionLimb(targetCharacter,"dislocation1",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"dislocation2",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"dislocation3",limbtype,0,usingCharacter)
            Utils.SetAfflictionLimb(targetCharacter,"dislocation4",limbtype,0,usingCharacter)

            Utils.GiveSkillScaled(usingCharacter,"medical",75)
        else
            if(limbtype == LimbType.LeftArm or limbtype == LimbType.LeftForearm or limbtype == LimbType.LeftHand) then Utils.AddAfflictionLimb(targetCharacter,"la_fracture",LimbType.LeftArm,1,usingCharacter) 
            elseif(limbtype == LimbType.RightArm or limbtype == LimbType.RightForearm or limbtype == LimbType.RightHand) then Utils.AddAfflictionLimb(targetCharacter,"ra_fracture",LimbType.RightArm,1,usingCharacter) 
            elseif(limbtype == LimbType.LeftLeg or limbtype == LimbType.LeftThigh or limbtype == LimbType.LeftFoot) then Utils.AddAfflictionLimb(targetCharacter,"ll_fracture",LimbType.LeftLeg,1,usingCharacter) 
            elseif(limbtype == LimbType.RightLeg or limbtype == LimbType.RightThigh or limbtype == LimbType.RightFoot) then Utils.AddAfflictionLimb(targetCharacter,"rl_fracture",LimbType.RightLeg,1,usingCharacter) end
        end

        if(not Utils.HasAffliction(targetCharacter,"analgesia",0.5)) then
            Utils.AddAffliction(targetCharacter,"severepain",5,usingCharacter) end
    end
end
Main.ItemStartsWithMethods.bloodpack = function(item, usingCharacter, targetCharacter, limb) 
    local identifier = item.Prefab.Identifier.Value
    local packtype = string.sub(identifier, string.len("bloodpack")+1)
    
    local packhasantibodyA = string.find(packtype, "a")
    local packhasantibodyB = string.find(packtype, "b")
    local packhasantibodyRh = string.find(packtype, "plus")

    local targettype = Main.GetBloodtype(targetCharacter)

    local targethasantibodyA = string.find(targettype, "a")
    local targethasantibodyB = string.find(targettype, "b")
    local targethasantibodyRh = string.find(targettype, "plus")

    local compatible = 
    (targethasantibodyRh or not packhasantibodyRh) and
    (targethasantibodyA or not packhasantibodyA) and
    (targethasantibodyB or not packhasantibodyB)

    if compatible then 
        Utils.AddAffliction(targetCharacter,"bloodloss",-30,usingCharacter)
        Utils.AddAffliction(targetCharacter,"bloodpressure",30,usingCharacter)
    else
        Utils.AddAffliction(targetCharacter,"bloodloss",-20,usingCharacter)
        Utils.AddAffliction(targetCharacter,"bloodpressure",30,usingCharacter)
        local immunity = Utils.GetAfflictionStrength(targetCharacter,"immunity",100)
        Utils.AddAffliction(targetCharacter,"hemotransfusionshock",math.max(immunity-6,0),usingCharacter)
    end

    Utils.RemoveItem(item)
    Utils.GiveItem(usingCharacter,"emptybloodpack")
    Utils.GiveItem(targetCharacter,"ntsfx_syringe")
end