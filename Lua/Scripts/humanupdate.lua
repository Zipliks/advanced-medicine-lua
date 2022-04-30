
Main.UpdateCooldown = 0
Main.UpdateInterval = 120
Main.Deltatime = Main.UpdateInterval/60 -- Time in seconds that transpires between updates

Hook.Add("think", "AM.update", function()
    if Utils.GameIsPaused() then return end

    Main.UpdateCooldown = Main.UpdateCooldown-1
    if (Main.UpdateCooldown <= 0) then
        Main.UpdateCooldown = Main.UpdateInterval
        Main.Update()
    end

    Main.TickUpdate()
end)

-- gets run once every two seconds
function Main.Update()
    -- for every human
    for _, character in pairs(Character.CharacterList) do
        if (character.IsHuman and not character.IsDead) then
            -- we spread the characters out over a timespan of half a second so the load isnt done all at once
            Timer.Wait(function()
                Main.UpdateHuman(character)
            end, math.random()*500)
        end
    end

end

function Main.UpdateHuman(character)

    -- pre humanupdate hooks
    for key, val in pairs(NTC.PreHumanUpdateHooks) do
        val(character)
    end

    -- fetch environmental oxygen and bloodamount
    local availableoxygen = Utils.Clamp(character.Oxygen,0,100) -- percentile, 0-100
    local bloodloss = Utils.GetAfflictionStrength(character,"bloodloss",0)
    local prevbloodloss = bloodloss
    local bloodamount = Utils.Clamp(100-bloodloss,0,100)

    -- fetch blood pressure
    local bloodpressureaff = character.CharacterHealth.GetAffliction("bloodpressure")
    local bloodpressure = 100
    local prevbloodpressure=-1
    if(bloodpressureaff~=nil) then
        bloodpressure = Utils.Round(bloodpressureaff.Strength)
        prevbloodpressure = bloodpressure
    else -- no blood pressure affliction, add it now
        bloodpressureaff = AfflictionPrefab.Prefabs["bloodpressure"].Instantiate(100,character)
        bloodpressure=100
    end

    -- fetch blood oxygen
    local atherosclerosis = Utils.GetAfflictionStrength(character,"atherosclerosis",0)
    local atherosclerosis = atherosclerosis

    -- fetch blood oxygen
    local hypoxemia = Utils.GetAfflictionStrength(character,"hypoxemia",0)
    local prevhypoxemia = hypoxemia

    -- fetch states and change the strength of some strengthchange afflictions
    local stasis = Utils.HasAffliction(character,"stasis",0.1)
    local t_fracture = Utils.HasAffliction(character,"t_fracture",0.1) -- rib fracture
    local t_arterialcut = Utils.HasAffliction(character,"t_arterialcut",0.1) -- aorticrupture

    local oxygenlow = Utils.GetAfflictionStrength(character,"oxygenlow",0)
    local prevoxygenlow = oxygenlow
    local respiratoryarrest = Utils.GetAfflictionStrength(character,"respiratoryarrest",0)
    local removedlung = Utils.GetAfflictionStrength(character,"lungremoved",0)
    local prevrespiratoryarrest = respiratoryarrest
    local asys = Utils.GetAfflictionStrength(character,"asys",0)
    local removedheart = Utils.GetAfflictionStrength(character,"heartremoved",0)
    local prevasys = asys
    if(asys > 1) then bloodpressure=bloodpressure-bloodpressure/10*Main.Deltatime  end
    local removedbrain = Utils.GetAfflictionStrength(character,"brainremoved",0)
    
    -- arrhythmias
    local vt = Utils.GetAfflictionStrength(character,"vt",0)
    local prevvt = vt
    if(vt > 1) then bloodpressure=bloodpressure-bloodpressure/10*Main.Deltatime  end
    local vf = Utils.GetAfflictionStrength(character,"vf",0)
    local prevvf = vf
    if(vf > 1) then bloodpressure=bloodpressure-bloodpressure/10*Main.Deltatime  end
    local af = Utils.GetAfflictionStrength(character,"af",0)
    local prevaf = af
    

    -- organ damage
    local heartdamage = Utils.GetAfflictionStrength(character,"heartdamage",0)
    local prevheartdamage = heartdamage
    local heartfibrosis = Utils.GetAfflictionStrength(character,"heartfibrosis",0)
    local prevheartfibrosis = heartfibrosis
    local lungdamage = Utils.GetAfflictionStrength(character,"lungdamage",0)
    local prevlungdamage = lungdamage
    local lungfibrosis = Utils.GetAfflictionStrength(character,"lungfibrosis",0)
    local prevlungfibrosis = lungfibrosis
    local liverdamage = Utils.GetAfflictionStrength(character,"liverdamage",0)
    local prevliverdamage = liverdamage
    local liverfibrosis = Utils.GetAfflictionStrength(character,"liverfibrosis",0)
    local prevliverfibrosis = liverfibrosis
    local kidneydamage = Utils.GetAfflictionStrength(character,"kidneydamage",0)
    local prevkidneydamage = kidneydamage
    local kidneyfibrosis = Utils.GetAfflictionStrength(character,"kidneyfibrosis",0)
    local prevkidneyfibrosis = kidneyfibrosis
    local bonedamage = Utils.GetAfflictionStrength(character,"bonedamage",0)
    local prevbonedamage = bonedamage
    local organdamage = Utils.GetAfflictionStrength(character,"organdamage",0)
    local prevorgandamage = organdamage

    -- sepsis
    local sepsis = Utils.GetAfflictionStrength(character,"sepsis",0)
    local prevsepsis = sepsis
    local antibiotics = Utils.GetAfflictionStrength(character,"afantibiotics",0)
    if(antibiotics > 0.1) then sepsis = sepsis - Main.Deltatime end
    if(sepsis > 0.1 and not stasis) then sepsis = sepsis + 0.05 * Main.Deltatime end

    -- cerebral hypoxia (not ugly)
    local cerebralhypoxia = Utils.GetAfflictionStrength(character,"cerebralhypoxia",0)
    local prevcerebralhypoxia = cerebralhypoxia
    -- brain integrity /// Responsible for the ability of the brain to recover after cerebralhypoxia
    local brain_integrity = Utils.GetAfflictionStrength(character,"brain_integrity",0)
    local prevbrain_integrity = brain_integrity


    -- immunity
    local immunity = 100
    local previmmunity = 100
    if(Utils.HasAffliction(character,"immunity",0.5)) then 
        immunity = Utils.GetAfflictionStrength(character,"immunity",0)
        previmmunity = immunity
    else 
        -- no immunity affliction! this shouldn't happen.
        -- it probably got removed by heal all or revive
        -- assume that blood type has also been lost and assign new bloodtype
        immunity = 100
        previmmunity = 0
        Main.TryRandomizeBlood(character)
    end
    immunity = Utils.Clamp(immunity+(0.5+immunity/100)*Main.Deltatime,1,100)

    -- radiation sickness
    local rads = Utils.GetAfflictionStrength(character,"radiationsickness",0)
    local prevrads = rads
    rads = rads - Main.Deltatime * 0.02

    -- internal bleeding
    local internalbleeding = Utils.GetAfflictionStrength(character,"internalbleeding",0)
    local previnternalbleeding = internalbleeding
    internalbleeding = internalbleeding - Main.Deltatime * 0.02
    

    -- acid- and alkalosis
    local acidosis = Utils.GetAfflictionStrength(character,"acidosis",0)
    local alkalosis = Utils.GetAfflictionStrength(character,"alkalosis",0)
    local prevacidosis = acidosis
    local prevalkalosis = alkalosis
    acidosis = Utils.Clamp(acidosis-0.03*Main.Deltatime,0,100)
    alkalosis = Utils.Clamp(alkalosis-0.03*Main.Deltatime,0,100)
    if(acidosis > 1 and alkalosis > 1) then 
        local min = math.min(acidosis,alkalosis)
        acidosis = acidosis - min
        alkalosis = alkalosis - min
    end

    -- niche injuries and statuses
    local cerebral_edema = Utils.GetAfflictionStrength(character,"cerebral_edema",0)
    local prevcerebral_edema = cerebral_edema
    local stroke = Utils.GetAfflictionStrength(character,"stroke",0)
    local prevstroke = stroke
    local meningitis = Utils.GetAfflictionStrength(character,"meningitis",0)
    local prevmeningitis = meningitis
    local pcas = Utils.GetAfflictionStrength(character,"pcas",0)
    local prevpcas = pcas

    local pulmonary_embolism = Utils.GetAfflictionStrength(character,"pulmonary_embolism",0)
    local prevpulmonary_embolism = pulmonary_embolism
    local copd = Utils.GetAfflictionStrength(character,"pulmonary_copd",0)
    local prevcopd = copd
    local pulmonary_embolism = Utils.GetAfflictionStrength(character,"pulmonary_embolism",0)
    local prevpulmonary_embolism = pulmonary_embolism
    local deep_vein_thrombosis = Utils.GetAfflictionStrength(character,"deep_vein_thrombosis",0)
    local prevdeep_vein_thrombosis = deep_vein_thrombosis
    local pulmonary_edema = Utils.GetAfflictionStrength(character,"pulmonary_edema",0)
    local prevpulmonary_edema = pulmonary_edema

    local atherosclerosis = Utils.GetAfflictionStrength(character,"atherosclerosis",0)
    local prevatherosclerosis = atherosclerosis
    local atp_down = Utils.GetAfflictionStrength(character,"atp_down",0)
    local prevatp_down = atp_down
    local slicedthroat = Utils.GetAfflictionStrength(character,"slicedthroat",0)
    local prevslicedthroat = slicedthroat

    local heart_atp_down = Utils.GetAfflictionStrength(character,"heart_atp_down",0)
    local prevheart_atp_down = heart_atp_down
    local angina = Utils.GetAfflictionStrength(character,"angina",0)
    local prevangina = angina
    local coronary_a_d = Utils.GetAfflictionStrength(character,"coronary_a_d",0)
    local prevcoronary_a_d = coronary_a_d
    local heartattack = Utils.GetAfflictionStrength(character,"heartattack",0)
    local prevheartattack = heartattack
    heartattack = heartattack - Main.Deltatime
    local myocarditisinf = Utils.GetAfflictionStrength(character,"myocarditisinf",0)
    local prevmyocarditisinf = myocarditisinf
    local myocarditisvir = Utils.GetAfflictionStrength(character,"myocarditisvir",0)
    local prevmyocarditisvir = myocarditisvir

    local s_hematoma = Utils.GetAfflictionStrength(character,"s_hematoma",0)
    local prevs_hematoma = s_hematoma
    if(s_hematoma > 50) then s_hematoma=s_hematoma+0.5*Main.Deltatime end
    local s_hemorrhage = Utils.GetAfflictionStrength(character,"pneumothorax",0)
    local prevs_hemorrhage = s_hemorrhage
    if(s_hemorrhage > 30) then s_hemorrhage=s_hemorrhage+0.5*Main.Deltatime end
    local i_hemorrhage = Utils.GetAfflictionStrength(character,"i_hemorrhage",0)
    local previ_hemorrhage = i_hemorrhage
    if(i_hemorrhage > 30) then i_hemorrhage=i_hemorrhage+0.5*Main.Deltatime end
    local e_hematoma = Utils.GetAfflictionStrength(character,"e_hematoma",0)
    local preve_hematoma = e_hematoma
    if(e_hematoma > 0) then e_hematoma=e_hematoma+0.5*Main.Deltatime end

    local pneumothorax = Utils.GetAfflictionStrength(character,"pneumothorax",0)
    local prevpneumothorax = pneumothorax
    if(pneumothorax > 0) then pneumothorax=pneumothorax+0.5*Main.Deltatime end
    local tamponade = Utils.GetAfflictionStrength(character,"tamponade",0)
    local prevtamponade = tamponade
    if(tamponade > 0) then tamponade=tamponade+0.5*Main.Deltatime end
    local hemoshock = Utils.GetAfflictionStrength(character,"hemotransfusionshock",0)
    local seizure = Utils.GetAfflictionStrength(character,"seizure",0)
    local prevseizure= seizure
    seizure = seizure - Main.Deltatime
    local coma = Utils.GetAfflictionStrength(character,"coma",0)
    local prevcoma = coma
    coma = coma - Main.Deltatime/5
    local stun = Utils.GetAfflictionStrength(character,"stun",0)
    local prevstun = stun
    local slowdown = Utils.GetAfflictionStrength(character,"slowdown",0)
    local prevslowdown = slowdown
    local speedmultiplier = 1
    local traumaticshock = Utils.GetAfflictionStrength(character,"traumaticshock",0)
    
    -- Motor system
    local musclestrains = Utils.GetAfflictionStrength(character,"musclestrains",0)
    local prevmusclestrains = musclestrains
    local torn_l_t = Utils.GetAfflictionStrength(character,"torn_l_t",0)
    local prevtorn_l_t = torn_l_t
    
    -- Nerve system
    local nervedamage = Utils.GetAfflictionStrength(character,"nervedamage",0)
    local prevnervedamage = nervedamage
    local nerveintegrity = Utils.GetAfflictionStrength(character,"nerveintegrity",0)
    local prevnerveintegrity = nerveintegrity
    
    -- Right Eye
    local r_cornealdamage = Utils.GetAfflictionStrength(character,"r_cornealdamage",0)
    local prevr_cornealdamage = r_cornealdamage
    local r_retinaldamage = Utils.GetAfflictionStrength(character,"r_retinaldamagey",0)
    local prevr_retinaldamagey = r_retinaldamage
    local r_lensdamage = Utils.GetAfflictionStrength(character,"r_lensdamage",0)
    local prevr_lensdamage = r_lensdamage
    local r_vitreousremoval = Utils.GetAfflictionStrength(character,"r_vitreousremoval",0)
    local prevr_vitreousremoval = r_vitreousremoval
    local r_eyeremoval = Utils.GetAfflictionStrength(character,"r_eyeremoval",0)
    local prevr_eyeremoval = r_eyeremoval
    
    -- Left Eye
    local l_cornealdamage = Utils.GetAfflictionStrength(character,"l_cornealdamage",0)
    local prevl_cornealdamage = l_cornealdamage
    local l_retinaldamage = Utils.GetAfflictionStrength(character,"l_retinaldamagey",0)
    local prevr_letinaldamagey = l_retinaldamage
    local l_lensdamage = Utils.GetAfflictionStrength(character,"l_lensdamage",0)
    local prevl_lensdamage = l_lensdamage
    local l_vitreousremoval = Utils.GetAfflictionStrength(character,"l_vitreousremoval",0)
    local prevr_vitreousremoval = l_vitreousremoval
    local l_eyeremoval = Utils.GetAfflictionStrength(character,"l_eyeremoval",0)
    local prevl_eyeremoval = l_eyeremoval

    -- anesthesia and drugs
    local analgesia = Utils.GetAfflictionStrength(character,"analgesia",0)
    local anesthesia = Utils.GetAfflictionStrength(character,"anesthesia",0)
    local drunk = Utils.GetAfflictionStrength(character,"drunk",0)
    local adrenaline = Utils.GetAfflictionStrength(character,"afadrenaline",0)
    local thiamine = Utils.GetAfflictionStrength(character,"afthiamine",0)
    local streptokinase = Utils.GetAfflictionStrength(character,"afstreptokinase",0)
    local mannitol = Utils.GetAfflictionStrength(character,"afmannitol",0)
    local sedated = analgesia > 0 or anesthesia > 10 or drunk > 30 or stasis

    -- addiction
    local alcoholwithdrawal = Utils.GetAfflictionStrength(character,"alcoholwithdrawal",0)
    local withdrawal = math.max(
        Utils.GetAfflictionStrength(character,"opiatewithdrawal",0),
        Utils.GetAfflictionStrength(character,"chemwithdrawal",0),
        alcoholwithdrawal)
    local overdose = Utils.GetAfflictionStrength(character,"opiateoverdose",0)

    

    -- /// Calculate limbs ///
    local healMultiplier = NTC.GetMultiplier(character,"healingrate")
    local prelimbimmunity = immunity
    local clottingMultiplier = Utils.Clamp(1-liverdamage/100,0,1)*healMultiplier*Utils.Clamp(1-streptokinase,0,1)
    local bonegrowthCount = 0

    local function updateLimb(character,limbtype)

        local function isExtremity() 
            return not limbtype==LimbType.Torso and not limbtype==LimbType.Head
        end

        -- /// fetch stats ///

        local bandaged = Utils.GetAfflictionStrengthLimb(character,limbtype,"bandaged",0)
        local bandagedClamped = Utils.Clamp(bandaged,0,1)
        local prevbandaged = bandaged
        local dirtybandage = Utils.GetAfflictionStrengthLimb(character,limbtype,"dirtybandage",0)
        local prevdirtybandage = dirtybandage
        -- slowdown on bandage and gypsum
        if bandaged > 0.1 or dirtybandage > 0.1 then speedmultiplier = speedmultiplier * 0.9 end
        local gypsumd = Utils.Clamp(Utils.GetAfflictionStrengthLimb(character,limbtype,"gypsumcast",0),0,1)
        if (gypsumd > 0.1) then speedmultiplier = speedmultiplier * 0.8 end

        local ointmented = Utils.Clamp(Utils.GetAfflictionStrengthLimb(character,limbtype,"ointmented",0),0,1)
        local bonegrowth = Utils.Clamp(Utils.GetAfflictionStrengthLimb(character,limbtype,"bonegrowth",0),0,1)
        if (bonegrowth > 0.1) then bonegrowthCount = bonegrowthCount+1 end
        local bleeding = Utils.GetAfflictionStrengthLimb(character,limbtype,"bleeding",0)
        local prevbleeding = bleeding
        -- clotting modification
        if(bleeding > 0 and math.abs(clottingMultiplier-1) > 0.05) then bleeding = bleeding - (clottingMultiplier-1) * 0.1 * Main.Deltatime end

        -- physical damage types
        local burn = Utils.GetAfflictionStrengthLimb(character,limbtype,"burn",0)
        local prevburn = burn
        burn = burn - (prelimbimmunity/3000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local lacerations = Utils.GetAfflictionStrengthLimb(character,limbtype,"lacerations",0)
        local prevlacerations = lacerations
        lacerations = lacerations - (prelimbimmunity/3000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local gunshotwound = Utils.GetAfflictionStrengthLimb(character,limbtype,"gunshotwound",0)
        local prevgunshotwound = gunshotwound
        gunshotwound = gunshotwound - (prelimbimmunity/3000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local bitewounds = Utils.GetAfflictionStrengthLimb(character,limbtype,"bitewounds",0)
        local prevbitewounds = bitewounds
        bitewounds = bitewounds - (prelimbimmunity/3000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local explosiondamage = Utils.GetAfflictionStrengthLimb(character,limbtype,"explosiondamage",0)
        local prevexplosiondamage = explosiondamage
        explosiondamage = explosiondamage - (prelimbimmunity/3000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local blunttrauma = Utils.GetAfflictionStrengthLimb(character,limbtype,"blunttrauma",0)
        local prevblunttrauma = blunttrauma
        blunttrauma = blunttrauma - (prelimbimmunity/8000 + bandagedClamped*0.1)*healMultiplier*Main.Deltatime
        local internaldamage = Utils.GetAfflictionStrengthLimb(character,limbtype,"internaldamage",0)
        local previnternaldamage = internaldamage
        internaldamage = internaldamage - 0.05*healMultiplier*Main.Deltatime
        -- infection
        local infectedwound = Utils.GetAfflictionStrengthLimb(character,limbtype,"infectedwound",0)
        local previnfectedwound = infectedwound
        -- foreign bodies
        local foreignbody = Utils.GetAfflictionStrengthLimb(character,limbtype,"foreignbody",0)
        local prevforeignbody = foreignbody
        if(foreignbody < 15) then foreignbody = foreignbody-0.05*healMultiplier*Main.Deltatime end
        -- gangrene
        local gangrene = 0
        local prevgangrene = 0
        if(isExtremity()) then 
            gangrene = Utils.GetAfflictionStrengthLimb(character,limbtype,"gangrene",0)
            prevgangrene = gangrene
            if(gangrene < 15 and gangrene > 0) then gangrene = gangrene - 0.01*healMultiplier*Main.Deltatime end
            if(sepsis > 5) then gangrene = gangrene + Utils.BoolToNum(Utils.Chance(0.1+sepsis/300),1) * Main.Deltatime end
            local arteriesclamp = Utils.GetAfflictionStrengthLimb(character,limbtype,"arteriesclamp",0)
            if(arteriesclamp > 0) then gangrene = gangrene + Utils.BoolToNum(Utils.Chance(0.1),1) * 0.5 * Main.Deltatime end
        end

        -- /// calculate infection and immunity ///
        local hassym_inflammation = infectedwound > 10 or foreignbody > 15
        local infectindex = ( -prelimbimmunity/200 - bandagedClamped*1.5 - ointmented*3 + burn/20 + lacerations/40 + bitewounds/30 + gunshotwound/40 + explosiondamage/40 )*Main.Deltatime
        if(hassym_inflammation) then infectindex = infectindex-0.8*Main.Deltatime end
        local wounddamage = burn+lacerations+gunshotwound+bitewounds+explosiondamage
        if(dirtybandage > 10 and wounddamage > 5) then infectindex = infectindex+(wounddamage/40+dirtybandage/20)*Main.Deltatime end
        infectedwound = infectedwound + infectindex/5
        immunity = immunity - Utils.Clamp(infectindex/3,0,10)

        -- turning a bandage into a dirty bandage
        local bandageDirtifySpeed = 0.1 + wounddamage/100 + bleeding/20
        if bandaged > 0 then 
            bandaged=bandaged-bandageDirtifySpeed*Main.Deltatime 
            if bandaged <= 0 then 
                dirtybandage = math.max(dirtybandage,1)
                bandaged = 0
            end
        end
        if dirtybandage > 0 then dirtybandage=dirtybandage+bandageDirtifySpeed*Main.Deltatime end

        -- check for arterial cut triggers and foreign body sepsis
        local foreignbodycutchance = ((Utils.Minimum(foreignbody,20)/100)^4)*0.5
        if (bleeding > 80 or Utils.Chance(foreignbodycutchance)) then
            if(limbtype==LimbType.RightArm) then Utils.AddAfflictionLimb(character,"ra_arterialcut",limbtype,1)
            elseif(limbtype==LimbType.LeftArm) then Utils.AddAfflictionLimb(character,"la_arterialcut",limbtype,1)
            elseif(limbtype==LimbType.RightLeg) then Utils.AddAfflictionLimb(character,"rl_arterialcut",limbtype,1)
            elseif(limbtype==LimbType.LeftLeg) then Utils.AddAfflictionLimb(character,"ll_arterialcut",limbtype,1)
            elseif(limbtype==LimbType.Torso) then Utils.AddAfflictionLimb(character,"t_arterialcut",limbtype,1)
            elseif(limbtype==LimbType.Head) then Utils.AddAfflictionLimb(character,"h_arterialcut",limbtype,1)
            end
        end

        -- sepsis
        local sepsischance = Utils.Minimum(gangrene,15,0) / 400 + Utils.Minimum(infectedwound,50) / 1000 + foreignbodycutchance
        if(Utils.Chance(sepsischance)) then
            sepsis = sepsis + Main.Deltatime
        end

        -- check for bone death fracture triggers
        --if (bonegrowth <= 0.1 and bonedamage > 90 and Utils.Chance(0.01)) then 
        --    if(limbtype==LimbType.RightArm) then Utils.AddAfflictionLimb(character,"ra_fracture",limbtype,1)
        --    elseif(limbtype==LimbType.LeftArm) then Utils.AddAfflictionLimb(character,"la_fracture",limbtype,1)
        --    elseif(limbtype==LimbType.RightLeg) then Utils.AddAfflictionLimb(character,"rl_fracture",limbtype,1)
        --    elseif(limbtype==LimbType.LeftLeg) then Utils.AddAfflictionLimb(character,"ll_fracture",limbtype,1)
        --    elseif(limbtype==LimbType.Torso) then Utils.AddAfflictionLimb(character,"t_fracture",limbtype,1)
        --    elseif(limbtype==LimbType.Head) then
        --        if(Utils.Chance(0.5)) then Utils.AddAfflictionLimb(character,"h_fracture",limbtype,1)
        --        else Utils.AddAfflictionLimb(character,"n_fracture",limbtype,1) end
        --    end
        -- end

        -- check for spasm trigger
        if (seizure > 0.1) then 
            if(Utils.Chance(0.5)) then 
                Utils.AddAfflictionLimb(character,"spasm",limbtype,10)
            end
        end

        -- /// apply changes ///

        Utils.ApplyAfflictionChangeLimb(character,limbtype,"burn",burn,prevburn,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"bleeding",bleeding,prevbleeding,0,100)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"lacerations",lacerations,prevlacerations,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"gunshotwound",gunshotwound,prevgunshotwound,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"bitewounds",bitewounds,prevbitewounds,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"explosiondamage",explosiondamage,prevexplosiondamage,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"blunttrauma",blunttrauma,prevblunttrauma,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"internaldamage",internaldamage,previnternaldamage,0,200)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"foreignbody",foreignbody,prevforeignbody,0,100)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"infectedwound",infectedwound,previnfectedwound,0,100)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"gangrene",gangrene,prevgangrene,0,100)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"dirtybandage",dirtybandage,prevdirtybandage,0,100)
        Utils.ApplyAfflictionChangeLimb(character,limbtype,"bandaged",bandaged,prevbandaged,0,100)
    
        Utils.ApplySymptomLimb(character,limbtype,"inflammation",hassym_inflammation,true)
    end

    -- being in stasis completely halts activity in limbs
    if(not stasis) then
        updateLimb(character,LimbType.Torso)
        updateLimb(character,LimbType.Head)
        updateLimb(character,LimbType.LeftLeg)
        updateLimb(character,LimbType.RightLeg)
        updateLimb(character,LimbType.LeftArm)
        updateLimb(character,LimbType.RightArm)

        immunity = Utils.Clamp(immunity,1,100)
    end

    -- arm locking
    local la_n = Utils.GetAfflictionStrength(character,"la_n",0)
    local ra_n = Utils.GetAfflictionStrength(character,"ra_n",0)
    local la_m = Utils.GetAfflictionStrength(character,"la_m",0)
    local ra_m = Utils.GetAfflictionStrength(character,"ra_m",0)
    local la_fracture = Utils.GetAfflictionStrength(character,"la_fracture",0)
    local ra_fracture = Utils.GetAfflictionStrength(character,"ra_fracture",0)
    local tla_amputation = Utils.GetAfflictionStrength(character,"tla_amputation",0)
    local tra_amputation = Utils.GetAfflictionStrength(character,"tra_amputation",0)
    local sla_amputation = Utils.GetAfflictionStrength(character,"sla_amputation",0)
    local sra_amputation = Utils.GetAfflictionStrength(character,"sra_amputation",0)
    local ra_dislocation = Utils.GetAfflictionStrength(character,"dislocation3",0)
    local la_dislocation = Utils.GetAfflictionStrength(character,"dislocation4",0)
    local t_paralysis = Utils.GetAfflictionStrength(character,"t_paralysis",0)
    if(t_paralysis > 0) then speedmultiplier=0 end

    local lockleftarm = not NTC.GetSymptomFalse(character,"lockleftarm") and (NTC.GetSymptom(character,"lockleftarm") or la_n > 0 or la_m > 0 or (t_paralysis > 0 or tla_amputation > 0 or sla_amputation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.LeftArm,"bandaged",0) <= 0 and la_dislocation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.LeftArm,"gypsumcast",0) <= 0 and la_fracture > 0))
    local lockrightarm = not NTC.GetSymptomFalse(character,"lockrightarm") and (NTC.GetSymptom(character,"lockrightarm") or ra_n > 0 or ra_m > 0 or (t_paralysis > 0 or tra_amputation > 0 or sra_amputation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.RightArm,"bandaged",0) <= 0 and ra_dislocation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.RightArm,"gypsumcast",0) <= 0 and ra_fracture > 0))

    local leftlockitem = character.Inventory.FindItemByIdentifier("armlock2",false)
    local rightlockitem = character.Inventory.FindItemByIdentifier("armlock1",false)
    local leftarmlocked = leftlockitem ~= nil
    local rightarmlocked = rightlockitem ~= nil

    if(leftarmlocked and not lockleftarm) then Utils.RemoveItem(leftlockitem) end
    if(rightarmlocked and not lockrightarm) then Utils.RemoveItem(rightlockitem) end

    if(not leftarmlocked and lockleftarm) then Utils.ForceArmLock(character,"armlock2") end
    if(not rightarmlocked and lockrightarm) then Utils.ForceArmLock(character,"armlock1") end

    local lockhands = lockleftarm and lockrightarm

    -- leg function
    local ll_n = Utils.GetAfflictionStrength(character,"ll_n",0)
    local rl_n = Utils.GetAfflictionStrength(character,"rl_n",0)
    local ll_m = Utils.GetAfflictionStrength(character,"ll_m",0)
    local rl_m = Utils.GetAfflictionStrength(character,"rl_m",0)
    local ll_fracture = Utils.GetAfflictionStrength(character,"ll_fracture",0)
    local rl_fracture = Utils.GetAfflictionStrength(character,"rl_fracture",0)
    local tll_amputation = Utils.GetAfflictionStrength(character,"tll_amputation",0)
    local trl_amputation = Utils.GetAfflictionStrength(character,"trl_amputation",0)
    local sll_amputation = Utils.GetAfflictionStrength(character,"sll_amputation",0)
    local srl_amputation = Utils.GetAfflictionStrength(character,"srl_amputation",0)
    local rl_dislocation = Utils.GetAfflictionStrength(character,"dislocation1",0)
    local ll_dislocation = Utils.GetAfflictionStrength(character,"dislocation2",0)

    local lockleftleg = not NTC.GetSymptomFalse(character,"lockleftleg") and (NTC.GetSymptom(character,"lockleftleg") or ll_n > 0 or ll_m > 0 or (t_paralysis > 0 or tll_amputation > 0 or sll_amputation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.LeftLeg,"bandaged",0) <= 0 and ll_dislocation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.LeftLeg,"gypsumcast",0) <= 0 and ll_fracture > 0))
    local lockrightleg = not NTC.GetSymptomFalse(character,"lockrightleg") and (NTC.GetSymptom(character,"lockrightleg") or rl_n > 0 or rl_m > 0 or (t_paralysis > 0 or trl_amputation > 0 or srl_amputation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.RightLeg,"bandaged",0) <= 0 and rl_dislocation > 0) or (Utils.GetAfflictionStrengthLimb(character,LimbType.LeftLeg,"gypsumcast",0) <= 0 and rl_fracture > 0))

    -- wheelchair
    local outerwearItem = character.Inventory.GetItemAt(4)
    local usesWheelchair = outerwearItem ~= nil and outerwearItem.Prefab.Identifier.Value == "wheelchair"
    if usesWheelchair then
        lockleftleg = lockleftarm
        lockrightleg = lockrightarm
    end

    if(lockleftleg or lockrightleg) then speedmultiplier = speedmultiplier*0.5 end

    if(lockleftleg and lockrightleg) then stun = math.max(stun,5) end

    -- /// Calculate afflictions ///

    if(not stasis) then 

        -- bloodloss
        if internalbleeding > 0 then
            bloodloss = bloodloss + internalbleeding * (1/40) * Main.Deltatime
        end

        -- calculate new blood pressure
        local desiredbloodpressure =
            (bloodamount - tamponade/2) * -- halved if full tamponade
            (1+0.5*((liverdamage/100)*(liverdamage/100))) * -- elevated if full liver damage
            (1+0.5*((kidneydamage/100)*(kidneydamage/100))) * -- elevated if full kidney damage
            (1 + alcoholwithdrawal/200 ) * -- elevated if alcohol withdrawal
            ((100-traumaticshock)/100) -- none if full traumatic shock
            * NTC.GetMultiplier(character,"bloodpressure")

        local bloodpressurelerp = 0.2
        if(desiredbloodpressure>bloodpressure) then bloodpressurelerp = bloodpressurelerp/3 end
        bloodpressure = Utils.Clamp(Utils.Round(Utils.Lerp(bloodpressure,desiredbloodpressure,bloodpressurelerp)),5,200)

        -- /// calculate new hypoxemia and oxygen stuff ///

        if respiratoryarrest > 0 then oxygenlow = oxygenlow+10*Main.Deltatime end

        -- completely cancel out hypoxemia regeneration if penumothorax is full
        availableoxygen = math.min(availableoxygen,100-pneumothorax/2)
        
        local hypoxemiagain = NTC.GetMultiplier(character,"hypoxemiagain")
        local regularHypoxemiaChange = (availableoxygen-50) / 8
        if regularHypoxemiaChange > 0 then
            -- not enough oxygen, increase hypoxemia
            regularHypoxemiaChange = regularHypoxemiaChange * hypoxemiagain
        else
            regularHypoxemiaChange = regularHypoxemiaChange * 2
        end

        hypoxemia = Utils.Clamp(hypoxemia + (
            - math.min(0,(bloodpressure-80) / 3) * hypoxemiagain    -- loss because of low blood pressure (-? at 0 bp)
            - math.min(0,(bloodamount-60) / 4) * hypoxemiagain      -- loss because of low blood amount (-15 at 0 blood)
            - regularHypoxemiaChange                                -- change because of oxygen in lungs (-6.25 <> +12.5)
        )* Main.Deltatime,0,100)

        -- calculate new cerebralhypoxia
        cerebralhypoxia = cerebralhypoxia + 
            ( -0.1*healMultiplier +                     -- passive regen
            hypoxemia/100 +                             -- from hypoxemia
            Utils.Clamp(cerebral_edema,0,20)*0.1 +                  -- from cerebral edema
            sepsis/100*0.4 +                            -- from sepsis
            liverdamage/800 +                           -- from liverdamage
            kidneydamage/1000                             -- from kidneydamage
        )*NTC.GetMultiplier(character,"cerebralhypoxiagain") -- NTC multiplier
        * (1-Utils.Clamp(mannitol,0,0.5))                  -- half if mannitol
        * Main.Deltatime
        cerebralhypoxia = Utils.Clamp(cerebralhypoxia,0,200)

        -- /// calculate organ damage ///
        local specificOrganDamageHealMultiplier = NTC.GetMultiplier(character,"anyspecificorgandamage") + Utils.Clamp(thiamine,0,1)*4
        local neworgandamage = (sepsis/300 + hypoxemia/400 + math.max(rads-25,0)/400)*NTC.GetMultiplier(character,"anyorgandamage")*Main.Deltatime
        if(stasis) then neworgandamage=0 end
        local function organDamageCalc(damagevalue)
            if (damagevalue >= 99) then return 100 end
            return damagevalue - 0.01 * healMultiplier * specificOrganDamageHealMultiplier * Main.Deltatime
        end
        local function kidneyDamageCalc(damagevalue)
            if (damagevalue >= 99) then return 100 end
            if (damagevalue >= 50) then 
                if (damagevalue <= 51) then return damagevalue end
                return damagevalue - 0.01 * healMultiplier * specificOrganDamageHealMultiplier * Main.Deltatime 
            end
            return damagevalue - 0.02 * healMultiplier * specificOrganDamageHealMultiplier * Main.Deltatime
        end

        heartdamage = organDamageCalc(heartdamage + NTC.GetMultiplier(character,"heartdamagegain")*(neworgandamage + Utils.Clamp(heartattack,0,0.5) * Main.Deltatime))
        heartfibrosis = organDamageCalc(heartfibrosis + NTC.GetMultiplier(character,"heartfibrosis")*( Utils.Clamp(heartdamage,0,0.1) * Main.Deltatime))
        lungdamage = organDamageCalc(lungdamage + NTC.GetMultiplier(character,"lungdamagegain")*(neworgandamage + math.max(rads-25,0)/800*Main.Deltatime))
        lungfibrosis = organDamageCalc(lungfibrosis + NTC.GetMultiplier(character,"lungfibrosis")*( Utils.Clamp(lungdamage,0,0.1) * Main.Deltatime))
        liverdamage = organDamageCalc(liverdamage + NTC.GetMultiplier(character,"liverdamagegain")*neworgandamage)
        liverfibrosis = organDamageCalc(liverfibrosis + NTC.GetMultiplier(character,"liverfibrosis")*( Utils.Clamp(liverdamage,0,0.1) * Main.Deltatime))
        kidneydamage = kidneyDamageCalc(kidneydamage + NTC.GetMultiplier(character,"kidneydamagegain")*(neworgandamage + Utils.Clamp((bloodpressure-120)/160,0,0.5)*Main.Deltatime*0.5))
        kidneyfibrosis = organDamageCalc(kidneyfibrosis + NTC.GetMultiplier(character,"kidneyfibrosis")*( Utils.Clamp(kidneydamage,0,0.1) * Main.Deltatime))
        -- TODO: Bonedeath rework /// bonedamage = organDamageCalc(bonedamage + NTC.GetMultiplier(character,"bonedamagegain")*(sepsis/500 + hypoxemia/1000 + math.max(rads-25,0)/600)*Main.Deltatime)
        organdamage = organdamage + neworgandamage - 0.03 * healMultiplier * Main.Deltatime

        if(bonedamage < 90) then bonedamage = bonedamage - (0.05 + bonegrowthCount*0.3) * healMultiplier * Main.Deltatime
        elseif(bonegrowthCount >= 6) then bonedamage = bonedamage - 2 * Main.Deltatime end
        if(kidneydamage > 70) then bonedamage = bonedamage + (kidneydamage-70)/30*0.15*Main.Deltatime end
        
    end

    

    -- /// calculate symptoms ///
    -- I am deeply sorry for anyone unfortunate enough to stumble upon this behemoth of code

    if liverdamage >= 99 and not NTC.GetSymptom(character,"sym_hematemesis") and Utils.Chance(0.05) then
        -- if liver failed: 5% chance for 6-20 seconds of blood vomiting and internal bleeding
        NTC.SetSymptomTrue(character,"sym_hematemesis",math.random(3,10))
        internalbleeding = internalbleeding+2
    end
    if kidneydamage >= 60 and not NTC.GetSymptom(character,"sym_vomiting") and Utils.Chance((kidneydamage-60)/40*0.07) then
        -- at 60% kidney damage: 0% chance for vomiting
        -- at 100% kidney damage: 7% chance for vomiting
        NTC.SetSymptomTrue(character,"sym_vomiting",math.random(3,10))
    end

    local hassym_unconsciousness = not NTC.GetSymptomFalse(character,"sym_unconsciousness") and ( NTC.GetSymptom(character,"sym_unconsciousness") or stasis or removedbrain > 0 or (character.Vitality <= 0 and not Utils.HasAbilityFlag(character,12)) or cerebralhypoxia > 30 or coma > 15 or hypoxemia > 20 or t_arterialcut or seizure > 0.1 )
    local hassym_tachycardia = not NTC.GetSymptomFalse(character,"tachycardia") and asys <= 0 and vt > 1 or vf > 1 and (NTC.GetSymptom(character,"tachycardia") or sepsis > 20 or bloodamount < 60 or bloodpressure < 80 or acidosis > 20 or pneumothorax > 30 or t_arterialcut or adrenaline > 1 or alcoholwithdrawal > 75)
    local hassym_hyperventilation = not NTC.GetSymptomFalse(character,"hyperventilation") and respiratoryarrest < 1 and (NTC.GetSymptom(character,"hyperventilation") or hypoxemia > 10 or bloodpressure < 80 or pneumothorax > 15 or sepsis > 15)
    local hassym_hypoventilation = not NTC.GetSymptomFalse(character,"hypoventilation") and respiratoryarrest < 1 and (NTC.GetSymptom(character,"hypoventilation") or analgesia > 20 or anesthesia > 40)
    if(hassym_hyperventilation and hassym_hypoventilation) then 
        hassym_hyperventilation = false
        hassym_hypoventilation = false
    end
    local hassym_autometamorphopsia
    local hassym_blindness
    local hassym_causalgia
    local hassym_hyperpathy
    local hassym_phantom_pains
    local hassym_muteness
    local hassym_dyspnea = not NTC.GetSymptomFalse(character,"dyspnea") and respiratoryarrest < 1 and (NTC.GetSymptom(character,"dyspnea") or heartattack > 1 or heartdamage > 80 or hypoxemia > 20 or lungdamage > 45 or pneumothorax > 40 or tamponade > 10 or (hemoshock>0 and hemoshock < 70))
    local hassym_cough = not NTC.GetSymptomFalse(character,"sym_cough") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_cough") or lungdamage > 50 or heartdamage > 50 or tamponade > 20)
    local hassym_paleskin = not NTC.GetSymptomFalse(character,"sym_paleskin") and (NTC.GetSymptom(character,"sym_paleskin") or bloodamount < 60 or bloodpressure < 50)
    local hassym_lightheadedness = not NTC.GetSymptomFalse(character,"sym_lightheadedness") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_lightheadedness") or bloodpressure < 60)
    local hassym_blurredvision = not NTC.GetSymptomFalse(character,"sym_blurredvision") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_blurredvision") or bloodpressure < 55)
    local hassym_confusion = not NTC.GetSymptomFalse(character,"sym_confusion") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_confusion") or acidosis > 15 or bloodpressure < 30 or hypoxemia > 50 or sepsis > 40 or alcoholwithdrawal > 80)
    local hassym_headache = not NTC.GetSymptomFalse(character,"sym_headache") and not hassym_unconsciousness and not sedated and (NTC.GetSymptom(character,"sym_headache") or bloodamount < 50 or acidosis > 20 or cerebral_edema > 1 or hypoxemia > 40 or bloodpressure < 60 or alcoholwithdrawal > 50 or Utils.HasAffliction(character,"h_fracture",1))
    local hassym_legswelling = not NTC.GetSymptomFalse(character,"sym_legswelling") and Utils.GetAfflictionStrength(character,"rl_cyber",0) < 0.1 and (NTC.GetSymptom(character,"sym_legswelling") or liverdamage > 40 or kidneydamage > 60 or heartdamage > 80)
    local hassym_weakness = not NTC.GetSymptomFalse(character,"sym_weakness") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_weakness") or tamponade > 30 or bloodamount < 40 or acidosis > 35)
    local hassym_wheezing = not NTC.GetSymptomFalse(character,"sym_wheezing") and respiratoryarrest < 1 and (NTC.GetSymptom(character,"sym_wheezing") or (hemoshock>0 and hemoshock < 90))
    local hassym_vomiting = not NTC.GetSymptomFalse(character,"sym_vomiting") and (NTC.GetSymptom(character,"sym_vomiting") or drunk > 100 or (hemoshock>0 and hemoshock < 40) or alcoholwithdrawal > 60)
    local hassym_nausea = not NTC.GetSymptomFalse(character,"sym_nausea") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_nausea") or kidneydamage > 60 or rads > 80 or (hemoshock>0 and hemoshock < 90) or withdrawal > 40)
    local hassym_vomitingblood = not NTC.GetSymptomFalse(character,"sym_hematemesis") and (NTC.GetSymptom(character,"sym_hematemesis") or internalbleeding > 50)
    local hassym_fever = not NTC.GetSymptomFalse(character,"sym_fever") and (NTC.GetSymptom(character,"sym_fever") or sepsis > 5 or alcoholwithdrawal > 90)
    local hassym_abdomdiscomfort = not NTC.GetSymptomFalse(character,"sym_abdomdiscomfort") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_abdomdiscomfort") or liverdamage > 65)
    local hassym_bloating = not NTC.GetSymptomFalse(character,"sym_bloating") and (NTC.GetSymptom(character,"sym_bloating") or liverdamage > 50)
    local hassym_jaundice = not NTC.GetSymptomFalse(character,"sym_jaundice") and (NTC.GetSymptom(character,"sym_jaundice") or liverdamage > 80)
    local hassym_sweating = not NTC.GetSymptomFalse(character,"sym_sweating") and (NTC.GetSymptom(character,"sym_sweating") or heartattack > 1 or withdrawal > 30)
    local hassym_palpitations = not NTC.GetSymptomFalse(character,"sym_palpitations") and asys < 1 and (NTC.GetSymptom(character,"sym_palpitations") or alkalosis > 20)
    local hassym_craving = not NTC.GetSymptomFalse(character,"sym_craving") and not hassym_unconsciousness and (NTC.GetSymptom(character,"sym_craving") or withdrawal > 20)
    local hassym_pain_abdominal = not NTC.GetSymptomFalse(character,"pain_abdominal") and not hassym_unconsciousness and not sedated and (NTC.GetSymptom(character,"pain_abdominal") or (hemoshock>0 and hemoshock < 80) or t_arterialcut)
    local hassym_pain_chest = not NTC.GetSymptomFalse(character,"pain_chest") and not hassym_unconsciousness and not sedated and (NTC.GetSymptom(character,"pain_chest") or (hemoshock>0 and hemoshock < 60) or t_fracture or t_arterialcut)

    local triggersym_seizure = not NTC.GetSymptomFalse(character,"triggersym_seizure") and not stasis and (NTC.GetSymptom(character,"triggersym_seizure") or (cerebral_edema > 1 and Utils.Chance(0.05)) or (acidosis > 60 and Utils.Chance(0.05)) or (alkalosis > 60 and Utils.Chance(0.05)) or Utils.Chance(Utils.Minimum(rads,50,0)/200*0.1) or (alcoholwithdrawal > 50 and Utils.Chance(alcoholwithdrawal/1000)))
    local triggersym_coma = not NTC.GetSymptomFalse(character,"triggersym_coma") and not stasis and (NTC.GetSymptom(character,"triggersym_coma") or (atp_down > 1 and Utils.Chance(0.05)) or (cerebral_edema > 1 and Utils.Chance(0.05)) or (acidosis > 60 and Utils.Chance(0.05+(acidosis-60)/100)))
    local triggersym_stroke = not NTC.GetSymptomFalse(character,"triggersym_stroke") and not stasis and (NTC.GetSymptom(character,"triggersym_stroke") or (bloodpressure > 150 and Utils.Chance((bloodpressure-150)/50*0.02+Utils.Clamp(streptokinase,0,1)*0.05)))
    local triggersym_heartattack = not NTC.GetSymptomFalse(character,"triggersym_heartattack") and not stasis and streptokinase <= 0 and (NTC.GetSymptom(character,"triggersym_heartattack") or (bloodpressure > 150 and Utils.Chance((bloodpressure-150)/50*0.02)))
    local triggersym_vt = not NTC.GetSymptomFalse(character,"triggersym_vt") and (NTC.GetSymptom(character,"triggersym_vt") and asys <= 0 and (traumaticshock > 20 and Utils.Chance(0.1)) or ((coma > 50 or bloodpressure < 20) and Utils.Chance(0.1)) or (hypoxemia > 80 and Utils.Chance(0.05)))
    local triggersym_asys = not NTC.GetSymptomFalse(character,"triggersym_asys") and (NTC.GetSymptom(character,"triggersym_asys") and vf and vt <= 0 and stasis or removedheart > 0 or removedbrain > 0 or (heartdamage > 99 and Utils.Chance(0.3)) or (coma > 80)and Utils.Chance(0.05))
    local triggersym_respiratoryarrest = not NTC.GetSymptomFalse(character,"triggersym_respiratoryarrest") and (NTC.GetSymptom(character,"triggersym_respiratoryarrest") or stasis or removedlung > 0 or removedbrain > 0 or (lungdamage > 99 and Utils.Chance(0.3)) or (traumaticshock > 10 and Utils.Chance(0.1)) or ((cerebralhypoxia > 100 or hypoxemia > 70) and Utils.Chance(0.1)))

    

    -- /// do some post-symptom calculations ///

    acidosis = acidosis + (Utils.BoolToNum(hassym_hypoventilation,1) * 0.09 + math.max(0,kidneydamage - 80)/20*0.1) * Main.Deltatime
    alkalosis = alkalosis + (Utils.BoolToNum(hassym_hyperventilation,1) * 0.09) * Main.Deltatime
    stroke = stroke - (1/20)*clottingMultiplier* Main.Deltatime

    if(hassym_vomiting) then speedmultiplier = speedmultiplier*0.8 end
    if(hassym_nausea) then speedmultiplier = speedmultiplier*0.9 end
    if(anesthesia > 0) then speedmultiplier = speedmultiplier*0.5 end
    if(overdose > 50) then speedmultiplier = speedmultiplier*0.5 end

    if(withdrawal > 80) then speedmultiplier = speedmultiplier*0.5
    elseif(withdrawal > 40) then speedmultiplier = speedmultiplier*0.7
    elseif(withdrawal > 20) then speedmultiplier = speedmultiplier*0.9 end

    if(drunk > 80) then speedmultiplier = speedmultiplier*0.5
    elseif(drunk > 40) then speedmultiplier = speedmultiplier*0.7
    elseif(drunk > 20) then speedmultiplier = speedmultiplier*0.8 end

    speedmultiplier = speedmultiplier * NTC.GetSpeedMultiplier(character)
    slowdown = Utils.Clamp(100 * (1-speedmultiplier),0,100)

    -- /// Apply changes ///

    Utils.ApplyAfflictionChange(character,"oxygenlow",oxygenlow,prevoxygenlow,0,200)
    Utils.ApplyAfflictionChange(character,"bloodloss",bloodloss,prevbloodloss,0,200)
    Utils.ApplyAfflictionChange(character,"bloodpressure",bloodpressure,prevbloodpressure,0,200)
    Utils.ApplyAfflictionChange(character,"hypoxemia",hypoxemia,prevhypoxemia,0,100)
    Utils.ApplyAfflictionChange(character,"heartfibrosis",heartfibrosis,prevheartfibrosis,0,100)
    Utils.ApplyAfflictionChange(character,"lungfibrosis",lungfibrosis,prevlungfibrosis,0,100)
    Utils.ApplyAfflictionChange(character,"liverfibrosis",liverfibrosis,prevliverfibrosis,0,100)
    Utils.ApplyAfflictionChange(character,"kidneyfibrosis",kidneyfibrosis,prevkidneyfibrosis,0,100)
    Utils.ApplyAfflictionChange(character,"heartdamage",heartdamage,prevheartdamage,0,100)
    Utils.ApplyAfflictionChange(character,"lungdamage",lungdamage,prevlungdamage,0,100)
    Utils.ApplyAfflictionChange(character,"liverdamage",liverdamage,prevliverdamage,0,100)
    Utils.ApplyAfflictionChange(character,"kidneydamage",kidneydamage,prevkidneydamage,0,100)
    Utils.ApplyAfflictionChange(character,"bonedamage",bonedamage,prevbonedamage,0,100)
    Utils.ApplyAfflictionChange(character,"organdamage",organdamage,prevorgandamage,0,200)
    Utils.ApplyAfflictionChange(character,"sepsis",sepsis,prevsepsis,0,100)
    Utils.ApplyAfflictionChange(character,"cerebralhypoxia",cerebralhypoxia,prevcerebralhypoxia,0,200)
    Utils.ApplyAfflictionChange(character,"immunity",immunity,previmmunity,1,100)
    Utils.ApplyAfflictionChange(character,"radiationsickness",rads,prevrads,0,200)
    Utils.ApplyAfflictionChange(character,"internalbleeding",internalbleeding,previnternalbleeding,0,100)
    Utils.ApplyAfflictionChange(character,"acidosis",acidosis,prevacidosis,0,100)
    Utils.ApplyAfflictionChange(character,"alkalosis",alkalosis,prevalkalosis,0,100)
    Utils.ApplyAfflictionChange(character,"pneumothorax",pneumothorax,prevpneumothorax,0,100)
    Utils.ApplyAfflictionChange(character,"tamponade",tamponade,prevtamponade,0,100)
    Utils.ApplyAfflictionChange(character,"stun",stun,prevstun,0,100)
    Utils.ApplyAfflictionChange(character,"slowdown",slowdown,prevslowdown,0,100)

    Utils.ApplyAfflictionChange(character,"heartattack",heartattack + Utils.BoolToNum(triggersym_heartattack,50),prevheartattack,0,100)
    Utils.ApplyAfflictionChange(character,"seizure",seizure + Utils.BoolToNum(triggersym_seizure,10),prevseizure,0,100)
    Utils.ApplyAfflictionChange(character,"stroke",stroke + Utils.BoolToNum(triggersym_stroke,5),prevstroke,0,100)
    Utils.ApplyAfflictionChange(character,"coma",coma + Utils.BoolToNum(triggersym_coma,14),prevcoma,0,100)
    Utils.ApplyAfflictionChange(character,"asys",asys + Utils.BoolToNum(triggersym_asys,10),prevasys,0,10)
    Utils.ApplyAfflictionChange(character,"vt",vt + Utils.BoolToNum(triggersym_vt,10),prevvt,0,10)
    Utils.ApplyAfflictionChange(character,"respiratoryarrest",respiratoryarrest + Utils.BoolToNum(triggersym_respiratoryarrest,10),prevrespiratoryarrest,0,10)

    -- /// Apply symptoms ///

    Utils.ApplySymptom(character,"sym_unconsciousness",hassym_unconsciousness,true)
    Utils.ApplySymptom(character,"givein",hassym_unconsciousness,true)
    if(hassym_unconsciousness) then Utils.SetAffliction(character,"stun",7) end
    Utils.ApplySymptom(character,"tachycardia",hassym_tachycardia,true)
    Utils.ApplySymptom(character,"hyperventilation",hassym_hyperventilation,true)
    Utils.ApplySymptom(character,"hypoventilation",hassym_hypoventilation,true)
    Utils.ApplySymptom(character,"dyspnea",hassym_dyspnea,true)
    Utils.ApplySymptom(character,"sym_cough",hassym_cough,true)
    Utils.ApplySymptom(character,"sym_paleskin",hassym_paleskin,true)
    Utils.ApplySymptom(character,"sym_lightheadedness",hassym_lightheadedness,true)
    Utils.ApplySymptom(character,"sym_blurredvision",hassym_blurredvision,true)
    Utils.ApplySymptom(character,"sym_blindness",hassym_blindness,true)
    Utils.ApplySymptom(character,"sym_autometamorphopsia",hassym_autometamorphopsia,true)
    Utils.ApplySymptom(character,"sym_hyperpathy",hassym_hyperpathy,true)
    Utils.ApplySymptom(character,"sym_causalgia",hassym_causalgia,true)
    Utils.ApplySymptom(character,"sym_phantom_pains",hassym_phantom_pains,true)
    Utils.ApplySymptom(character,"sym_muteness",hassym_muteness,true)
    Utils.ApplySymptom(character,"sym_confusion",hassym_confusion,true)
    Utils.ApplySymptom(character,"sym_headache",hassym_headache,true)
    Utils.ApplySymptom(character,"sym_legswelling",hassym_legswelling,true)
    Utils.ApplySymptom(character,"sym_weakness",hassym_weakness,true)
    Utils.ApplySymptom(character,"sym_wheezing",hassym_wheezing,true)
    Utils.ApplySymptom(character,"sym_vomiting",hassym_vomiting,true)
    Utils.ApplySymptom(character,"sym_nausea",hassym_nausea,true)
    Utils.ApplySymptom(character,"sym_hematemesis",hassym_vomitingblood,true)
    Utils.ApplySymptom(character,"fever",hassym_fever,true)
    Utils.ApplySymptom(character,"sym_abdomdiscomfort",hassym_abdomdiscomfort,true)
    Utils.ApplySymptom(character,"sym_bloating",hassym_bloating,true)
    Utils.ApplySymptom(character,"sym_jaundice",hassym_jaundice,true)
    Utils.ApplySymptom(character,"sym_sweating",hassym_sweating,true)
    Utils.ApplySymptom(character,"sym_palpitations",hassym_palpitations,true)
    Utils.ApplySymptom(character,"sym_craving",hassym_craving,true)
    Utils.ApplySymptom(character,"pain_abdominal",hassym_pain_abdominal,true)
    Utils.ApplySymptom(character,"pain_chest",hassym_pain_chest,true)
    Utils.ApplySymptom(character,"lockedhands",lockhands,true)

    if Utils.GetAfflictionStrength(character,"luabotomy",0) >= 1 then
        Utils.SetAffliction(character,"luabotomy",0)
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

function Main.TickUpdate() 
    for key,value in pairs(Main.tickTasks) do 

        value.duration = value.duration-1
        if value.duration <= 0 then 
            Main.tickTasks[key]=nil
        end
    end
end

Main.tickTasks = {}
Main.tickTaskID = 0
function Main.AddTickTask(type,duration,character)
    local newtask = {}
    newtask.type=type
    newtask.duration=duration
    newtask.character=character
    Main.tickTasks[Main.tickTaskID]=newtask
    Main.tickTaskID = Main.tickTaskID+1
end