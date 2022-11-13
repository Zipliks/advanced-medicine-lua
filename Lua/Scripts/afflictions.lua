---@diagnostic disable: undefined-global


-- //SECTION - Bite Wounds
Main.AddAfflictionHandler("bitewounds", "has_bitewounds", function(character, strength)
    Utils.SetAffliction(character, "bloodloss", 1*DELTA_TIME, nil, true)
end)
-- //!SECTION

-- STUB: Lacerations
Main.AddAfflictionHandler("lacerations", "has_lacerations", function(character, strength)

end)

-- STUB: Organ Damage
Main.AddAfflictionHandler("organdamage", "has_organdamage", function(character, strength)

end)

-- STUB: Acid Burn (Burn)
Main.AddAfflictionHandler("acidburn", "has_acidburn", function(character, strength)

end)

-- //SECTION: Burn
Main.AddAfflictionHandler("burn", "has_burn", function(character, strength)

end)
--//!SECTION

-- //SECTION - Bloodloss
Main.AddAfflictionHandler("bloodloss", "has_bloodloss", function(character, strength)
    local bloodloss_strength = Utils.GetAffliction(character, "bloodloss")
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    
    if(bloodloss_strength >= 125) and (oxygen_saturation_strength >= 2) then
        Utils.SetAffliction(character, "oxygen_saturation", bloodloss_strength*-0.001*DELTA_TIME, LimbType.Torso, true)
    end

    if(bloodpressure_strength >= 80) and (bloodloss_strength >= 25) and (bloodloss_strength <= 65) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*REDUCE_PRESSURE*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 60) and (bloodloss_strength > 65) and (bloodloss_strength <= 135) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*REDUCE_PRESSURE*DELTA_TIME, LimbType.Torso, true)
    end

    if(bloodpressure_strength >= 2) and (bloodloss_strength >= 135) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*bloodloss_strength*REDUCE_PRESSURE*DELTA_TIME, LimbType.Torso, true)
    end
end)
--//!SECTION

