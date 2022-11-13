---@meta
---@class Barotrauma.AfflictionPsychosis : Barotrauma.Affliction
_G['AfflictionPsychosis'] = {}

---`Method Public Instance Virtual`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].Update = function(characterHealth, targetLimb, deltaTime) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionPsychosis
_G['AfflictionPsychosis'] = function(prefab, strength) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionPsychosis
_G['AfflictionPsychosis'].__new = function(prefab, strength) end

