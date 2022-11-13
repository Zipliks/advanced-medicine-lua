---@meta
---@class Barotrauma.AfflictionBleeding : Barotrauma.Affliction
_G['AfflictionBleeding'] = {}

---`Method Public Instance Virtual`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['AfflictionBleeding'].Update = function(characterHealth, targetLimb, deltaTime) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionBleeding
_G['AfflictionBleeding'] = function(prefab, strength) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionBleeding
_G['AfflictionBleeding'].__new = function(prefab, strength) end

