
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

-- cause foreign bodies, rib fractures, pneumothorax, tamponade, internal bleeding, fractures, cerebralhypoxia
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

-- cause rib fractures, organ damage, pneumothorax, concussion, fractures, cerebralhypoxia
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
            Utils.AddAfflictionLimb(character,"cerebralhypoxia",limbtype,strength*Utils.RandomRange(0.1,0.4)) end
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
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "dislocation1"
    limbtoaffliction[LimbType.LeftLeg] = "dislocation2"
    limbtoaffliction[LimbType.RightArm] = "dislocation3"
    limbtoaffliction[LimbType.LeftArm] = "dislocation4"
    if limbtoaffliction[limbtype] == nil then return end
    Utils.AddAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,1)
end

function Main.BreakLimb(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "rl_fracture"
    limbtoaffliction[LimbType.LeftLeg] = "ll_fracture"
    limbtoaffliction[LimbType.RightArm] = "ra_fracture"
    limbtoaffliction[LimbType.LeftArm] = "la_fracture"
    if limbtoaffliction[limbtype] == nil then return end
    Utils.AddAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,5)
end

function Main.TraumamputateLimb(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "gate_ta_rl"
    limbtoaffliction[LimbType.LeftLeg] = "gate_ta_ll"
    limbtoaffliction[LimbType.RightArm] = "gate_ta_ra"
    limbtoaffliction[LimbType.LeftArm] = "gate_ta_la"
    if limbtoaffliction[limbtype] == nil then return end
    Utils.AddAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,10)
end

function Main.TraumamputateLimbMinusItem(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "gate_ta_rl_2"
    limbtoaffliction[LimbType.LeftLeg] = "gate_ta_ll_2"
    limbtoaffliction[LimbType.RightArm] = "gate_ta_ra_2"
    limbtoaffliction[LimbType.LeftArm] = "gate_ta_la_2"
    if limbtoaffliction[limbtype] == nil then return end
    Utils.AddAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,10)
end


function Main.LimbIsDislocated(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "dislocation1"
    limbtoaffliction[LimbType.LeftLeg] = "dislocation2"
    limbtoaffliction[LimbType.RightArm] = "dislocation3"
    limbtoaffliction[LimbType.LeftArm] = "dislocation4"
    if limbtoaffliction[limbtype] == nil then return false end
    return Utils.HasAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,1)
end

function Main.LimbIsBroken(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "rl_fracture"
    limbtoaffliction[LimbType.LeftLeg] = "ll_fracture"
    limbtoaffliction[LimbType.RightArm] = "ra_fracture"
    limbtoaffliction[LimbType.LeftArm] = "la_fracture"
    if limbtoaffliction[limbtype] == nil then return false end
    return Utils.HasAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,1)
end

function Main.LimbIsAmputated(character,limbtype)
    return 
        Main.LimbIsTraumaticallyAmputated(character,limbtype) or
        Main.LimbIsSurgicallyAmputated(character,limbtype)
end

function Main.LimbIsTraumaticallyAmputated(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "trl_amputation"
    limbtoaffliction[LimbType.LeftLeg] = "tll_amputation"
    limbtoaffliction[LimbType.RightArm] = "tra_amputation"
    limbtoaffliction[LimbType.LeftArm] = "tla_amputation"
    if limbtoaffliction[limbtype] == nil then return false end
    return Utils.HasAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,0.1)
end

function Main.LimbIsSurgicallyAmputated(character,limbtype)
    local limbtoaffliction = {}
    limbtoaffliction[LimbType.RightLeg] = "srl_amputation"
    limbtoaffliction[LimbType.LeftLeg] = "sll_amputation"
    limbtoaffliction[LimbType.RightArm] = "sra_amputation"
    limbtoaffliction[LimbType.LeftArm] = "sla_amputation"
    if limbtoaffliction[limbtype] == nil then return false end
    return Utils.HasAfflictionLimb(character,limbtoaffliction[limbtype],limbtype,0.1)
end