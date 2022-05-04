
AM.UpdateCooldown = 0
AM.UpdateInterval = 120
AM.Deltatime = AM.UpdateInterval/60 -- Time in seconds that transpires between updates

Hook.Add("think", "AM.update", function()
    if Utils.GameIsPaused() then return end

    AM.UpdateCooldown = AM.UpdateCooldown-1
    if (AM.UpdateCooldown <= 0) then
        AM.UpdateCooldown = AM.UpdateInterval
        AM.Update()
    end

    AM.TickUpdate()
end)

-- gets run once every two seconds
function AM.Update()

    local updateHumans = {}
    local amountHumans = 0

    -- fetchcharacters to update
    for key, character in pairs(Character.CharacterList) do
        if (character.IsHuman and not character.IsDead) then
            table.insert(updateHumans, character)
            amountHumans = amountHumans + 1
        end
    end

    -- we spread the characters out over the duration of an update so that the load isnt done all at once
    for key, value in pairs(updateHumans) do
        -- make sure theyre still alive and human
        if (value.IsHuman and not value.IsDead) then
            Timer.Wait(function ()
                AM.UpdateHuman(value)
            end, ((key + 1) / amountHumans) * AM.Deltatime * 1000)
        end
    end
end

-- some local functions to avoid code duplicates
local function limbLockedInitial(c,limbtype,key)
    return not NTC.GetSymptomFalse(c.character,key) and (NTC.GetSymptom(c.character,key)
            or (c.afflictions.t_paralysis.strength > 0 or c.afflictions.tla_amputation.strength > 0 or c.afflictions.sla_amputation.strength > 0)
            or (Utils.GetAfflictionStrengthLimb(c.character,limbtype,"bandaged",0) <= 0 and c.afflictions.la_dislocation.strength > 0)
            or (Utils.GetAfflictionStrengthLimb(c.character,limbtype,"gypsumcast",0) <= 0 and c.afflictions.la_fracture.strength > 0))
end
local function organDamageCalc(c,damagevalue)
    if (damagevalue >= 99) then return 100 end
    return damagevalue - 0.01 * c.stats.healingrate * c.stats.specificOrganDamageHealMultiplier * AM.Deltatime
end
local function kidneyDamageCalc(c,damagevalue)
    if (damagevalue >= 99) then return 100 end
    if (damagevalue >= 50) then 
        if (damagevalue <= 51) then return damagevalue end
        return damagevalue - 0.01 * c.stats.healingrate * c.stats.specificOrganDamageHealMultiplier * AM.Deltatime 
    end
    return damagevalue - 0.02 * c.stats.healingrate * c.stats.specificOrganDamageHealMultiplier * AM.Deltatime
end
local function isExtremity(type) 
    return not type==LimbType.Torso and not type==LimbType.Head
end
local limbtypes = {
    LimbType.Torso,
    LimbType.Head,
    LimbType.LeftArm,
    LimbType.RightArm,
    LimbType.LeftLeg,
    LimbType.RightLeg,
}

