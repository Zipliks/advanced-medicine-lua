
--[[

nil означает, что SetAffliction будет наложен на Torso

Main.AddAfflictionHandler("blunttrauma", "AM.test", function(character, strength)
    blunttrauma = Utils.GetAffliction(character, "blunttrauma")
    if blunttrauma >= 50 then
        Utils.SetAffliction(character, "oxygenlow", 20*DELTA_TIME, nil, true)
    end
end) 
--]]

--CPR
Main.AddAfflictionHandler("cpr_buff", "has_cpr", function(character, strength)
    Utils.SetAffliction(character, "oxygenlow", -10, nil, true)
end)

--Bite Wounds
Main.AddAfflictionHandler("bitewounds", "has_bitewounds", function(character, strength)
    Utils.SetAffliction(character, "bloodloss", 1*DELTA_TIME, nil, true)
end)

-- STUB: Blunt Force Trauma
Main.AddAfflictionHandler("blunttrauma", "has_blunttrauma", function(character, strength)
end)

-- STUB: Deep Tissue Injury
Main.AddAfflictionHandler("explosiondamage", "has_explosiondamage", function(character, strength)

end)

-- STUB: Gunshot Wound
Main.AddAfflictionHandler("gunshotwound", "has_gunshotwound", function(character, strength)

end)

-- STUB: Internal Damage
Main.AddAfflictionHandler("internaldamage", "has_internaldamage", function(character, strength)

end)

-- STUB: Lacerations
Main.AddAfflictionHandler("lacerations", "has_lacerations", function(character, strength)

end)

-- STUB: Organ Damage
Main.AddAfflictionHandler("organdamage", "has_organdamage", function(character, strength)

end)

-- STUB: Acid Burn (Burn)
Main.AddAfflictionHandler("acidburn", "has_acidburn", function(character, strength)

end)

-- STUB: Burn
Main.AddAfflictionHandler("burn", "has_burn", function(character, strength)

end)

-- STUB: Bloodloss
Main.AddAfflictionHandler("bloodloss", "has_bloodloss", function(character, strength)
    Utils.SetAffliction(character, "oxygenlow", 10*DELTA_TIME, LimbType.Torso, true)
end)

-- STUB: Blood Pressure
Main.AddAfflictionHandler("bloodpressure", "has_bloodpressure", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    
    if(bloodpressure_strength >= 100) then
        Utils.SetAffliction(character, "bloodpressure", -0.5*DELTA_TIME, LimbType.Head, true)
    end
    
    if(bloodpressure_strength <= 100) then
        Utils.SetAffliction(character, "bloodpressure", 0.5*DELTA_TIME, LimbType.Head, true)
    end
end)

-- STUB: Bleeding
Main.AddAfflictionHandler("bleeding", "has_bleeding", function(character, strength)

end)

-- STUB: Bleeding (Nonstop)
Main.AddAfflictionHandler("bleedingnonstop", "has_bleedingnonstop", function(character, strength)

end)

-- STUB: Oxygenlow
Main.AddAfflictionHandler("oxygenlow", "has_oxygenlow", function(character, strength)
    local oxygenlow_strength = Utils.GetAffliction(character, "oxygenlow")
    
    if(oxygenlow_strength >= 20 and SpO2_strength >= 2) then
        Utils.SetAffliction(character, "SpO2", oxygenlow_strength*-0.003*DELTA_TIME, LimbType.Torso, true)
    end
    if(oxygenlow_strength <= 20) then
        Utils.SetAffliction(character, "SpO2", oxygenlow_strength*0.003*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("SpO2", "has_SpO2", function(character, strength)
    SpO2_strength = Utils.GetAffliction(character, "SpO2")
    
    if(SpO2_strength <= 90) then
        Utils.SetAffliction(character, "hypoxia", SpO2_strength^-0.25*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "heart_failure", SpO2_strength^-0.25*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("vt", "has_vt", function(character, strength)
    if(SpO2_strength <= 80) then
        Utils.SetAffliction(character, "hypoxia", 0.5*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("vf", "has_vf", function(character, strength)
    Utils.SetAffliction(character, "oxygenlow")
end)

Main.AddAfflictionHandler("heart_failure", "has_heart_failure", function(character, strength)
    Utils.SetAffliction(character, "oxygenlow")
end)

Main.AddAfflictionHandler("hypoxia", "has_hypoxia", function(character, strength)
    Utils.SetAffliction(character, "neurotrauma", 0.5, nil, true)
end)

Main.AddAfflictionHandler("neurotrauma", "has_neurotrauma", function(character, strength)
    local braindamage_strength = Utils.GetAffliction(character, "neurotrauma")

    if(braindamage_strength == 200) then
        character.Kill(CauseOfDeathType.Unknown)
    end
end)
