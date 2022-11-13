---@meta
---@class Barotrauma.AfflictionHusk : Barotrauma.Affliction
---`Field Private Instance`
---@field subscribedToDeathEvent System.Boolean|boolean
---`Field Private Instance`
---@field state Barotrauma.AfflictionHusk.InfectionState
---`Field Private Instance`
---@field huskAppendage System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---`Field Private Instance`
---@field character Barotrauma.Character
---`Field Private Instance`
---@field stun System.Boolean|boolean
---`Field Private Instance`
---@field huskInfection System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field highestStrength System.Single|number
---`Field Private Instance`
---@field HuskPrefab Barotrauma.AfflictionPrefabHusk
---`Field Private Instance`
---@field prevDisplayedMessage System.Nullable*1Barotrauma*AfflictionHusk*InfectionState
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Strength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field State Barotrauma.AfflictionHusk.InfectionState
---`Getter Private Instance`
---@field DormantThreshold System.Single|number
---`Getter Private Instance`
---@field ActiveThreshold System.Single|number
---`Getter Private Instance`
---@field TransitionThreshold System.Single|number
---`Getter Private Instance`
---@field TransformThresholdOnDeath System.Single|number
_G['AfflictionHusk'] = {}

---`Method Public Instance Virtual`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['AfflictionHusk'].Update = function(characterHealth, targetLimb, deltaTime) end

---`Method Private Instance`
_G['AfflictionHusk'].UpdateMessages = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param applyForce System.Boolean|boolean
_G['AfflictionHusk'].ApplyDamage = function(deltaTime, applyForce) end

---`Method Public Instance`
_G['AfflictionHusk'].ActivateHusk = function() end

---`Method Private Instance`
_G['AfflictionHusk'].DeactivateHusk = function() end

---`Method Public Instance`
_G['AfflictionHusk'].UnsubscribeFromDeathEvent = function() end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param causeOfDeath Barotrauma.CauseOfDeath
_G['AfflictionHusk'].CharacterDead = function(character, causeOfDeath) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['AfflictionHusk'].CreateAIHusk = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@param afflictionIdentifier Barotrauma.Identifier
---@param appendageDefinition? Barotrauma.ContentXElement
---@param ragdoll? Barotrauma.Ragdoll
---@return System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
_G['AfflictionHusk'].AttachHuskAppendage = function(character, afflictionIdentifier, appendageDefinition, ragdoll) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param prefab Barotrauma.AfflictionPrefabHusk
---@return Barotrauma.Identifier
_G['AfflictionHusk'].GetHuskedSpeciesName = function(speciesName, prefab) end

---`Method Public Static`
---@param huskedSpeciesName Barotrauma.Identifier
---@param prefab Barotrauma.AfflictionPrefabHusk
---@return Barotrauma.Identifier
_G['AfflictionHusk'].GetNonHuskedSpeciesName = function(huskedSpeciesName, prefab) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionHusk
_G['AfflictionHusk'] = function(prefab, strength) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionHusk
_G['AfflictionHusk'].__new = function(prefab, strength) end