-- define all the afflictions and their update functions
AM.Afflictions = {
    -- Arterial cuts
    t_arterialcut={},
    -- Fractures, dislocations and amputations
    t_fracture={},h_fracture={},la_fracture={},ra_fracture={},ll_fracture={},rl_fracture={},
    tla_amputation={},tra_amputation={},tll_amputation={},trl_amputation={},
    sla_amputation={},sra_amputation={},sll_amputation={},srl_amputation={},
    ra_dislocation={},la_dislocation={},rl_dislocation={},ll_dislocation={},
    t_paralysis={},
    
    -- Organ conditions
    asys={update=function(c,i)
        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_asys") and (NTC.GetSymptom(c.character,"triggersym_asys")
        or c.stats.stasis or c.afflictions.heartremoved.strength > 0 or c.afflictions.brainremoved.strength > 0
        or (c.afflictions.heartdamage.strength > 99 and Utils.Chance(0.3))
        or (c.afflictions.traumaticshock.strength > 20 and Utils.Chance(0.1))
        or (c.afflictions.coma.strength > 40 and Utils.Chance(0.03))
        or (c.afflictions.hypoxemia.strength > 80 and Utils.Chance(0.01))
        or (c.afflictions.vf.strength > 10 and Utils.Chance((c.afflictions.vf.strength/100)^4))
        )) then
            c.afflictions[i].strength = c.afflictions[i].strength+10
        end
    end},
    respiratoryarrest={update=function(c,i)
        -- passive regen
        c.afflictions[i].strength = c.afflictions[i].strength-0.05*AM.Deltatime
        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_respiratoryarrest") and (NTC.GetSymptom(c.character,"triggersym_respiratoryarrest")
        or c.stats.stasis or c.afflictions.lungremoved.strength > 0 or c.afflictions.brainremoved.strength > 0
        or (c.afflictions.lungdamage.strength > 99 and Utils.Chance(0.3))
        or (c.afflictions.traumaticshock.strength > 10 and Utils.Chance(0.1))
        or ((c.afflictions.cerebralhypoxia.strength > 100 or c.afflictions.hypoxemia.strength > 70) and Utils.Chance(0.1)))
        ) then
            c.afflictions[i].strength = c.afflictions[i].strength+10
        end
    end},
    pneumothorax={update=function(c,i)
        if c.afflictions[i].strength > 0 then
        c.afflictions[i].strength = c.afflictions[i].strength + AM.Deltatime * 0.5 end
    end
    },
    tamponade={update=function(c,i)
        if c.afflictions[i].strength > 0 then
        c.afflictions[i].strength = c.afflictions[i].strength + AM.Deltatime * 0.5 end
    end
    },
    heartattack={update=function(c,i)
        c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime

        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_heartattack") and not c.stats.stasis and c.afflictions.afstreptokinase.strength <= 0 and c.afflictions.heartremoved.strength <= 0 and (NTC.GetSymptom(c.character,"triggersym_heartattack")
        or (c.afflictions.bloodpressure.strength > 150 and Utils.Chance((c.afflictions.bloodpressure.strength-150)/50*0.02)))
        ) then
            c.afflictions[i].strength = c.afflictions[i].strength+50
        end
    end
    },
    -- Organs removed
    brainremoved={},heartremoved={},lungremoved={},
    -- Organ damage
    cerebralhypoxia={max=200,update=function(c,i)
        if c.stats.stasis then return end
        -- calculate new cerebral hypoxia
        c.afflictions[i].strength = c.afflictions[i].strength + 
            ( -0.1*c.stats.healingrate +                        -- passive regen
            c.afflictions.hypoxemia.strength/100 +              -- from hypoxemia
            Utils.Clamp(c.afflictions.stroke.strength,0,20)*0.1 +  -- from stroke
            c.afflictions.sepsis.strength/100*0.4 +             -- from sepsis
            c.afflictions.liverdamage.strength/800 +            -- from liverdamage
            c.afflictions.kidneydamage.strength/1000            -- from kidneydamage
        )*NTC.GetMultiplier(c.character,"cerebralhypoxiagain")      -- NTC multiplier
        * (1-Utils.Clamp(c.afflictions.afmannitol.strength,0,0.5)) -- half if mannitol
        * AM.Deltatime
        c.afflictions[i].strength = Utils.Clamp(c.afflictions[i].strength,0,200)
    end
    },
    heartdamage={update=function(c,i) if c.stats.stasis then return end c.afflictions[i].strength = organDamageCalc(c,c.afflictions[i].strength + NTC.GetMultiplier(c.character,"heartdamagegain")*(c.stats.neworgandamage + Utils.Clamp(c.afflictions.heartattack.strength,0,0.5) * AM.Deltatime)) end},
    lungdamage={update=function(c,i) if c.stats.stasis then return end c.afflictions[i].strength = organDamageCalc(c,c.afflictions.lungdamage.strength + NTC.GetMultiplier(c.character,"lungdamagegain")*(c.stats.neworgandamage + math.max(c.afflictions.radiationsickness.strength-25,0)/800*AM.Deltatime)) end},
    liverdamage={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = organDamageCalc(c,c.afflictions.liverdamage.strength + NTC.GetMultiplier(c.character,"liverdamagegain")*c.stats.neworgandamage) 
        if c.afflictions[i].strength >= 99 and not NTC.GetSymptom(c.character,"sym_hematemesis") and Utils.Chance(0.05) then
            -- if liver failed: 5% chance for 6-20 seconds of blood vomiting and internal bleeding
            NTC.SetSymptomTrue(c.character,"sym_hematemesis",math.random(3,10))
            c.afflictions.internalbleeding.strength = c.afflictions.internalbleeding.strength+2
        end
    end
    },
    kidneydamage={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = kidneyDamageCalc(c,c.afflictions.kidneydamage.strength + NTC.GetMultiplier(c.character,"kidneydamagegain")*(c.stats.neworgandamage + Utils.Clamp((c.afflictions.bloodpressure.strength-120)/160,0,0.5)*AM.Deltatime*0.5))
        if c.afflictions[i].strength >= 60 and not NTC.GetSymptom(c.character,"sym_vomiting") and Utils.Chance((c.afflictions[i].strength-60)/40*0.07) then
            -- at 60% kidney damage: 0% chance for vomiting
            -- at 100% kidney damage: 7% chance for vomiting
            NTC.SetSymptomTrue(c.character,"sym_vomiting",math.random(3,10))
        end
    end
    },
    bonedamage={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = organDamageCalc(c,c.afflictions.bonedamage.strength + NTC.GetMultiplier(c.character,"bonedamagegain")*(c.afflictions.sepsis.strength/500 + c.afflictions.hypoxemia.strength/1000 + math.max(c.afflictions.radiationsickness.strength-25,0)/600)*AM.Deltatime)
        if(c.afflictions[i].strength < 90) then c.afflictions[i].strength = c.afflictions[i].strength - (c.stats.bonegrowthCount*0.3) * AM.Deltatime
        elseif(c.stats.bonegrowthCount >= 6) then c.afflictions[i].strength = c.afflictions[i].strength - 2 * AM.Deltatime end
        if(c.afflictions.kidneydamage.strength > 70) then c.afflictions[i].strength = c.afflictions[i].strength + (c.afflictions.kidneydamage.strength-70)/30*0.15*AM.Deltatime end
    end
    },
    organdamage={max=200,update=function(c,i) if c.stats.stasis then return end c.afflictions[i].strength = c.afflictions[i].strength + c.stats.neworgandamage - 0.03 * c.stats.healingrate * AM.Deltatime end},
    -- Blood
    sepsis={update=function(c,i)
        if c.stats.stasis then return end
        if(c.afflictions.afantibiotics.strength > 0.1) then c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime end
        if(c.afflictions[i].strength > 0.1 and not c.stats.stasis) then c.afflictions[i].strength = c.afflictions[i].strength + 0.05 * AM.Deltatime end 
    end
    },
    immunity={default=-1,update=function(c,i)
        if c.stats.stasis then return end
        if c.afflictions[i].strength==-1 then
            -- no immunity affliction!
            -- assume it has been wiped by "revive" or "heal all", attempt to assign new blood type
            c.afflictions[i].strength = 100
            AM.TryRandomizeBlood(c.character)
        end
        c.afflictions[i].strength = Utils.Clamp(c.afflictions[i].strength+(0.5+c.afflictions[i].strength/100)*AM.Deltatime,1,100)
    end
    },
    bloodloss={max=200},
    bloodpressure={min=5,max=200,default=90,update=function(c,i)
        if c.stats.stasis then return end
        -- calculate new blood pressure
        local desiredbloodpressure =
            (c.stats.bloodamount
            - c.afflictions.tamponade.strength/2                    -- -50 if full tamponade
            + Utils.Clamp(c.afflictions.afadrenaline.strength*10,0,30)          -- +30 if adrenaline
            ) * 
            (1+0.5*((c.afflictions.liverdamage.strength/100)^2)) *  -- elevated if full liver damage
            (1+0.5*((c.afflictions.kidneydamage.strength/100)^2)) * -- elevated if full kidney damage
            (1 + c.afflictions.alcoholwithdrawal.strength/200 ) *   -- elevated if alcohol withdrawal
            ((100-c.afflictions.traumaticshock.strength)/100)       -- none if full traumatic shock
            * NTC.GetMultiplier(c.character,"bloodpressure")
        local bloodpressurelerp = 0.2
        -- adjust three times slower to heightened blood pressure
        if(desiredbloodpressure>c.afflictions.bloodpressure.strength) then bloodpressurelerp = bloodpressurelerp/3 end
        c.afflictions.bloodpressure.strength = Utils.Clamp(Utils.Round(Utils.Lerp(c.afflictions.bloodpressure.strength,desiredbloodpressure,bloodpressurelerp)),5,200)
    end
    },
    hypoxemia={update=function(c,i)
        if c.stats.stasis then return end
        -- completely cancel out hypoxemia regeneration if penumothorax is full
        c.stats.availableoxygen = math.min(c.stats.availableoxygen,100-c.afflictions.pneumothorax.strength/2)

        local hypoxemiagain = NTC.GetMultiplier(c.character,"hypoxemiagain")
        local regularHypoxemiaChange = (c.stats.availableoxygen-50) / 8
        if regularHypoxemiaChange > 0 then
            -- not enough oxygen, increase hypoxemia
            regularHypoxemiaChange = regularHypoxemiaChange * hypoxemiagain
        else
            -- enough oxygen, decrease hypoxemia
            regularHypoxemiaChange = regularHypoxemiaChange * 2
        end
        c.afflictions.hypoxemia.strength = Utils.Clamp(c.afflictions.hypoxemia.strength + (
            - math.min(0,(c.afflictions.bloodpressure.strength-70) / 7) * hypoxemiagain    -- loss because of low blood pressure (-10 at 0 bp)
            - math.min(0,(c.stats.bloodamount-60) / 4) * hypoxemiagain      -- loss because of low blood amount (-15 at 0 blood)
            - regularHypoxemiaChange                                -- change because of oxygen in lungs (-6.25 <> +12.5)
        )* AM.Deltatime,0,100)
    end
    },
    hemotransfusionshock={},
    -- Other
    oxygenlow={max=200,update=function(c,i)
        -- respiratory arrest? -> oxygen in lungs rapidly decreases
        if c.afflictions.respiratoryarrest.strength > 0 then
            c.afflictions.oxygenlow.strength = c.afflictions.oxygenlow.strength+15*AM.Deltatime
        end
    end
    },
    radiationsickness={max=200,update=function(c,i)
        c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime * 0.02
    end
    },
    stasis={},
    internalbleeding={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime * 0.02 * c.stats.clottingrate
        if c.afflictions[i].strength > 0 then
            c.afflictions.bloodloss.strength = c.afflictions.bloodloss.strength + c.afflictions[i].strength * (1/40) * AM.Deltatime
        end
    end
    },
    acidosis={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = c.afflictions[i].strength
            - AM.Deltatime * 0.03
            + (Utils.Clamp(c.afflictions.hypoventilation.strength,0,1) * 0.09
            + Utils.Clamp(c.afflictions.respiratoryarrest.strength+c.afflictions.asys.strength,0,1) * 0.18
            + math.max(0,c.afflictions.kidneydamage.strength - 80)/20*0.1) * AM.Deltatime
    end
    },
    alkalosis={update=function(c,i)
        if not c.stats.stasis then
            c.afflictions[i].strength = c.afflictions[i].strength
                - AM.Deltatime * 0.03
                + Utils.Clamp(c.afflictions.hyperventilation.strength,0,1) * 0.09 * AM.Deltatime
                + Utils.Clamp(c.afflictions.sym_vomiting.strength,0,1) * 0.1 * AM.Deltatime
                + Utils.Clamp(Utils.GetAfflictionStrength(c.character,"nausea",0),0,1) * 0.1 * AM.Deltatime
        end
        if(c.afflictions.acidosis.strength > 1 and c.afflictions.alkalosis.strength > 1) then 
            local min = math.min(c.afflictions.acidosis.strength,c.afflictions.alkalosis.strength)
            c.afflictions.acidosis.strength = c.afflictions.acidosis.strength - min
            c.afflictions.alkalosis.strength = c.afflictions.alkalosis.strength - min
        end
    end
    },
    seizure={update=function(c,i)
        c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime

        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_seizure") and not c.stats.stasis and (NTC.GetSymptom(c.character,"triggersym_seizure")
            or (c.afflictions.stroke.strength > 1 and Utils.Chance(0.05)) or (c.afflictions.acidosis.strength > 60 and Utils.Chance(0.05))
            or (c.afflictions.alkalosis.strength > 60 and Utils.Chance(0.05)) or Utils.Chance(Utils.Minimum(c.afflictions.radiationsickness.strength,50,0)/200*0.1)
            or (c.afflictions.alcoholwithdrawal.strength > 50 and Utils.Chance(c.afflictions.alcoholwithdrawal.strength/1000)))
        ) then
            c.afflictions[i].strength = c.afflictions[i].strength+10
        end

        -- check for spasm trigger
        if (c.afflictions[i].strength > 0.1) then
            for type in limbtypes do
                if(Utils.Chance(0.5)) then 
                    Utils.AddAfflictionLimb(c.character,"spasm",type,10)
                end
            end
            
        end
    end
    },
    stroke={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = c.afflictions[i].strength - (1/20)*c.stats.clottingrate* AM.Deltatime

        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_stroke") and not c.stats.stasis and (NTC.GetSymptom(c.character,"triggersym_stroke")
        or (c.afflictions.bloodpressure.strength > 150 and Utils.Chance((c.afflictions.bloodpressure.strength-150)/50*0.02+Utils.Clamp(c.afflictions.afstreptokinase.strength,0,1)*0.05)))
        ) then
            c.afflictions[i].strength = c.afflictions[i].strength+5
        end
    end
    },
    coma={update=function(c,i)
        if c.stats.stasis then return end
        c.afflictions[i].strength = c.afflictions[i].strength - AM.Deltatime / 5

        -- triggers
        if( not NTC.GetSymptomFalse(c.character,"triggersym_coma") and not c.stats.stasis and (NTC.GetSymptom(c.character,"triggersym_coma")
        or (c.afflictions.asys.strength > 1 and Utils.Chance(0.05)) or (c.afflictions.stroke.strength > 1 and Utils.Chance(0.05))
        or(c.afflictions.acidosis.strength > 60 and Utils.Chance(0.05+(c.afflictions.acidosis.strength-60)/100)))) then
            c.afflictions[i].strength = c.afflictions[i].strength+14
        end
    end
    },
    stun={},
    slowdown={update=function(c,i)
        c.afflictions[i].strength = Utils.Clamp(100 * (1-c.stats.speedmultiplier),0,100)
    end
    },
    traumaticshock={},
    alcoholwithdrawal={},opiatewithdrawal={},chemwithdrawal={},
    opiateoverdose={},
    -- Drugs
    analgesia={max=200},anesthesia={},drunk={max=200},
    afadrenaline={},afantibiotics={},afthiamine={},
    afstreptokinase={},afmannitol={},

    -- /// Symptoms ///
    --==============================================================================
    sym_unconsciousness={
        update=function(c,i)
            local isUnconscious = not NTC.GetSymptomFalse(c.character,i) and ( NTC.GetSymptom(c.character,i)
                or c.stats.stasis or c.afflictions.brainremoved.strength > 0 or (c.character.Vitality <= 0 and not Utils.HasAbilityFlag(c.character,12))
                or c.afflictions.cerebralhypoxia.strength > 100 or c.afflictions.coma.strength > 15
                or c.afflictions.hypoxemia.strength > 80 or c.afflictions.t_arterialcut.strength>0 or c.afflictions.seizure.strength > 0.1 )
            c.afflictions[i].strength = Utils.BoolToNum(isUnconscious,2)
            if isUnconscious then c.afflictions.stun.strength = math.max(7,c.afflictions.stun.strength) end
        end
    },
    tachycardia={
        update=function(c,i)
            -- harmless symptom (doesnt lead to fibrillation)
            local hasSymHarmless =
                not NTC.GetSymptomFalse(c.character,i) and c.afflictions.asys.strength < 1 and c.afflictions.heartremoved.strength < 1 and (NTC.GetSymptom(c.character,i)
                or c.afflictions.sepsis.strength > 20 or c.stats.bloodamount < 60
                or c.afflictions.acidosis.strength > 20 or c.afflictions.pneumothorax.strength > 30
                or c.afflictions.afadrenaline.strength > 1 or c.afflictions.alcoholwithdrawal.strength > 75)
            c.afflictions[i].strength = math.max(c.afflictions[i].strength,Utils.BoolToNum(hasSymHarmless,2))
            
            -- harmful symptom (leads to fibrillation and cardiac arrest)
            local vfSpeed = -0.1
                + Utils.Clamp(c.afflictions.t_arterialcut.strength,0,2)            -- aortic rupture (very fast)
                + Utils.Clamp(c.afflictions.acidosis.strength/200,0,0.5)           -- acidosis (slow)
                + Utils.Clamp(0.9-(c.afflictions.bloodpressure.strength/90),0,1)*2 -- low blood pressure (varies)
            if vfSpeed>0 then
                if c.afflictions.afadrenaline > 0 then -- if adrenaline, fibrillate half as fast
                    vfSpeed = vfSpeed/2
                end
            end
            if c.afflictions.asys.strength > 0 or c.afflictions.heartremoved.strength > 0 then
                vfSpeed = -1000
            end
            
            -- fibrillation multiplier
            if vfSpeed > 0 then vfSpeed = vfSpeed * NTC.GetMultiplier(c.character,"vf") end

            if c.afflictions.vf.strength <= 0 then -- havent reached fibrillation yet
                c.afflictions[i].strength = c.afflictions[i].strength + vfSpeed*5*AM.Deltatime
                -- we reached max tachycardia, switch over to fibrillation
                if c.afflictions[i].strength >= 100 then
                    c.afflictions.vf.strength = 5
                    c.afflictions[i].strength = 0
                end
            else -- have reached fibrillation
                c.afflictions[i].strength = 0 -- set tachycardia to 0
                c.afflictions.vf.strength = c.afflictions.vf.strength + vfSpeed*AM.Deltatime
            end

        end
    },
    vf={update=function(c,i)
        -- see above for vfib accumulation logic
        if NTC.GetSymptomFalse(c.character,i) or c.afflictions.asys.strength >= 1 or c.afflictions.heartremoved.strength >= 1 then
            c.afflictions[i].strength=0
        end
    end
    }, 
    hyperventilation={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and c.afflictions.respiratoryarrest.strength < 1 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.hypoxemia.strength > 10 or c.afflictions.bloodpressure.strength < 80 or c.afflictions.afadrenaline.strength > 1
        or c.afflictions.pneumothorax.strength > 15 or c.afflictions.sepsis.strength > 15)
        ,2)end
    },
    hypoventilation={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and c.afflictions.respiratoryarrest.strength < 1 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.analgesia.strength > 20 or c.afflictions.anesthesia.strength > 40),2)
        if(c.afflictions.hyperventilation.strength>0 and c.afflictions.hypoventilation.strength>0) then 
            c.afflictions.hyperventilation.strength = 0
            c.afflictions.hypoventilation.strength = 0
        end
    end
    },
    dyspnea={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and c.afflictions.respiratoryarrest.strength <= 0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.heartattack.strength > 1 or c.afflictions.heartdamage.strength > 80 or c.afflictions.hypoxemia.strength > 20 or
        c.afflictions.lungdamage.strength > 45 or c.afflictions.pneumothorax.strength > 40 or c.afflictions.tamponade.strength > 10 or
        (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 70))
        ,2)end
    },
    sym_cough={
        update=function(c,i)
        c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.lungdamage.strength > 50 or c.afflictions.heartdamage.strength > 50 or c.afflictions.tamponade.strength > 20)
        ,2)end
    },
    sym_paleskin={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i) or c.stats.bloodamount < 60 or c.afflictions.bloodpressure.strength < 50)
        ,2)end
    },
    sym_lightheadedness={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(
        not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i) or c.afflictions.bloodpressure.strength < 60)
        ,2)end
    },
    sym_blurredvision={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.bloodpressure.strength < 55),2)end
    },
    sym_confusion={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.acidosis.strength > 15 or c.afflictions.bloodpressure.strength < 30
        or c.afflictions.hypoxemia.strength > 50 or c.afflictions.sepsis.strength > 40
        or c.afflictions.alcoholwithdrawal.strength > 80),2)end
    },
    sym_headache={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and not c.stats.sedated and (NTC.GetSymptom(c.character,i)
        or c.stats.bloodamount < 50 or c.afflictions.acidosis.strength > 20
        or c.afflictions.stroke.strength > 1 or c.afflictions.hypoxemia.strength > 40
        or c.afflictions.bloodpressure.strength < 60 or c.afflictions.alcoholwithdrawal.strength > 50
        or c.afflictions.h_fracture.strength>0),2)end
    },
    sym_legswelling={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and Utils.GetAfflictionStrength(c.character,"rl_cyber",0) < 0.1 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.liverdamage.strength > 40 or c.afflictions.kidneydamage.strength > 60
        or c.afflictions.heartdamage.strength > 80),2)end
    },
    sym_weakness={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.tamponade.strength > 30 or c.stats.bloodamount < 40 or c.afflictions.acidosis.strength > 35),2)end
    },
    sym_wheezing={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.respiratoryarrest.strength<=0 and (NTC.GetSymptom(c.character,i)
        or (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 90)),2)end
    },
    sym_vomiting={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.drunk.strength > 100
        or (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 40)
        or c.afflictions.alcoholwithdrawal.strength > 60),2)end
    },
    sym_nausea={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.kidneydamage.strength > 60 or c.afflictions.radiationsickness.strength > 80
        or (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 90)
        or c.stats.withdrawal > 40),2)end
    },
    sym_hematemesis={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.internalbleeding.strength > 50),2)end
    },
    sym_fever={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.sepsis.strength > 5 or c.afflictions.alcoholwithdrawal.strength > 90),2)end
    },
    sym_abdomdiscomfort={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.liverdamage.strength > 65),2)end
    },
    sym_bloating={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.liverdamage.strength > 50),2)end
    },
    sym_jaundice={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.liverdamage.strength > 80),2)end
    },
    sym_sweating={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and (NTC.GetSymptom(c.character,i)
        or c.afflictions.heartattack.strength > 1 or c.stats.withdrawal > 30),2)end
    },
    sym_palpitations={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.asys.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.afflictions.alkalosis.strength > 20),2)end
    },
    sym_craving={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or c.stats.withdrawal > 20),2)end
    },
    pain_abdominal={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and not c.stats.sedated and (NTC.GetSymptom(c.character,i)
        or (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 80)
        or c.afflictions.t_arterialcut.strength > 0),2)end
    },
    pain_chest={
        update=function(c,i) c.afflictions[i].strength = Utils.BoolToNum(not NTC.GetSymptomFalse(c.character,i) and c.afflictions.sym_unconsciousness.strength<=0 and (NTC.GetSymptom(c.character,i)
        or (c.afflictions.hemotransfusionshock.strength>0 and c.afflictions.hemotransfusionshock.strength < 60)
        or c.afflictions.t_fracture.strength>0 or c.afflictions.t_arterialcut.strength > 0),2)end
    },
    luabotomy={
        update=function(c,i) c.afflictions[i].strength = 0 end
    },
}
-- define all the limb specific afflictions and their update functions
AM.LimbAfflictions = {
    bandaged={update=function(c,limbaff,i)
        -- turning a bandage into a dirty bandage
        local wounddamage = limbaff.burn.strength+limbaff.lacerations.strength+limbaff.gunshotwound.strength+limbaff.bitewounds.strength+limbaff.explosiondamage.strength
        local bandageDirtifySpeed = 0.1 + wounddamage/100 + limbaff.bleeding.strength/20
        if limbaff[i].strength > 0 then 
            limbaff[i].strength=limbaff[i].strength-bandageDirtifySpeed*AM.Deltatime 
            if limbaff[i].strength <= 0 then 
                limbaff.dirtybandage.strength = math.max(limbaff.dirtybandage.strength,1)
                limbaff[i].strength = 0
            end
        end
        if limbaff.dirtybandage.strength > 0 then limbaff.dirtybandage.strength=limbaff.dirtybandage.strength+bandageDirtifySpeed*AM.Deltatime end
    
        -- bandage slowdown
        if limbaff[i].strength > 0 or limbaff.dirtybandage.strength > 0 then
            c.stats.speedmultiplier = c.stats.speedmultiplier*0.9
        end
    end
    },
    dirtybandage={}, -- for bandage dirtifaction logic see above
    gypsumcast={update=function(c,limbaff,i)
        -- gypsum slowdown
        if limbaff[i].strength > 0 then
            c.stats.speedmultiplier = c.stats.speedmultiplier*0.8
        end
    end
    },
    ointmented={},
    bonegrowth={update=function(c,limbaff,i,type)
        if limbaff[i].strength <= 0 then
            -- check for bone death fracture triggers
            if (c.afflictions.bonedamage.strength > 90 and Utils.Chance(0.01)) then 
                AM.BreakLimb(c.character,type)
            end
        end
    end
    },
    arteriesclamp={},
    -- damage
    bleeding={update=function(c,limbaff,i)
        if(limbaff[i].strength > 0 and math.abs(c.stats.clottingrate-1) > 0.05) then limbaff[i].strength = limbaff[i].strength - (c.stats.clottingrate-1) * 0.1 * AM.Deltatime end
    end
    },
    burn={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/3000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    lacerations={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/3000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    gunshotwound={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/3000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    bitewounds={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/3000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    explosiondamage={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/3000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    blunttrauma={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - (c.afflictions.immunity.prev/8000 + Utils.Clamp(limbaff.bandaged.strength,0,1)*0.1)*c.stats.healingrate*AM.Deltatime
    end
    },
    internaldamage={max=200,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength - 0.05*c.stats.healingrate*AM.Deltatime
    end
    },
    -- other
    infectedwound={update=function(c,limbaff,i)
        local infectindex = ( -c.afflictions.immunity.prev/200 - Utils.Clamp(limbaff.bandaged.strength,0,1)*1.5 - limbaff.ointmented.strength*3 + limbaff.burn.strength/20 + limbaff.lacerations.strength/40 + limbaff.bitewounds.strength/30 + limbaff.gunshotwound.strength/40 + limbaff.explosiondamage.strength/40 )*AM.Deltatime
        -- if(hassym_inflammation) then infectindex = infectindex-0.8*NT.Deltatime end
        local wounddamage = limbaff.burn.strength+limbaff.lacerations.strength+limbaff.gunshotwound.strength+limbaff.bitewounds.strength+limbaff.explosiondamage.strength
        if(limbaff.dirtybandage.strength > 10 and wounddamage > 5) then infectindex = infectindex+(wounddamage/40+limbaff.dirtybandage.strength/20)*AM.Deltatime end
        limbaff[i].strength = limbaff[i].strength + infectindex/5
        c.afflictions.immunity.strength = c.afflictions.immunity.strength - Utils.Clamp(infectindex/3,0,10)
    end
    },
    foreignbody={update=function(c,limbaff,i,type)
        if(limbaff[i].strength < 15) then limbaff[i].strength = limbaff[i].strength-0.05*c.stats.healingrate*AM.Deltatime end

        -- check for arterial cut triggers and foreign body sepsis
        local foreignbodycutchance = ((Utils.Minimum(limbaff[i].strength,20)/100)^4)*0.5
        if (limbaff.bleeding.strength > 80 or Utils.Chance(foreignbodycutchance)) then
            AM.ArteryCutLimb(c.character,type)
        end

        -- sepsis
        local sepsischance = Utils.Minimum(limbaff.gangrene.strength,15,0) / 400 + Utils.Minimum(limbaff.infectedwound.strength,50) / 1000 + foreignbodycutchance
        if(Utils.Chance(sepsischance)) then
            c.afflictions.sepsis.strength = c.afflictions.sepsis.strength + AM.Deltatime
        end
    end
    },
    gangrene={update=function(c,limbaff,i,type)
        if(isExtremity(type)) then 
            if(limbaff[i].strength < 15 and limbaff[i].strength > 0) then limbaff[i].strength = limbaff[i].strength - 0.01*c.stats.healingrate*AM.Deltatime end
            if(c.afflictions.sepsis.strength > 5) then limbaff[i].strength = limbaff[i].strength + Utils.BoolToNum(Utils.Chance(0.1+c.afflictions.sepsis.strength/300),1) * AM.Deltatime end
            if(limbaff.arteriesclamp.strength > 0) then limbaff[i].strength = limbaff[i].strength + Utils.BoolToNum(Utils.Chance(0.1),1) * 0.5 * AM.Deltatime end
        end
    end
    },
    inflammation={update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength + (-0.1+
        Utils.BoolToNum(limbaff.infectedwound.strength > 10 or limbaff.foreignbody.strength > 15,0.15)) * AM.Deltatime
    end
    },
    pain_extremity={max=10,update=function(c,limbaff,i)
        limbaff[i].strength = limbaff[i].strength + -0.5 * AM.Deltatime
    end
    },
}
-- define the stats and multipliers
AM.CharStats = {
    healingrate={getter=function(c) return NTC.GetMultiplier(c.character,"healingrate") end},
    specificOrganDamageHealMultiplier={getter=function(c) return NTC.GetMultiplier(c.character,"anyspecificorgandamage") + Utils.Clamp(c.afflictions.afthiamine.strength,0,1)*4 end},
    neworgandamage={getter=function(c) return (c.afflictions.sepsis.strength/300 + c.afflictions.hypoxemia.strength/400 + math.max(c.afflictions.radiationsickness.strength-25,0)/400)*NTC.GetMultiplier(c.character,"anyorgandamage")*AM.Deltatime end},
    clottingrate={getter=function(c) return
        Utils.Clamp(1-c.afflictions.liverdamage.strength/100,0,1)
        *c.stats.healingrate
        *Utils.Clamp(1-c.afflictions.afstreptokinase.strength,0,1)
        *NTC.GetMultiplier(c.character,"clottingrate") end
    },

    bloodamount={getter=function(c) return Utils.Clamp(100-c.afflictions.bloodloss.strength,0,100) end},
    stasis={getter=function(c) return c.afflictions.stasis.strength>0 end},
    sedated={getter=function(c) return c.afflictions.analgesia.strength > 0 or c.afflictions.anesthesia.strength > 10 or c.afflictions.drunk.strength > 30 or c.stats.stasis end},
    withdrawal={getter=function(c) return math.max(
        c.afflictions.opiatewithdrawal.strength,
        c.afflictions.chemwithdrawal.strength,
        c.afflictions.alcoholwithdrawal.strength) end
    },
    availableoxygen={getter=function(c)
        local res = Utils.Clamp(c.character.Oxygen,0,100)
        -- heart isnt pumping blood? no new oxygen is getting into the bloodstream, no matter how oxygen rich the air in the lungs
        res = res * (1-c.afflictions.vf.strength/100)
        if c.afflictions.asys.strength > 1 then res = 0 end
        return res end
    },
    speedmultiplier={getter=function(c)
        local res = 1
        if c.afflictions.t_paralysis.strength>0 then res = -9001 end

        if(c.afflictions.sym_vomiting.strength>0) then res = res*0.8 end
        if(c.afflictions.sym_nausea.strength>0) then res = res*0.9 end
        if(c.afflictions.anesthesia.strength > 0) then res = res*0.5 end
        if(c.afflictions.opiateoverdose.strength > 50) then res = res*0.5 end

        if(c.stats.withdrawal > 80) then res = res*0.5
        elseif(c.stats.withdrawal > 40) then res = res*0.7
        elseif(c.stats.withdrawal > 20) then res = res*0.9 end

        if(c.afflictions.drunk.strength > 80) then res = res*0.5
        elseif(c.afflictions.drunk.strength > 40) then res = res*0.7
        elseif(c.afflictions.drunk.strength > 20) then res = res*0.8 end

        res = res+c.afflictions.afadrenaline.strength/100 -- mitigate slowing effects if doped up on epinephrine

        res = res * NTC.GetSpeedMultiplier(c.character)

        return res
    end},
    

    lockleftarm={getter=function(c) return limbLockedInitial(c,LimbType.LeftArm,"lockleftarm") end
    },
    lockrightarm={getter=function(c) return limbLockedInitial(c,LimbType.RightArm,"lockrightarm") end
    },
    lockleftleg={getter=function(c) return limbLockedInitial(c,LimbType.LeftLeg,"lockleftleg") end
    },
    lockrightleg={getter=function(c) return limbLockedInitial(c,LimbType.RightLeg,"lockrightleg") end
    },

    wheelchaired={getter=function(c)
        local outerwearItem = c.character.Inventory.GetItemAt(4)
        c.stats.wheelchaired = outerwearItem ~= nil and outerwearItem.Prefab.Identifier.Value == "wheelchair"
        if c.stats.wheelchaired then
            c.stats.lockleftleg = c.stats.lockleftarm
            c.stats.lockrightleg = c.stats.lockrightarm
        end
        -- leg slowdown
        if(c.stats.lockleftleg or c.stats.lockrightleg) then c.stats.speedmultiplier = c.stats.speedmultiplier*0.5 end
        if(c.stats.lockleftleg and c.stats.lockrightleg) then c.afflictions.stun.strength = math.max(c.afflictions.stun.strength,5) end
    end
    },

    bonegrowthCount={getter=function(c)
        local res = 0
        for type in limbtypes do
            if Utils.GetAfflictionStrengthLimb(c.character,type,"bonegrowth",0) > 0 then res=res+1 end
        end
        return res
    end
    },
    
}


function AM.UpdateHuman(character)

    -- pre humanupdate hooks
    for key, val in pairs(NTC.PreHumanUpdateHooks) do
        val(character)
    end

    local charData = {character=character,afflictions={},stats={}}

    -- fetch all the current affliction data
    for identifier,data in pairs(AM.Afflictions) do
        local strength = Utils.GetAfflictionStrength(character,identifier,data.default or 0)
        charData.afflictions[identifier] = {prev=strength,strength=strength}
    end
    -- fetch and calculate all the current stats
    for identifier,data in pairs(AM.CharStats) do
        if data.getter ~= nil then charData.stats[identifier] = data.getter(charData)
        else charData.stats[identifier] = data.default or 1 end
    end
    -- update non-limb-specific afflictions
    for identifier,data in pairs(AM.Afflictions) do
        if data.update ~= nil then
        data.update(charData,identifier) end
    end
    

    -- update and apply limb specific stuff
    local function FetchLimbData(type)
        local keystring = tostring(type).."afflictions"
        charData[keystring] = {}
        for identifier,data in pairs(AM.LimbAfflictions) do
            local strength = Utils.GetAfflictionStrengthLimb(character,type,identifier,data.default or 0)
            charData[keystring][identifier] = {prev=strength,strength=strength}
        end
    end
    local function UpdateLimb(type)
        local keystring = tostring(type).."afflictions"
        for identifier,data in pairs(AM.LimbAfflictions) do
            if data.update ~= nil then
            data.update(charData,charData[keystring],identifier,type) end
        end
    end
    local function ApplyLimb(type)
        local keystring = tostring(type).."afflictions"
        for identifier,data in pairs(charData[keystring]) do
            local newval = Utils.Clamp(
            data.strength,
            AM.LimbAfflictions[identifier].min or 0,
            AM.LimbAfflictions[identifier].max or 100)
            if newval ~= data.prev then
                Utils.SetAfflictionLimb(character,identifier,type,newval)
            end
        end
    end

    -- stasis completely halts activity in limbs
    if not charData.stats.stasis then
        for type in limbtypes do
            FetchLimbData(type)
        end
        for type in limbtypes do
            UpdateLimb(type)
        end
        for type in limbtypes do
            ApplyLimb(type)
        end
    end

    -- apply non-limb-specific changes
    for identifier,data in pairs(charData.afflictions) do
        local newval = Utils.Clamp(
            data.strength,
            AM.Afflictions[identifier].min or 0,
            AM.Afflictions[identifier].max or 100)
        if newval ~= data.prev then
            Utils.SetAffliction(character,identifier,newval)
        end
    end

    -- compatibility
    NTC.TickCharacter(character)
    -- humanupdate hooks
    for key, val in pairs(NTC.HumanUpdateHooks) do
        val(character)
    end

    NTC.CharacterSpeedMultipliers[character] = nil
end

-- gets run every tick, shouldnt be used unless necessary

function AM.TickUpdate() 
    for key,value in pairs(AM.tickTasks) do 

        value.duration = value.duration-1
        if value.duration <= 0 then 
            AM.tickTasks[key]=nil
        end
    end
end

AM.tickTasks = {}
AM.tickTaskID = 0
function AM.AddTickTask(type,duration,character)
    local newtask = {}
    newtask.type=type
    newtask.duration=duration
    newtask.character=character
    AM.tickTasks[AM.tickTaskID]=newtask
    AM.tickTaskID = AM.tickTaskID+1
end