-- //SECTION: Blood Pressure
Main.AddAfflictionHandler("bloodpressure", "has_bloodpressure", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local respiratoryfailure_strength = Utils.GetAffliction(character, "respiratoryfailure")
    
    if(bloodpressure_strength >= 100) then
        Utils.SetAffliction(character, "bloodpressure", -0.3*DELTA_TIME, LimbType.Head, true)
    elseif(bloodpressure_strength <= 70) then
        Utils.SetAffliction(character, "heart_failure", (1+bloodpressure_strength)^-0.5*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength <= 100) then
        Utils.SetAffliction(character, "bloodpressure", 0.3*DELTA_TIME, LimbType.Head, true)
    end

    if(bloodpressure_strength <= 100) and (ventricular_fib_strength == 0 and ventricular_tachy == 0 and asystole == 0) then
        Utils.SetAffliction(character, "bloodpressure", 1*DELTA_TIME, LimbType.Head, true)
    end

    if(bloodpressure_strength <= 90) and (respiratoryfailure_strength <= 45) then
            Utils.SetAffliction(character, "respiratoryfailure", 1*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength <= 60) and (respiratoryfailure_strength <= 70) then
            Utils.SetAffliction(character, "respiratoryfailure", 1*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength <= 40) and (respiratoryfailure_strength <= 100) then
            Utils.SetAffliction(character, "respiratoryfailure", 1*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- STUB: Bleeding
Main.AddAfflictionHandler("bleeding", "has_bleeding", function(character, strength)

end)

-- STUB: Bleeding (Nonstop)
Main.AddAfflictionHandler("bleedingnonstop", "has_bleedingnonstop", function(character, strength)

end)

-- //SECTION - Oxygenlow
Main.AddAfflictionHandler("oxygenlow", "has_oxygenlow", function(character, strength)
    local oxygenlow_strength = Utils.GetAffliction(character, "oxygenlow")
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    
    if(oxygenlow_strength >= 100 and oxygen_saturation_strength >= 2) then
        Utils.SetAffliction(character, "oxygen_saturation", oxygen_saturation_strength*oxygenlow_strength*REDUCE_PRESSURE*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- //SECTION - Oxygen Saturation
Main.AddAfflictionHandler("oxygen_saturation", "has_oxygen_saturation", function(character, strength)
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local oxygenlow_strength = Utils.GetAffliction(character, "oxygenlow")
    local respiratoryfailure_strength = Utils.GetAffliction(character, "respiratoryfailure")
    
    if(oxygen_saturation_strength <= 90) then
        Utils.SetAffliction(character, "hypoxia", oxygen_saturation_strength^-0.5*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "heart_failure", oxygen_saturation_strength^-1*DELTA_TIME, LimbType.Torso, true)
    end
    
    if(oxygen_saturation_strength >= 95 and bloodpressure_strength >= 90) then
        Utils.SetAffliction(character, "hypoxia", -0.5*DELTA_TIME, LimbType.Torso, true)
    end

    if(oxygenlow_strength <= 20 and respiratoryfailure_strength == 0) then
        Utils.SetAffliction(character, "oxygen_saturation", 0.3*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- //SECTION - Heart Failure
Main.AddAfflictionHandler("heart_failure", "has_heart_failure", function(character, strength) --Hnappinn: Heart issue
    local heart_failure_strength = Utils.GetAffliction(character, "heart_failure")
    local ventricular_fib_strength = Utils.GetAffliction(character, "ventricular_fib")
    local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    
    if(oxygen_saturation_strength >= 95 and bloodpressure_strength >= 90) then
        Utils.SetAffliction(character, "heart_failure", -0.3*DELTA_TIME, LimbType.Torso, true)
    end
    
    if(heart_failure_strength >= 15 and heart_failure_strength <= 40 and ventricular_fib_strength <= 1) then
        Utils.SetAffliction(character, "ventricular_tachy", 10*DELTA_TIME, LimbType.Torso, true)
    elseif(heart_failure_strength >= 40 and heart_failure_strength <= 125) then
        Utils.SetAffliction(character, "ventricular_fib", 10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "asystole", -10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "ventricular_tachy", -10*DELTA_TIME, LimbType.Torso, true)
    elseif(heart_failure_strength >= 125 and heart_failure_strength <= 200) then
        Utils.SetAffliction(character, "asystole", 10*DELTA_TIME, LimbType.Torso, true)
        Utils.SetAffliction(character, "ventricular_fib", -10*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- //SECTION - Ventricular Tachycardia
Main.AddAfflictionHandler("ventricular_tachy", "has_ventricular_tachy", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    if(bloodpressure_strength >= 2) then
        Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.01*DELTA_TIME, LimbType.Torso, true)
    end

    Utils.SetAffliction(character, "heart_failure", 0.03*DELTA_TIME, LimbType.Torso, true)
end)
-- //!SECTION

-- //SECTION - Ventricular Fibrillation
Main.AddAfflictionHandler("ventricular_fib", "has_ventricular_fib", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    if(bloodpressure_strength >= 2) then
        Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.03*DELTA_TIME, LimbType.Torso, true)
    end

    Utils.SetAffliction(character, "heart_failure", 0.075*DELTA_TIME, LimbType.Torso, true)
end)
-- //!SECTION

-- //SECTION - asystole
Main.AddAfflictionHandler("asystole", "has_asystole", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")

    if(bloodpressure_strength >= 2) then
        Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.03*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- //SECTION - Hypoxia
Main.AddAfflictionHandler("hypoxia", "has_hypoxia", function(character, strength)
    local hypoxia_strength = Utils.GetAffliction(character, "hypoxia")

    if(hypoxia_strength >= 2) then
        Utils.SetAffliction(character, "stun", 5, nil, true)
	end
    if(hypoxia_strength >= 20) then
        Utils.SetAffliction(character, "neurotrauma", 0.5, nil, true)
        Utils.SetAffliction(character, "respiratoryarrest", 1, nil, true)
    end
end)
-- //!SECTION

-- //SECTION - Neurotrauma
Main.AddAfflictionHandler("neurotrauma", "has_neurotrauma", function(character, strength)
    local braindamage_strength = Utils.GetAffliction(character, "neurotrauma")

    if(braindamage_strength == 200) then
        character.Kill(CauseOfDeathType.Unknown)
    end
end)
-- //!SECTION

-- //SECTION - Respiratory arrest
Main.AddAfflictionHandler("respiratoryarrest", "has_respiratoryarrest", function(character, strength)
    local hypoxia_strength = Utils.GetAffliction(character, "hypoxia")

    if(hypoxia_strength <= 10) then
        Utils.SetAffliction(character, "respiratoryarrest", -2, nil, true)
    end

    Utils.SetAffliction(character, "oxygenlow", 22, nil, true)

end)
-- //!SECTION

-- //SECTION - Respiratory Failure
Main.AddAfflictionHandler("respiratoryfailure", "has_respiratoryfailure", function(character, strength)
	local respiratoryfailure_strength = Utils.GetAffliction(character, "respiratoryfailure")
	local oxygen_saturation_strength = Utils.GetAffliction(character, "oxygen_saturation")
	local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")


    if(respiratoryfailure_strength >= 25 and oxygen_saturation_strength >= 90) then
        Utils.SetAffliction(character, "oxygen_saturation", -0.4, nil, true)
    elseif(respiratoryfailure_strength >= 60 and oxygen_saturation_strength >= 60) then
        Utils.SetAffliction(character, "oxygen_saturation", -0.5, nil, true)
    elseif(respiratoryfailure_strength >= 85 and oxygen_saturation_strength >= 2) then
        Utils.SetAffliction(character, "oxygen_saturation", oxygen_saturation_strength*-0.5, nil, true)
    end

    if(bloodpressure_strength >= 90) then
            Utils.SetAffliction(character, "respiratoryfailure", -1*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 60) and (respiratoryfailure_strength >= 45) then
            Utils.SetAffliction(character, "respiratoryfailure", -1*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 40) and (respiratoryfailure_strength >= 70) then
            Utils.SetAffliction(character, "respiratoryfailure", -1*DELTA_TIME, LimbType.Torso, true)
    end
end)
-- //!SECTION

-- //SECTION - Cardiac tamponade
Main.AddAfflictionHandler("tamponade", "has_tamponade", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local tamponade_strength = Utils.GetAffliction(character, "tamponade")

    if(bloodpressure_strength >= 90) and (tamponade_strength >= 20 and tamponade_strength <= 45) then
            Utils.SetAffliction(character, "bloodpressure", -0.3*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 70) and (tamponade_strength >= 45 and tamponade_strength <= 80) then
            Utils.SetAffliction(character, "bloodpressure", -0.5*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 20) and (tamponade_strength >= 80) then
            Utils.SetAffliction(character, "bloodpressure", bloodpressure_strength*-0.1*DELTA_TIME, LimbType.Torso, true)
    end
    Utils.SetAffliction(character, "tamponade", 0.25*DELTA_TIME, nil, true)
end)
-- //!SECTION

-- //SECTION - Internal Bleeding
Main.AddAfflictionHandler("internalbleeding", "has_internalbleeding", function(character, strength)
    local internalbleeding_strength = Utils.GetAffliction(character, "internalbleeding")

    if(internalbleeding_strength >= 0 and internalbleeding_strength <= 30) then
            Utils.SetAffliction(character, "bloodloss", 0.15*DELTA_TIME, LimbType.Torso, true)
    elseif(internalbleeding_strength >= 30 and internalbleeding_strength <= 60) then
            Utils.SetAffliction(character, "bloodloss", 0.3*DELTA_TIME, LimbType.Torso, true)
    elseif(internalbleeding_strength >= 60) then
            Utils.SetAffliction(character, "bloodloss", 0.5*DELTA_TIME, LimbType.Torso, true)
            Utils.SetAffliction(character, "sym_hematemesis", 2*DELTA_TIME, nil, true)
    end
    if(internalbleeding_strength <= 30) then
        Utils.SetAffliction(character, "sym_hematemesis", 0, nil, false)
    end
    Utils.SetAffliction(character, "internalbleeding", 0.2*DELTA_TIME, nil, true)
end)
-- //!SECTION

-- //SECTION - Pneumothorax
Main.AddAfflictionHandler("pneumothorax", "has_pneumothorax", function(character, strength)
    local bloodpressure_strength = Utils.GetAffliction(character, "bloodpressure")
    local pneumothorax_strength = Utils.GetAffliction(character, "pneumothorax")
    if(bloodpressure_strength >= 90) and (pneumothorax_strength >= 20 and pneumothorax_strength <= 45) then
            Utils.SetAffliction(character, "bloodpressure", -0.3*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 70) and (pneumothorax_strength >= 45 and pneumothorax_strength <= 80) then
            Utils.SetAffliction(character, "bloodpressure", -0.45*DELTA_TIME, LimbType.Torso, true)
    elseif(bloodpressure_strength >= 20) and (pneumothorax_strength >= 80) then
            Utils.SetAffliction(character, "bloodpressure", -0.5*DELTA_TIME, LimbType.Torso, true)
    end

    if(pneumothorax_strength >= 20 and pneumothorax_strength <= 80) then
            Utils.SetAffliction(character, "oxygenlow", 8, nil, true)
    elseif(pneumothorax_strength >= 80) then
            Utils.SetAffliction(character, "oxygenlow", 22, nil, true)
    end

    if(pneumothorax_strength <= 5) then
        Utils.SetAffliction(character, "sym_cough", 0, nil, false)
    else
        Utils.SetAffliction(character, "sym_cough", 2*DELTA_TIME, nil, false)
    end
    Utils.SetAffliction(character, "pneumothorax", 0.2*DELTA_TIME, nil, true)
end)
-- //!SECTION
