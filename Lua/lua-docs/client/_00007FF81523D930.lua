---@meta
---@class Barotrauma.Item.ApplyStatusEffectEventData : System.ValueType
---`Field Public Instance`
---@field ActionType Barotrauma.ActionType
---`Field Public Instance`
---@field TargetItemComponent Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field TargetCharacter Barotrauma.Character
---`Field Public Instance`
---@field TargetLimb Barotrauma.Limb
---`Field Public Instance`
---@field UseTarget Barotrauma.Entity
---`Field Public Instance`
---@field WorldPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance Virtual`
---@field EventType Barotrauma.Item.EventType
_G['Item']['ApplyStatusEffectEventData'] = {}

---`Constructor Public Instance`
---@param actionType Barotrauma.ActionType
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param targetCharacter? Barotrauma.Character
---@param targetLimb? Barotrauma.Limb
---@param useTarget? Barotrauma.Entity
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Barotrauma.Item.ApplyStatusEffectEventData
_G['Item']['ApplyStatusEffectEventData'] = function(actionType, targetItemComponent, targetCharacter, targetLimb, useTarget, worldPosition) end

---`Constructor Public Instance`
---@param actionType Barotrauma.ActionType
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param targetCharacter? Barotrauma.Character
---@param targetLimb? Barotrauma.Limb
---@param useTarget? Barotrauma.Entity
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Barotrauma.Item.ApplyStatusEffectEventData
_G['Item']['ApplyStatusEffectEventData'].__new = function(actionType, targetItemComponent, targetCharacter, targetLimb, useTarget, worldPosition) end

