---@meta
---@class Barotrauma.AttackResult : System.ValueType
---`Field Public Instance`
---@field Afflictions System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Public Instance`
---@field HitLimb Barotrauma.Limb
---`Field Public Instance`
---@field AppliedDamageModifiers System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Damage System.Single|number
_G['AttackResult'] = {}

---`Constructor Public Instance`
---@overload fun(afflictions:System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[], hitLimb:Barotrauma.Limb, appliedDamageModifiers?:System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]):Barotrauma.AttackResult
---@param damage System.Single|number
---@param appliedDamageModifiers? System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---@return Barotrauma.AttackResult
_G['AttackResult'] = function(damage, appliedDamageModifiers) end

---`Constructor Public Instance`
---@overload fun(afflictions:System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[], hitLimb:Barotrauma.Limb, appliedDamageModifiers?:System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]):Barotrauma.AttackResult
---@param damage System.Single|number
---@param appliedDamageModifiers? System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---@return Barotrauma.AttackResult
_G['AttackResult'].__new = function(damage, appliedDamageModifiers) end

