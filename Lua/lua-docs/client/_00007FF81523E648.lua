---@meta
---@class Barotrauma.Character.ExecuteAttackEventData : System.ValueType
---`Getter Public Instance Virtual`
---@field EventType Barotrauma.Character.EventType
---`Getter Public Instance Virtual`
---@field AttackLimb Barotrauma.Limb
---`Getter Public Instance Virtual`
---@field TargetEntity Barotrauma.IDamageable
---`Getter Public Instance Virtual`
---@field TargetLimb Barotrauma.Limb
---`Getter Public Instance Virtual`
---@field TargetSimPos Microsoft.Xna.Framework.Vector2
_G['Character']['ExecuteAttackEventData'] = {}

---`Constructor Public Instance`
---@param attackLimb Barotrauma.Limb
---@param targetEntity Barotrauma.IDamageable
---@param targetLimb Barotrauma.Limb
---@param targetSimPos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Character.ExecuteAttackEventData
_G['Character']['ExecuteAttackEventData'] = function(attackLimb, targetEntity, targetLimb, targetSimPos) end

---`Constructor Public Instance`
---@param attackLimb Barotrauma.Limb
---@param targetEntity Barotrauma.IDamageable
---@param targetLimb Barotrauma.Limb
---@param targetSimPos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Character.ExecuteAttackEventData
_G['Character']['ExecuteAttackEventData'].__new = function(attackLimb, targetEntity, targetLimb, targetSimPos) end

