---@meta
---@class Barotrauma.Affliction : System.Object
---`Field Public Instance`
---@field Prefab Barotrauma.AfflictionPrefab
---`Field Private Instance`
---@field fluctuationTimer System.Single|number
---`Field NonPublic Instance`
---@field _strength System.Single|number
---`Field Private Instance`
---@field _nonClampedStrength System.Single|number
---`Field Public Instance`
---@field DamagePerSecond System.Single|number
---`Field Public Instance`
---@field DamagePerSecondTimer System.Single|number
---`Field Public Instance`
---@field PreviousVitalityDecrease System.Single|number
---`Field Public Instance`
---@field StrengthDiminishMultiplier System.Single|number
---`Field Public Instance`
---@field MultiplierSource Barotrauma.Affliction
---`Field Public Instance`
---@field PeriodicEffectTimers System.Collections.Generic.Dictionary*1Barotrauma*AfflictionPrefab*PeriodicEffect*1System*Single|{[Barotrauma.AfflictionPrefab.PeriodicEffect]:System.Single|number}
---`Field Public Instance`
---@field AppliedAsSuccessfulTreatmentTime System.Double|number
---`Field Public Instance`
---@field AppliedAsFailedTreatmentTime System.Double|number
---`Field Public Instance`
---@field Duration System.Single|number
---`Field Public Instance`
---@field Source Barotrauma.Character
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PendingAdditionStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AdditionStrength System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Strength System.Single|number
---`Getter Public Instance`
---@field NonClampedStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Probability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DivideByLimbCount System.Boolean|boolean
_G['Affliction'] = {}

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Affliction'].Serialize = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Affliction'].Deserialize = function(element) end

---`Method Public Instance`
---@param multiplier System.Single|number
---@param probability System.Single|number
---@return Barotrauma.Affliction
_G['Affliction'].CreateMultiplied = function(multiplier, probability) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Affliction'].ToString = function() end

---`Method Public Instance`
---@return Barotrauma.AfflictionPrefab.Effect
_G['Affliction'].GetActiveEffect = function() end

---`Method Public Instance`
---@overload fun(characterHealth:Barotrauma.CharacterHealth):System.Single|number
---@param characterHealth Barotrauma.CharacterHealth
---@param strength System.Single|number
---@return System.Single|number
_G['Affliction'].GetVitalityDecrease = function(characterHealth, strength) end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetScreenGrainStrength = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetScreenDistortStrength = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetRadialDistortStrength = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetChromaticAberrationStrength = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetAfflictionOverlayMultiplier = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Color
_G['Affliction'].GetFaceTint = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Color
_G['Affliction'].GetBodyTint = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetScreenBlurStrength = function() end

---`Method Private Instance`
---@param currentEffect Barotrauma.AfflictionPrefab.Effect
---@return System.Single|number
_G['Affliction'].GetScreenEffectFluctuation = function(currentEffect) end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetSkillMultiplier = function() end

---`Method Public Instance`
---@param currentVitalityDecrease System.Single|number
_G['Affliction'].CalculateDamagePerSecond = function(currentVitalityDecrease) end

---`Method Public Instance`
---@param afflictionId Barotrauma.Identifier
---@return System.Single|number
_G['Affliction'].GetResistance = function(afflictionId) end

---`Method Public Instance`
---@return System.Single|number
_G['Affliction'].GetSpeedMultiplier = function() end

---`Method Public Instance`
---@param statType Barotrauma.StatTypes
---@return System.Single|number
_G['Affliction'].GetStatValue = function(statType) end

---`Method Public Instance`
---@param flagType Barotrauma.AbilityFlags
---@return System.Boolean|boolean
_G['Affliction'].HasFlag = function(flagType) end

---`Method Private Instance`
---@return Barotrauma.AfflictionPrefab.Effect
_G['Affliction'].GetViableEffect = function() end

---`Method Public Instance Virtual`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['Affliction'].Update = function(characterHealth, targetLimb, deltaTime) end

---`Method Public Instance`
---@param type Barotrauma.ActionType
---@param deltaTime System.Single|number
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
_G['Affliction'].ApplyStatusEffects = function(type, deltaTime, characterHealth, targetLimb) end

---`Method Public Instance`
---@param type Barotrauma.ActionType
---@param statusEffect Barotrauma.StatusEffect
---@param deltaTime System.Single|number
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
_G['Affliction'].ApplyStatusEffect = function(type, statusEffect, deltaTime, characterHealth, targetLimb) end

---`Method Public Instance`
---@param strength System.Single|number
_G['Affliction'].SetStrength = function(strength) end

---`Method Public Instance`
---@param afflictedCharacter Barotrauma.Character
---@return System.Boolean|boolean
_G['Affliction'].ShouldShowIcon = function(afflictedCharacter) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.Affliction
_G['Affliction'] = function(prefab, strength) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.Affliction
_G['Affliction'].__new = function(prefab, strength) end

