---@meta
---@class Barotrauma.DelayedEffect : Barotrauma.StatusEffect
---`Field Private Instance`
---@field delayType Barotrauma.DelayedEffect.DelayTypes
---`Field Private Instance`
---@field delay System.Single|number
---`Field Public Static`
---@field DelayList System.Collections.Generic.List*1Barotrauma*DelayedListElement|Barotrauma.DelayedListElement[]
_G['DelayedEffect'] = {}

---`Method Public Instance Virtual`
---@overload fun(type:Barotrauma.ActionType, deltaTime:System.Single|number, entity:Barotrauma.Entity, target:Barotrauma.ISerializableEntity, worldPosition?:System.Nullable*1Microsoft*Xna*Framework*Vector2)
---@param type Barotrauma.ActionType
---@param deltaTime System.Single|number
---@param entity Barotrauma.Entity
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['DelayedEffect'].Apply = function(type, deltaTime, entity, targets, worldPosition) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['DelayedEffect'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.DelayedEffect
---@return Barotrauma.DelayedEffect
_G['DelayedEffect'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.DelayedEffect
---@return Barotrauma.DelayedEffect
_G['DelayedEffect'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.DelayedEffect
---@return Barotrauma.DelayedEffect
_G['DelayedEffect'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.DelayedEffect
---@return Barotrauma.DelayedEffect
_G['DelayedEffect'].__new = function() end

