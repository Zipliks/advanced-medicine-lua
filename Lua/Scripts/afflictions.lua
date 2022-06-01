
--[[

nil означает, что SetAffliction будет наложен на Torso

Main.AddAfflictionHandler("blunttrauma", "AM.test", function(character, strength)
    blunttrauma = Utils.GetAffliction(character, "blunttrauma")
    if blunttrauma >= 50 then
        Utils.SetAffliction(character, "oxygenlow", 20*DELTA_TIME, nil, true)
    end
end) 
--]]

-- STUB: CPR
Main.AddAfflictionHandler("cpr_buff", "has_cpr", function(character, strength)
    Utils.SetAffliction(character, "oxygenlow", -10, nil, true)
end)

-- STUB: Bite Wounds
Main.AddAfflictionHandler("bitewounds", "has_bitewounds", function(character, strength)

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

end)

-- STUB: Bleeding
Main.AddAfflictionHandler("bleeding", "has_bleeding", function(character, strength)

end)

-- STUB: Bleeding (Nonstop)
Main.AddAfflictionHandler("bleedingnonstop", "has_bleedingnonstop", function(character, strength)

end)