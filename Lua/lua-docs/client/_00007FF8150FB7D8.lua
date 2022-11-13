---@meta
---@class Barotrauma.DelayedListElement : System.Object
---`Field Public Instance`
---@field Parent Barotrauma.DelayedEffect
---`Field Public Instance`
---@field Entity Barotrauma.Entity
---`Field Public Instance`
---@field WorldPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Public Instance`
---@field StartPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Public Instance`
---@field Targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Public Instance`
---@field Delay System.Single|number
_G['DelayedListElement'] = {}

---`Constructor Public Instance`
---@param parentEffect Barotrauma.DelayedEffect
---@param parentEntity Barotrauma.Entity
---@param targets System.Collections.Generic.IEnumerable*1Barotrauma*ISerializableEntity|(fun():Barotrauma.ISerializableEntity)
---@param delay System.Single|number
---@param worldPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param startPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Barotrauma.DelayedListElement
_G['DelayedListElement'] = function(parentEffect, parentEntity, targets, delay, worldPosition, startPosition) end

---`Constructor Public Instance`
---@param parentEffect Barotrauma.DelayedEffect
---@param parentEntity Barotrauma.Entity
---@param targets System.Collections.Generic.IEnumerable*1Barotrauma*ISerializableEntity|(fun():Barotrauma.ISerializableEntity)
---@param delay System.Single|number
---@param worldPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param startPosition System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Barotrauma.DelayedListElement
_G['DelayedListElement'].__new = function(parentEffect, parentEntity, targets, delay, worldPosition, startPosition) end

