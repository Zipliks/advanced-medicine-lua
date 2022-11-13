---@meta
---@class Barotrauma.CharacterHealth : System.Object
---`Field NonPublic Instance`
---@field minVitality System.Single|number
---`Field Public Instance`
---@field Unkillable System.Boolean|boolean
---`Field Private Instance`
---@field limbHealths System.Collections.Generic.List*1Barotrauma*CharacterHealth*LimbHealth|Barotrauma.CharacterHealth.LimbHealth[]
---`Field Private Instance`
---@field afflictions System.Collections.Generic.Dictionary*1Barotrauma*Affliction*1Barotrauma*CharacterHealth*LimbHealth|{[Barotrauma.Affliction]:Barotrauma.CharacterHealth.LimbHealth}
---`Field Private Instance`
---@field irremovableAfflictions System.Collections.Generic.HashSet*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field bloodlossAffliction Barotrauma.Affliction
---`Field Private Instance`
---@field oxygenLowAffliction Barotrauma.Affliction
---`Field Private Instance`
---@field pressureAffliction Barotrauma.Affliction
---`Field Private Instance`
---@field stunAffliction Barotrauma.Affliction
---`Field Private Instance`
---@field vitality System.Single|number
---`Field Public Instance`
---@field DefaultFaceTint Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field Character Barotrauma.Character
---`Field Private Instance`
---@field matchingAfflictions System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field afflictionsCopy System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field allAfflictions System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field afflictionTags System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field activeAfflictions System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field limbAfflictions System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*CharacterHealth*LimbHealth*2Barotrauma*Affliction|System.ValueTuple*1Barotrauma*CharacterHealth*LimbHealth*1Barotrauma*Affliction[]
---`Field Private Static`
---@field afflictionsToRemove System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Static`
---@field afflictionsToUpdate System.Collections.Generic.List*1System*Collections*Generic*KeyValuePair*2Barotrauma*Affliction*2Barotrauma*CharacterHealth*LimbHealth|System.Collections.Generic.KeyValuePair*1Barotrauma*Affliction*1Barotrauma*CharacterHealth*LimbHealth[]
---`Field Public Static`
---@field InsufficientOxygenThreshold System.Single|number
---`Field Public Static`
---@field LowOxygenThreshold System.Single|number
---`Getter NonPublic Instance`
---<br/>`Setter NonPublic Instance`
---@field UnmodifiedMaxVitality System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DoesBleed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseHealthWindow System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CrushDepth System.Single|number
---`Getter Public Instance`
---@field BloodlossAffliction Barotrauma.Affliction
---`Getter Public Instance`
---@field IsUnconscious System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PressureKillDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Vitality System.Single|number
---`Getter Public Instance`
---@field HealthPercentage System.Single|number
---`Getter Public Instance`
---@field MaxVitality System.Single|number
---`Getter Public Instance`
---@field MinVitality System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FaceTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BodyTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OxygenAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BloodlossAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Stun System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StunTimer System.Single|number
---`Getter Public Instance`
---@field PressureAffliction Barotrauma.Affliction
_G['CharacterHealth'] = {}

---`Method Public Instance`
---@param healthElement System.Xml.Linq.XElement
_G['CharacterHealth'].Save = function(healthElement) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@param afflictionPredicate? System.Func*1Barotrauma*AfflictionPrefab*1System*Boolean|(fun(arg:Barotrauma.AfflictionPrefab):System.Boolean|boolean)
_G['CharacterHealth'].Load = function(element, afflictionPredicate) end

---`Method Private Instance`
_G['CharacterHealth'].InitIrremovableAfflictions = function() end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IReadOnlyCollection*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@param limbHealthFilter System.Func*1Barotrauma*Affliction*1System*Boolean|(fun(arg:Barotrauma.Affliction):System.Boolean|boolean)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
_G['CharacterHealth'].GetAllAfflictions = function(limbHealthFilter) end

---`Method Private Instance`
---@param mergeSameAfflictions System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
_G['CharacterHealth'].GetAllAfflictions = function(mergeSameAfflictions) end

---`Method Private Instance`
---@param limbHealth Barotrauma.CharacterHealth.LimbHealth
---@return System.Single|number
_G['CharacterHealth'].GetTotalDamage = function(limbHealth) end

---`Method Private Instance`
---@overload fun(limb:Barotrauma.Limb):Barotrauma.CharacterHealth.LimbHealth
---@param affliction Barotrauma.Affliction
---@return Barotrauma.CharacterHealth.LimbHealth
_G['CharacterHealth'].GetMatchingLimbHealth = function(affliction) end

---`Method Public Instance`
---@overload fun(identifier:System.String|string, allowLimbAfflictions?:System.Boolean|boolean):Barotrauma.Affliction
---@overload fun(identifier:Barotrauma.Identifier, allowLimbAfflictions?:System.Boolean|boolean):Barotrauma.Affliction
---@overload fun(identifier:System.String|string, allowLimbAfflictions?:System.Boolean|boolean):Barotrauma.CharacterHealth.T
---@param identifier System.String|string
---@param limb Barotrauma.Limb
---@return Barotrauma.Affliction
_G['CharacterHealth'].GetAffliction = function(identifier, limb) end

---`Method Private Instance`
---@param predicate System.Func*1Barotrauma*Affliction*1System*Boolean|(fun(arg:Barotrauma.Affliction):System.Boolean|boolean)
---@param allowLimbAfflictions? System.Boolean|boolean
---@return Barotrauma.Affliction
_G['CharacterHealth'].GetAffliction = function(predicate, allowLimbAfflictions) end

---`Method Public Instance`
---@param afflictionType Barotrauma.Identifier
---@param allowLimbAfflictions? System.Boolean|boolean
---@return Barotrauma.Affliction
_G['CharacterHealth'].GetAfflictionOfType = function(afflictionType, allowLimbAfflictions) end

---`Method Public Instance`
---@param affliction Barotrauma.Affliction
---@return Barotrauma.Limb
_G['CharacterHealth'].GetAfflictionLimb = function(affliction) end

---`Method Public Instance`
---@overload fun(afflictionType:System.String|string, limb:Barotrauma.Limb, requireLimbSpecific:System.Boolean|boolean):System.Single|number
---@param afflictionType System.String|string
---@param allowLimbAfflictions? System.Boolean|boolean
---@return System.Single|number
_G['CharacterHealth'].GetAfflictionStrength = function(afflictionType, allowLimbAfflictions) end

---`Method Public Instance`
---@param targetLimb Barotrauma.Limb
---@param affliction Barotrauma.Affliction
---@param allowStacking? System.Boolean|boolean
_G['CharacterHealth'].ApplyAffliction = function(targetLimb, affliction, allowStacking) end

---`Method Public Instance`
---@param afflictionPrefab Barotrauma.AfflictionPrefab
---@return System.Single|number
_G['CharacterHealth'].GetResistance = function(afflictionPrefab) end

---`Method Public Instance`
---@param statType Barotrauma.StatTypes
---@return System.Single|number
_G['CharacterHealth'].GetStatValue = function(statType) end

---`Method Public Instance`
---@param flagType Barotrauma.AbilityFlags
---@return System.Boolean|boolean
_G['CharacterHealth'].HasFlag = function(flagType) end

---`Method Public Instance`
---@param amount System.Single|number
---@param treatmentAction? System.Nullable*1Barotrauma*ActionType
_G['CharacterHealth'].ReduceAllAfflictionsOnAllLimbs = function(amount, treatmentAction) end

---`Method Public Instance`
---@param affliction Barotrauma.Identifier
---@param amount System.Single|number
---@param treatmentAction? System.Nullable*1Barotrauma*ActionType
_G['CharacterHealth'].ReduceAfflictionOnAllLimbs = function(affliction, amount, treatmentAction) end

---`Method Private Instance`
---@param targetLimb Barotrauma.Limb
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
_G['CharacterHealth'].GetAfflictionsForLimb = function(targetLimb) end

---`Method Public Instance`
---@param targetLimb Barotrauma.Limb
---@param amount System.Single|number
---@param treatmentAction? System.Nullable*1Barotrauma*ActionType
_G['CharacterHealth'].ReduceAllAfflictionsOnLimb = function(targetLimb, amount, treatmentAction) end

---`Method Public Instance`
---@param targetLimb Barotrauma.Limb
---@param affliction Barotrauma.Identifier
---@param amount System.Single|number
---@param treatmentAction? System.Nullable*1Barotrauma*ActionType
_G['CharacterHealth'].ReduceAfflictionOnLimb = function(targetLimb, affliction, amount, treatmentAction) end

---`Method Private Instance`
---@param amount System.Single|number
---@param treatmentAction System.Nullable*1Barotrauma*ActionType
_G['CharacterHealth'].ReduceMatchingAfflictions = function(amount, treatmentAction) end

---`Method Public Instance`
---@param hitLimb Barotrauma.Limb
---@param attackResult Barotrauma.AttackResult
---@param allowStacking? System.Boolean|boolean
_G['CharacterHealth'].ApplyDamage = function(hitLimb, attackResult, allowStacking) end

---`Method Public Instance`
---@param damageAmount System.Single|number
---@param bleedingDamageAmount System.Single|number
---@param burnDamageAmount System.Single|number
_G['CharacterHealth'].SetAllDamage = function(damageAmount, bleedingDamageAmount, burnDamageAmount) end

---`Method Public Instance`
---@param limb Barotrauma.Limb
---@param afflictionType? System.String|string
---@return System.Single|number
_G['CharacterHealth'].GetLimbDamage = function(limb, afflictionType) end

---`Method Public Instance`
_G['CharacterHealth'].RemoveAllAfflictions = function() end

---`Method Public Instance`
_G['CharacterHealth'].RemoveNegativeAfflictions = function() end

---`Method Private Instance`
---@overload fun(limb:Barotrauma.Limb, newAffliction:Barotrauma.Affliction, allowStacking?:System.Boolean|boolean)
---@param limbHealth Barotrauma.CharacterHealth.LimbHealth
---@param newAffliction Barotrauma.Affliction
---@param allowStacking? System.Boolean|boolean
_G['CharacterHealth'].AddLimbAffliction = function(limbHealth, newAffliction, allowStacking) end

---`Method Private Instance`
---@param newAffliction Barotrauma.Affliction
---@param allowStacking? System.Boolean|boolean
_G['CharacterHealth'].AddAffliction = function(newAffliction, allowStacking) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['CharacterHealth'].Update = function(deltaTime) end

---`Method Public Instance`
_G['CharacterHealth'].ForceUpdateVisuals = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['CharacterHealth'].UpdateDamageReductions = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['CharacterHealth'].UpdateOxygen = function(deltaTime) end

---`Method Public Instance`
---@param newVitality System.Single|number
_G['CharacterHealth'].SetVitality = function(newVitality) end

---`Method Public Instance`
_G['CharacterHealth'].CalculateVitality = function() end

---`Method Private Instance`
---@param affliction Barotrauma.Affliction
---@param limbHealth Barotrauma.CharacterHealth.LimbHealth
---@return System.Single|number
_G['CharacterHealth'].GetVitalityMultiplier = function(affliction, limbHealth) end

---`Method Private Instance`
---@param affliction Barotrauma.Affliction
---@return System.Single|number
_G['CharacterHealth'].GetVitalityDecreaseWithVitalityMultipliers = function(affliction) end

---`Method Private Instance`
_G['CharacterHealth'].Kill = function() end

---`Method Public Instance`
---@param type Barotrauma.ActionType
_G['CharacterHealth'].ApplyAfflictionStatusEffects = function(type) end

---`Method Public Instance`
---@return System.ValueTuple*1Barotrauma*CauseOfDeathType*1Barotrauma*Affliction
_G['CharacterHealth'].GetCauseOfDeath = function() end

---`Method Public Instance`
---@param treatmentSuitability System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---@param normalize System.Boolean|boolean
---@param user Barotrauma.Character
---@param limb? Barotrauma.Limb
---@param ignoreHiddenAfflictions? System.Boolean|boolean
---@param predictFutureDuration? System.Single|number
_G['CharacterHealth'].GetSuitableTreatments = function(treatmentSuitability, normalize, user, limb, ignoreHiddenAfflictions, predictFutureDuration) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param afflictions System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['CharacterHealth'].GetActiveAfflictionTags = function(afflictions) end

---`Method Public Instance`
---@param affliction Barotrauma.Affliction
---@param predictFutureDuration System.Single|number
---@param limb? Barotrauma.Limb
---@return System.Single|number
_G['CharacterHealth'].GetPredictedStrength = function(affliction, predictFutureDuration, limb) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['CharacterHealth'].ServerWrite = function(msg) end

---`Method Public Instance`
_G['CharacterHealth'].Remove = function() end

---`Method Public Static`
---@param afflictions System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@param excludeBuffs? System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
_G['CharacterHealth'].SortAfflictionsBySeverity = function(afflictions, excludeBuffs) end

---`Constructor Private Static`
---@overload fun():Barotrauma.CharacterHealth
---@overload fun(character:Barotrauma.Character):Barotrauma.CharacterHealth
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.Character
---@param limbHealthElement? Barotrauma.ContentXElement
---@return Barotrauma.CharacterHealth
_G['CharacterHealth'] = function(element, character, limbHealthElement) end

---`Constructor Private Static`
---@overload fun():Barotrauma.CharacterHealth
---@overload fun(character:Barotrauma.Character):Barotrauma.CharacterHealth
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.Character
---@param limbHealthElement? Barotrauma.ContentXElement
---@return Barotrauma.CharacterHealth
_G['CharacterHealth'].__new = function(element, character, limbHealthElement) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterHealth
---@overload fun(character:Barotrauma.Character):Barotrauma.CharacterHealth
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.Character
---@param limbHealthElement? Barotrauma.ContentXElement
---@return Barotrauma.CharacterHealth
_G['CharacterHealth'] = function(element, character, limbHealthElement) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterHealth
---@overload fun(character:Barotrauma.Character):Barotrauma.CharacterHealth
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.Character
---@param limbHealthElement? Barotrauma.ContentXElement
---@return Barotrauma.CharacterHealth
_G['CharacterHealth'].__new = function(element, character, limbHealthElement) end

