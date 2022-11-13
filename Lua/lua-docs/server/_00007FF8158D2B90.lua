---@meta
---@class Barotrauma.AfflictionPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Private Instance`
---@field disposed System.Boolean|boolean
---`Field Public Instance`
---@field AfflictionType Barotrauma.Identifier
---`Field Private Instance`
---@field configElement Barotrauma.ContentXElement
---`Field Public Instance`
---@field LimbSpecific System.Boolean|boolean
---`Field Public Instance`
---@field IndicatorLimb Barotrauma.LimbType
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field Description Barotrauma.LocalizedString
---`Field Public Instance`
---@field TranslationIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field IsBuff System.Boolean|boolean
---`Field Public Instance`
---@field HealableInMedicalClinic System.Boolean|boolean
---`Field Public Instance`
---@field HealCostMultiplier System.Single|number
---`Field Public Instance`
---@field BaseHealCost System.Int32|integer
---`Field Public Instance`
---@field CauseOfDeathDescription Barotrauma.LocalizedString
---`Field Public Instance`
---@field SelfCauseOfDeathDescription Barotrauma.LocalizedString
---`Field Public Instance`
---@field ActivationThreshold System.Single|number
---`Field Public Instance`
---@field ShowIconThreshold System.Single|number
---`Field Public Instance`
---@field ShowIconToOthersThreshold System.Single|number
---`Field Public Instance`
---@field MaxStrength System.Single|number
---`Field Public Instance`
---@field GrainBurst System.Single|number
---`Field Public Instance`
---@field ShowInHealthScannerThreshold System.Single|number
---`Field Public Instance`
---@field TreatmentThreshold System.Single|number
---`Field Public Instance`
---@field Duration System.Single|number
---`Field Public Instance`
---@field KarmaChangeOnApplied System.Single|number
---`Field Public Instance`
---@field BurnOverlayAlpha System.Single|number
---`Field Public Instance`
---@field DamageOverlayAlpha System.Single|number
---`Field Public Instance`
---@field AchievementOnRemoved Barotrauma.Identifier
---`Field Public Instance`
---@field Icon Barotrauma.Sprite
---`Field Public Instance`
---@field IconColors Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---`Field Public Instance`
---@field AfflictionOverlay Barotrauma.Sprite
---`Field Public Instance`
---@field AfflictionOverlayAlphaIsLinear System.Boolean|boolean
---`Field Private Instance`
---@field effects System.Collections.Generic.List*1Barotrauma*AfflictionPrefab*Effect|Barotrauma.AfflictionPrefab.Effect[]
---`Field Private Instance`
---@field periodicEffects System.Collections.Generic.List*1Barotrauma*AfflictionPrefab*PeriodicEffect|Barotrauma.AfflictionPrefab.PeriodicEffect[]
---`Field Private Instance`
---@field constructor System.Reflection.ConstructorInfo
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*AfflictionPrefab|(fun():Barotrauma.AfflictionPrefab)
---`Getter Public Static`
---@field InternalDamage Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field BiteWounds Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field ImpactDamage Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field Bleeding Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field Burn Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field OxygenLow Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field Bloodloss Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field Pressure Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field Stun Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field RadiationSickness Barotrauma.AfflictionPrefab
---`Getter Public Static`
---@field List System.Collections.Generic.IEnumerable*1Barotrauma*AfflictionPrefab|(fun():Barotrauma.AfflictionPrefab)
---`Getter Public Instance`
---@field Effects System.Collections.Generic.IEnumerable*1Barotrauma*AfflictionPrefab*Effect|(fun():Barotrauma.AfflictionPrefab.Effect)
---`Getter Public Instance`
---@field PeriodicEffects System.Collections.Generic.IList*1Barotrauma*AfflictionPrefab*PeriodicEffect|Barotrauma.AfflictionPrefab.PeriodicEffect[]
---`Getter Public Instance`
---@field TreatmentSuitability System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2System*Single|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1System*Single)
_G['AfflictionPrefab'] = {}

---`Method Public Instance Virtual`
_G['AfflictionPrefab'].Dispose = function() end

---`Method Public Static`
_G['AfflictionPrefab'].LoadAllEffects = function() end

---`Method Public Static`
_G['AfflictionPrefab'].ClearAllEffects = function() end

---`Method Public Instance`
_G['AfflictionPrefab'].LoadEffects = function() end

---`Method Public Instance`
_G['AfflictionPrefab'].ClearEffects = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['AfflictionPrefab'].ToString = function() end

---`Method Public Instance`
---@param strength System.Single|number
---@param source? Barotrauma.Character
---@return Barotrauma.Affliction
_G['AfflictionPrefab'].Instantiate = function(strength, source) end

---`Method Public Instance`
---@param currentStrength System.Single|number
---@return Barotrauma.AfflictionPrefab.Effect
_G['AfflictionPrefab'].GetActiveEffect = function(currentStrength) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Single|number
_G['AfflictionPrefab'].GetTreatmentSuitability = function(item) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.AfflictionsFile, type:System.Type):Barotrauma.AfflictionPrefab
---@return Barotrauma.AfflictionPrefab
_G['AfflictionPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.AfflictionsFile, type:System.Type):Barotrauma.AfflictionPrefab
---@return Barotrauma.AfflictionPrefab
_G['AfflictionPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.AfflictionsFile, type:System.Type):Barotrauma.AfflictionPrefab
---@return Barotrauma.AfflictionPrefab
_G['AfflictionPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.AfflictionsFile, type:System.Type):Barotrauma.AfflictionPrefab
---@return Barotrauma.AfflictionPrefab
_G['AfflictionPrefab'].__new = function() end

