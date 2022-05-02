Hook.Add("human.CPRSuccess", "AM.CPRSuccess", function(animcontroller)
    if animcontroller==nil or animcontroller.Character==nil or animcontroller.Character.SelectedCharacter==nil then return end
    local character = animcontroller.Character.SelectedCharacter
    
    Utils.AddAffliction(character,"cpr_buff",2)
end)

Hook.Add("human.CPRFailed", "AM.CPRFailed", function(animcontroller)
    if animcontroller==nil or animcontroller.Character==nil or animcontroller.Character.SelectedCharacter==nil then return end
    local character = animcontroller.Character.SelectedCharacter
    
    Utils.AddAffliction(character,"cpr_buff",1)
    Utils.AddAfflictionLimb(character,"blunttrauma",LimbType.Torso,0.3)
    if(Utils.Chance(0.01)) then
        Utils.AddAffliction(character,"t_fracture",1)
    end
end)