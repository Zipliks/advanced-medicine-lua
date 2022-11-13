---@meta
---@class Barotrauma.CauseOfDeath : System.Object
---`Field Public Instance`
---@field Type Barotrauma.CauseOfDeathType
---`Field Public Instance`
---@field Affliction Barotrauma.AfflictionPrefab
---`Field Public Instance`
---@field Killer Barotrauma.Character
---`Field Public Instance`
---@field DamageSource Barotrauma.Entity
_G['CauseOfDeath'] = {}

---`Constructor Public Instance`
---@param type Barotrauma.CauseOfDeathType
---@param affliction Barotrauma.AfflictionPrefab
---@param killer Barotrauma.Character
---@param damageSource Barotrauma.Entity
---@return Barotrauma.CauseOfDeath
_G['CauseOfDeath'] = function(type, affliction, killer, damageSource) end

---`Constructor Public Instance`
---@param type Barotrauma.CauseOfDeathType
---@param affliction Barotrauma.AfflictionPrefab
---@param killer Barotrauma.Character
---@param damageSource Barotrauma.Entity
---@return Barotrauma.CauseOfDeath
_G['CauseOfDeath'].__new = function(type, affliction, killer, damageSource) end

