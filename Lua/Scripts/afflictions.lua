
-- nil означает, что SetAffliction будет наложен на Torso
Main.AddAfflictionHandler("blunttrauma", "AM.test", function(character, strength)
    blunttrauma = Utils.GetAffliction(character, "blunttrauma")
    if blunttrauma >= 50 then
        Utils.SetAffliction(character, "oxygenlow", 20*DELTA_TIME, nil, true)
    end
end)