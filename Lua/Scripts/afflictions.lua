
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
    local bloodloss_strength = Utils.GetAffliction(character, "bloodloss")
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    
    if(bloodloss_strength >= 100) and (oxygen_saturation_strength >= 2) then
        Utils.SetAffliction(character, "oxygen_saturation", bloodloss_strength*-0.001*DELTA_TIME, LimbType.Torso, true)
    end

    if(bloodpressure_strength >= 80) and (bloodloss_strength >= 25) and (bloodloss_strength <= 65) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*-0.0001*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 60) and (bloodloss_strength >= 65) and (bloodloss_strength <= 135) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*-0.0001*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 2) and (bloodloss_strength >= 135) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*-0.0001*DELTA_TIME, LimbType.Torso, true)
    end
end)

-- STUB: Blood Pressure
Main.AddAfflictionHandler("bloodpressure", "has_bloodpressure", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    
    if(bloodpressure_strength >= 100) then
        Utils.SetAffliction(character, "bloodpressure", -0.3*DELTA_TIME, LimbType.Head, true)

    elseif(bloodpressure_strength <= 70) then
        Utils.SetAffliction(character, "heart_failure", (1+bloodpressure_strength)^-1*DELTA_TIME, LimbType.Torso, true)
    
    elseif(bloodpressure_strength <= 100) then
        Utils.SetAffliction(character, "bloodpressure", 0.3*DELTA_TIME, LimbType.Head, true)
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
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    
    if(oxygenlow_strength >= 50 and oxygen_saturation_strength >= 2) then
        Utils.SetAffliction(character, "oxygen_saturation", -0.03*DELTA_TIME, LimbType.Torso, true)
    end
    if(oxygenlow_strength <= 50) then
        Utils.SetAffliction(character, "oxygen_saturation", oxygenlow_strength*0.003*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("oxygen_saturation", "has_oxygen_saturation", function(character, strength)
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    
    if(oxygen_saturation_strength <= 90) then
        Utils.SetAffliction(character, "hypoxia", oxygen_saturation_strength^-2*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "heart_failure", oxygen_saturation_strength^-2*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("heart_failure", "has_heart_failure", function(character, strength) --Hnappinn: Heart issue
    local heart_failure_strength = Utils.GetAffliction(character, "heart_failure")
    local ventricular_fib_strength = Utils.GetAffliction(character, "ventricular_fib")
    
    if(heart_failure_strength >= 15 and heart_failure_strength <= 40 and ventricular_fib_strength >= 1) then
        Utils.SetAffliction(character, "ventricular_tachy", 10*DELTA_TIME, LimbType.Torso, true)
    end
    
    if(heart_failure_strength >= 40 and heart_failure_strength <= 125) then
        Utils.SetAffliction(character, "ventricular_fib", 10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "asys", -10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "ventricular_tachy", -10*DELTA_TIME, LimbType.Torso, true)
    end
    
    if(heart_failure_strength >= 125 and heart_failure_strength <= 200) then
        Utils.SetAffliction(character, "asys", 10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "ventricular_fib", -10*DELTA_TIME, LimbType.Torso, true)
    end
end)

Main.AddAfflictionHandler("ventricular_tachy", "has_ventricular_tachy", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.01*DELTA_TIME, LimbType.Torso, true)
    Utils.SetAffliction(character, "heart_failure", 0.085*DELTA_TIME, LimbType.Torso, true)
end)

Main.AddAfflictionHandler("ventricular_fib", "has_ventricular_fib", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.03*DELTA_TIME, LimbType.Torso, true)
    Utils.SetAffliction(character, "heart_failure", 0.1*DELTA_TIME, LimbType.Torso, true)
end)

Main.AddAfflictionHandler("asys", "has_asys", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.03*DELTA_TIME, LimbType.Torso, true)
end)

Main.AddAfflictionHandler("hypoxia", "has_hypoxia", function(character, strength)
    Utils.SetAffliction(character, "neurotrauma", 0.5, nil, true)
end)

Main.AddAfflictionHandler("neurotrauma", "has_neurotrauma", function(character, strength)
    local braindamage_strength = Utils.GetAffliction(character, "neurotrauma")

    if(braindamage_strength == 200) then
        character.Kill()
    end
end)
