print("ondamage")
Hook.Add("character.applyDamage", "AM.ondamaged", function (characterHealth, attackResult, hitLimb)
    
    if -- invalid attack data, don't do anything
        characterHealth == nil or 
        characterHealth.Character == nil or 
        characterHealth.Character.IsDead or 
        not characterHealth.Character.IsHuman or 
        attackResult == nil or 
        attackResult.Afflictions == nil or
        #attackResult.Afflictions <= 0 or
        hitLimb == nil
    then return end
    
    local identifier = ""
    local methodtorun = nil
    for index, value in ipairs(attackResult.Afflictions) do
        -- execute fitting method, if available
        identifier = value.Prefab.Identifier.Value
        methodtorun = Main.OnDamagedMethods[identifier]
        if methodtorun ~= nil then 
            methodtorun(characterHealth.Character,value.Strength,hitLimb.type)
        end
    end

    -- ntc
    -- ondamaged hooks
    for key, val in pairs(NTC.OnDamagedHooks) do
        val(characterHealth, attackResult, hitLimb)
    end
end)

Main.OnDamagedMethods = {}

local function HasLungs(c) return not Utils.HasAffliction(c,"lungremoved") end
local function HasHeart(c) return not Utils.HasAffliction(c,"heartremoved") end

-- cause foreign bodies, rib fractures, pneumothorax, tamponade, internal bleeding, fractures, neurotrauma
Main.OnDamagedMethods.gunshotwound = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    if Utils.Chance(0.75) then
        Utils.AddAfflictionLimb(character,"foreignbody",limbtype,strength/3)
    end

    -- torso specific
    if strength >= 1 and limbtype==LimbType.Torso then
        local hitOrgan = false
        if Utils.Chance(0.3*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end
        if HasLungs(character) and Utils.Chance(0.3*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5)
            Utils.AddAffliction(character,"lungdamage",strength) 
            Utils.AddAffliction(character,"organdamage",strength/4)
            hitOrgan=true
        end
        if HasHeart(character) and hitOrgan == false and strength >= 5 and Utils.Chance(strength/50*NTC.GetMultiplier(character,"tamponadechance")) then
            Utils.AddAfflictionLimb(character,"tamponade",limbtype,5) 
            Utils.AddAffliction(character,"heartdamage",strength)
            Utils.AddAffliction(character,"organdamage",strength/4)
            hitOrgan=true
        end
        if strength >= 5 then
            Utils.AddAfflictionLimb(character,"internalbleeding",limbtype,strength*Utils.RandomRange(0.3,0.6)) end

        -- liver and kidney damage
        if hitOrgan==false and strength >= 2 and Utils.Chance(0.5) then
            Utils.AddAfflictionLimb(character,"organdamage",limbtype,strength/4)
            if Utils.Chance(0.5) then
                Utils.AddAffliction(character,"liverdamage",strength)
            else
                Utils.AddAffliction(character,"kidneydamage",strength)
            end
        end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if Utils.Chance(strength/90*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"cerebralhypoxia",limbtype,strength*Utils.RandomRange(0.1,0.4)) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"s_hematoma",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance(strength/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance(strength/60*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
    end
end

-- cause foreign bodies, rib fractures, pneumothorax, internal bleeding, concussion, fractures
Main.OnDamagedMethods.explosiondamage = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    if Utils.Chance(0.75) then
        Utils.AddAfflictionLimb(character,"foreignbody",limbtype,strength/3)
    end

    -- torso specific
    if strength >= 1 and limbtype==LimbType.Torso then
        if strength >= 10 and Utils.Chance(strength/50*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end
        if HasLungs(character) and strength >= 5 and Utils.Chance(strength/50*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5) end
        if strength >= 5 then
            Utils.AddAfflictionLimb(character,"internalbleeding",limbtype,strength*Utils.RandomRange(0.2,0.5)) end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)) then
            Utils.AddAfflictionLimb(character,"concussion",limbtype,10) end
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"n_fracture",limbtype,5) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"s_hematoma",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"cerebral_edema",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
        if strength >= 25 and Utils.Chance(0.25) then
            Utils.AddAfflictionLimb(character,"gate_ta_h",limbtype,5) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance(strength/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance(strength/60*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
        if Utils.Chance(0.35) and not Main.LimbIsAmputated(character,limbtype) then
            Main.DislocateLimb(character,limbtype) end
    end
end

-- cause rib fractures, pneumothorax, internal bleeding, concussion, fractures
Main.OnDamagedMethods.bitewounds = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    -- torso specific
    if strength >= 1 and limbtype==LimbType.Torso then
        if strength >= 10 and Utils.Chance((strength-10)/50*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end
        if HasLungs(character) and strength >= 5 and Utils.Chance((strength-5)/50*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5) end
        if strength >= 5 then
            Utils.AddAfflictionLimb(character,"internalbleeding",limbtype,strength*Utils.RandomRange(0.2,0.5)) end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)) then
            Utils.AddAfflictionLimb(character,"concussion",limbtype,10) end
        if strength >= 15 and Utils.Chance(math.min((strength-10)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance((strength-5)/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance((strength-5)/60*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
    end
end

-- cause rib fractures, pneumothorax, tamponade, internal bleeding, fractures
Main.OnDamagedMethods.lacerations = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    -- torso specific
    if strength >= 1 and limbtype==LimbType.Torso then
        if strength >= 10 and Utils.Chance((strength-10)/50*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end
        if HasLungs(character) and strength >= 5 and Utils.Chance((strength-5)/50*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5) end
        if HasHeart(character) and strength >= 5 and Utils.Chance((strength-5)/50*NTC.GetMultiplier(character,"tamponadechance")) then
            Utils.AddAfflictionLimb(character,"tamponade",limbtype,5) end
        if strength >= 5 then
            Utils.AddAfflictionLimb(character,"internalbleeding",limbtype,strength*Utils.RandomRange(0.2,0.5)) end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if strength >= 15 and Utils.Chance(math.min((strength-15)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance((strength-5)/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance(strength/60*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
    end
end

-- cause rib fractures, organ damage, pneumothorax, concussion, fractures, s_hematoma
Main.OnDamagedMethods.blunttrauma = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    -- torso
    if strength >= 1 and limbtype==LimbType.Torso then
        if Utils.Chance(strength/50*NTC.GetMultiplier(character,"anyfracturechance")) then
        Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end

        Utils.AddAfflictionLimb(character,"lungdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"heartdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"liverdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"kidneydamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"organdamage",limbtype,strength*Utils.RandomRange(0,1))

        if HasLungs(character) and strength >= 5 and Utils.Chance(strength/50*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5) end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)) then
            Utils.AddAfflictionLimb(character,"concussion",limbtype,10) end
        if strength >= 15 and Utils.Chance(math.min((strength-10)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
        if strength >= 15 and Utils.Chance(math.min((strength-10)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"n_fracture",limbtype,5) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"cerebral_edema",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"s_hematoma",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance((strength-2)/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif strength > 15 and Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance(strength/100*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
        if Utils.Chance(Utils.Clamp(strength/80,0.1,0.5)) and not Main.LimbIsAmputated(character,limbtype) then
            Main.DislocateLimb(character,limbtype) end
    end
end

-- cause rib fractures, organ damage, pneumothorax, concussion, fractures
Main.OnDamagedMethods.internaldamage = function(character,strength,limbtype) 
    limbtype = Utils.NormalizeLimbType(limbtype)

    -- torso
    if strength >= 1 and limbtype==LimbType.Torso then
        if Utils.Chance((strength-5)/50*NTC.GetMultiplier(character,"anyfracturechance")) then
        Utils.AddAfflictionLimb(character,"t_fracture",limbtype,5) end

        Utils.AddAfflictionLimb(character,"lungdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"heartdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"liverdamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"kidneydamage",limbtype,strength*Utils.RandomRange(0,1))
        Utils.AddAfflictionLimb(character,"organdamage",limbtype,strength*Utils.RandomRange(0,1))
    
        if HasLungs(character) and strength >= 5 and Utils.Chance((strength-5)/50*NTC.GetMultiplier(character,"pneumothoraxchance")) then
            Utils.AddAfflictionLimb(character,"pneumothorax",limbtype,5) end
    end

    -- head
    if strength >= 1 and limbtype==LimbType.Head then
        if strength >= 15 and Utils.Chance(math.min(strength/60,0.7)) then
            Utils.AddAfflictionLimb(character,"concussion",limbtype,10) end
        if strength >= 15 and Utils.Chance(math.min((strength-5)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"h_fracture",limbtype,5) end
        if strength >= 15 and Utils.Chance(math.min((strength-5)/60,0.7)*NTC.GetMultiplier(character,"anyfracturechance")) then
            Utils.AddAfflictionLimb(character,"n_fracture",limbtype,5) end
        if strength >= 5 and Utils.Chance(0.7) then
            Utils.AddAfflictionLimb(character,"s_hematoma",limbtype,strength*Utils.RandomRange(0.2,0.6)) end
    end

    -- extremities
    if strength >= 1 and Utils.LimbIsExtremity(limbtype) then
        if not Main.LimbIsBroken(character,limbtype) and Utils.Chance((strength-5)/60*NTC.GetMultiplier(character,"anyfracturechance")) then
            Main.BreakLimb(character,limbtype)
        elseif strength > 10 and Main.LimbIsBroken(character,limbtype) and not Main.LimbIsAmputated(character,limbtype) and Utils.Chance((strength-10)/60*NTC.GetMultiplier(character,"traumamputatechance")) then
            Main.TraumamputateLimb(character,limbtype) end
        if Utils.Chance(0.25) and not Main.LimbIsAmputated(character,limbtype) then
            Main.DislocateLimb(character,limbtype) end
    end
end


function Main.DislocateLimb(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    Utils.AddAfflictionLimb(character,limb_data.dislocation,limbtype,1)
end

function Main.BreakLimb(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    Utils.AddAfflictionLimb(character,limb_data.fracture,limbtype,5)
end

function Main.TraumamputateLimb(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    Utils.AddAfflictionLimb(character,limb_data.t_amputation,limbtype,10)

    Utils.SetAfflictionLimb(character,limb_data.arterial_cut,limbtype,100)
    Utils.SetAfflictionLimb(character,limb_data.fracture,limbtype,100)
    Utils.SetAfflictionLimb(character,"severepain",limbtype,100)

    -- Спавн оторванной конечности
    local prefab = ItemPrefab.GetItemPrefab(limb_data.item)
    Entity.Spawner.AddItemToSpawnQueue(prefab, character.WorldPosition, nil, nil, nil)

end

function Main.TraumamputateLimbMinusItem(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    Utils.AddAfflictionLimb(character,limb_data.t_amputation,limbtype,10)

    Utils.SetAfflictionLimb(character,limb_data.arterial_cut,limbtype,100)
    Utils.SetAfflictionLimb(character,limb_data.fracture,limbtype,100)
    Utils.SetAfflictionLimb(character,"severepain",limbtype,100)
end


function Main.LimbIsDislocated(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    return Utils.HasAfflictionLimb(character,limb_data.dislocation,limbtype,1)
end

function Main.LimbIsBroken(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    return Utils.HasAfflictionLimb(character,limb_data.fracture,limbtype,1)
end

function Main.LimbIsAmputated(character,limbtype)
    return 
        Main.LimbIsTraumaticallyAmputated(character,limbtype) or
        Main.LimbIsSurgicallyAmputated(character,limbtype)
end

function Main.LimbIsTraumaticallyAmputated(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    return Utils.HasAfflictionLimb(character,limb_data.t_amputation,limbtype,0.1)
end

function Main.LimbIsSurgicallyAmputated(character,limbtype)
    local limb_data = Utils.LIMB_DATA[limbtype]
    if limb_data == nil then return end
    return Utils.HasAfflictionLimb(character,limb_data.s_amputation,limbtype,0.1)
end