Hook.Add("human.CPRSuccess", "AM.CPRSuccess", function(animcontroller)
    if animcontroller==nil or animcontroller.Character==nil or animcontroller.Character.SelectedCharacter==nil then return end
    local character = animcontroller.Character.SelectedCharacter
    
    HF.AddAffliction(character,"cpr_buff",2)
end)

Hook.Add("human.CPRFailed", "AM.CPRFailed", function(animcontroller)
    if animcontroller==nil or animcontroller.Character==nil or animcontroller.Character.SelectedCharacter==nil then return end
    local character = animcontroller.Character.SelectedCharacter
    
    HF.AddAfflictionLimb(character,LimbType.Torso)
    if(HF.Chance(0.01*)) then
        HF.AddAffliction(character,"t_fracture",1)
    if(HF.Chance(0.001)) then
        HF.AddAffliction(character,"pneumothorax",1)
    end
end)