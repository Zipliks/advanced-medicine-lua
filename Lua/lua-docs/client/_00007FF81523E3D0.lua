---@meta
---@class Barotrauma.Character.SetAttackTargetEventData : System.ValueType
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
_G['Character']['SetAttackTargetEventData'] = {}

---`Constructor Public Instance`
---@param attackLimb Barotrauma.Limb
---@param targetEntity Barotrauma.IDamageable
---@param targetLimb Barotrauma.Limb
---@param targetSimPos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Character.SetAttackTargetEventData
_G['Character']['SetAttackTargetEventData'] = function(attackLimb, targetEntity, targetLimb, targetSimPos) end

---`Constructor Public Instance`
---@param attackLimb Barotrauma.Limb
---@param targetEntity Barotrauma.IDamageable
---@param targetLimb Barotrauma.Limb
---@param targetSimPos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Character.SetAttackTargetEventData
_G['Character']['SetAttackTargetEventData'].__new = function(attackLimb, targetEntity, targetLimb, targetSimPos) end

