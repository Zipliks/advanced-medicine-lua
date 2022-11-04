local damage_handlers = {}

--[[ 
Main.AddDamageHandler
"Добавляет обработчик урона"
* id = Айди аффликшена
* func - Функция, привязанная к аффликшену
* Аргументы func: Character, Affliction, Strength, Limb, AttackResult 
]]
function Main.AddDamageHandler(id, func)
    if id == nil or func == nil then 
        Utils.ThrowError("Bad argument",1)
    end
    damage_handlers[id] = func
    print("INIT: Damage Handler for "..id.." initialized ")
end

--[[
Методы при уроне
* Ниже идут методы, выполняющиеся при определённом уроне
* На данный момент они тестовые
]]
-- Этот код исполняется при получении стана
Main.AddDamageHandler("stun", function(character, id, strength, limb, attackResult)
    print("Stun: "..strength)

    -- Добавить ещё 2 секунды стана при ударе по голове
    if limb == LimbType.Head then
        Utils.SetAffliction(character, "stun", 2, nil, true)
        print("Bonk!")
    end
end)

-- Этот код исполняется при получении тупых травм
Main.AddDamageHandler("blunttrauma", function(character, strength, limb, attackResult)
        print("blunttrauma: "..strength)
        head_bonk = Utils.GetAfflictionLimb(character, "blunttrauma", LimbType.Head)
        chance = head_bonk * 3 - 50
        --print("Chance: " .. chance)
        
        if(chance <= 0) then
            return
        end

        if limb == LimbType.Head and Utils.Probability(chance) then
            Utils.SetAfflictionTime(character, "stun", 3, LimbType.Head, true, 3)
        
        if limb == LimbType.Torso then
            if  strength >= 5 and Utils.Probability(30) then
                Utils.SetAffliction(character, "fracture", 5, LimbType.Head, true)
            end
            if  strength >= 5 and Utils.Probability(30) then
                Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
            end
        end
        
        if limb == LimbType.Head then
            if  strength >= 5 and Utils.Probability(30) then
                Utils.SetAffliction(character, "fracture", 5, limb, true)
            end
            
            if  Utils.GetAfflictionLimb(character, "fracture", limb) == 0 and strength >= 5 and Utils.Probability(15) then
                Utils.SetAffliction(character, "fracture_Neck", 100, limb, true)
            end
            if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
            end
        end
        if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
            limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
            
            if strength >= 5 and Utils.Probability(30) then
                Utils.SetAffliction(character, "fracture", 5, limb, true)
            end
            if strength >= 1 and Utils.Probability(25) then
                Utils.SetAffliction(character, "dislocation", 5, limb, true)
            end
            if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
                Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
                strength >= 5 and Utils.Probability(35) then
                    Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
            end

        end

        if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
            limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

            if strength >= 5 and Utils.Probability(20) then
                Utils.SetAffliction(character, "fracture", 5, limb, true)
            end
            if strength >= 1 and Utils.Probability(25) then
                Utils.SetAffliction(character, "dislocation", 5, limb, true)
            end
            if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
                Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
                strength >= 5 and Utils.Probability(35) then
                    Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
            end
        end
    end
end)

Main.AddDamageHandler("internaldamage", function(character, strength, limb, attackResult)
    print("internaldamage: "..strength)    
    if(chance <= 0) then
        return
    end

    if limb == LimbType.Torso then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, LimbType.Head, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
        end
    end
    
    if limb == LimbType.Head then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        
        if  Utils.GetAfflictionLimb(character, "fracture", limb) == 0 and strength >= 5 and Utils.Probability(15) then
            Utils.SetAffliction(character, "fracture_Neck", 100, limb, true)
        end
        if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end
    
    if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
    limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
        if strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if strength >= 1 and Utils.Probability(25) then
            Utils.SetAffliction(character, "dislocation", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end
    if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
        limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

        if strength >= 5 and Utils.Probability(20) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if strength >= 1 and Utils.Probability(25) then
            Utils.SetAffliction(character, "dislocation", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end
    
end)

Main.AddDamageHandler("gunshotwound", function(character, strength, limb, attackResult)
    print("gunshotwound: "..strength)
    head_bonk = Utils.GetAfflictionLimb(character, "blunttrauma", LimbType.Head)
    chance = head_bonk * 3 - 50
    --print("Chance: " .. chance)
    
    if(chance <= 0) then
        return
    end


    if strength >= 1 and Utils.Probability(75) then
        Utils.SetAffliction(character, "foreignbody", 5, limb, true)
    end


    if limb == LimbType.Torso then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "tamponade", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end

    if limb == LimbType.Waist then
        if  strength >= 5 and Utils.Probability(40) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end
    
    if limb == LimbType.Head then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end


    if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
    limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
    
    if strength >= 5 and Utils.Probability(30) then
        Utils.SetAffliction(character, "fracture", 5, limb, true)
    end
    if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
        Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
        strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
    end

end

if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
    limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

    if strength >= 1 and Utils.Probability(20) then
        Utils.SetAffliction(character, "fracture", 5, limb, true)
    end
    if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
        Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
        strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
    end
end
    
end)

Main.AddDamageHandler("lacerations", function(character, strength, limb, attackResult)
    print("lacerations: "..strength)    
    if(chance <= 0) then
        return
    end

    if limb == LimbType.Torso then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "tamponade", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end
    
    if limb == LimbType.Head then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if limb == LimbType.Waist then
        if  strength >= 5 and Utils.Probability(40) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end

    if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
    limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
        if strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
        limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

        if strength >= 1 and Utils.Probability(20) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

end)

Main.AddDamageHandler("bitewounds", function(character, strength, limb, attackResult)
    print("bitewounds: "..strength)    
    if(chance <= 0) then
        return
    end

    if limb == LimbType.Torso then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end
    
    if limb == LimbType.Head then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if limb == LimbType.Waist then
        if  strength >= 5 and Utils.Probability(40) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end

    if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
    limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
        if strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
        limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

        if strength >= 1 and Utils.Probability(20) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end
end)

Main.AddDamageHandler("explosiondamage", function(character, strength, limb, attackResult)
    print("explosiondamage: "..strength)    
    if(chance <= 0) then
        return
    end

    if strength >= 1 and Utils.Probability(75) then
        Utils.SetAffliction(character, "foreignbody", 5, limb, true)
    end

    if limb == LimbType.Torso then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "pneumothorax", 5, limb, true)
        end
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end
    
    if limb == LimbType.Head then
        if  strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if  Utils.GetAfflictionLimb(character, "fracture", limb) == 0 and strength >= 5 and Utils.Probability(15) then
            Utils.SetAffliction(character, "fracture_Neck", 100, limb, true)
        end
        if (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 or Utils.GetAfflictionLimb(character, "fracture_Neck", limb) > 0) and strength >= 5 and Utils.Probability(35) then
            Utils.SetAffliction(character, "weirdthing25", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if limb == LimbType.Waist then
        if  strength >= 5 and Utils.Probability(40) then
            Utils.SetAffliction(character, "internalbleeding", 5, limb, true)
        end
    end

    if  limb == LimbType.RightArm or limb == LimbType.RightHand or limb == LimbType.RightForearm or 
    limb == LimbType.LeftArm or limb == LimbType.LeftHand or limb == LimbType.LeftForearm then
        if strength >= 5 and Utils.Probability(30) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if strength >= 1 and Utils.Probability(35) then
            Utils.SetAffliction(character, "dislocation", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end

        if  Utils.GetAfflictionLimb(character, "amputation", limb) == 0 and 
            strength >= 10 and Utils.Probability(25) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end

    if  limb == LimbType.RightThigh or limb == LimbType.RightLeg or limb == LimbType.RightFoot or 
        limb == LimbType.LeftThigh or limb == LimbType.LeftLeg or limb == LimbType.LeftFoot then

        if strength >= 1 and Utils.Probability(20) then
            Utils.SetAffliction(character, "fracture", 5, limb, true)
        end
        if strength >= 1 and Utils.Probability(35) then
            Utils.SetAffliction(character, "dislocation", 5, limb, true)
        end
        if  (Utils.GetAfflictionLimb(character, "fracture", limb) > 0 and 
            Utils.GetAfflictionLimb(character, "amputation", limb) == 0) and 
            strength >= 5 and Utils.Probability(35) then
                Utils.SetAffliction(character, "weirdthing21", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
        if  Utils.GetAfflictionLimb(character, "amputation", limb) == 0 and 
            strength >= 10 and Utils.Probability(25) then
                Utils.SetAffliction(character, "weirdthing24", 100, limb, true) -- TO DO: Не знаю что такое WeirdThing, сменить на нужное
        end
    end
    
end)

Hook.Add("character.applyDamage", "AM.ondamaged", function(characterHealth, attackResult, hitLimb)
    if not characterHealth.Character.IsHuman and not characterHealth.Character.IsDead then return end
    -- Все операции должны происходить только с людьми

    for _, aff in ipairs(attackResult.Afflictions) do
        local id = aff.Prefab.Identifier.Value
        local strength = aff.Strength
        local method = damage_handlers[id]

        --print(index..". "..id..": "..strength) -- Выводит все полученные аффликшены в консоль

        if method ~= nil then
            method(characterHealth.Character,strength,hitLimb.type,attackResult)
        end
    end
end)
