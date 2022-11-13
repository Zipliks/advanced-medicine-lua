---@meta
---@class Barotrauma.DurationListElement : System.Object
---`Field Public Instance`
---@field Parent Barotrauma.StatusEffect
---`Field Public Instance`
---@field Entity Barotrauma.Entity
---`Field Public Instance`
---@field Targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Public Instance`
---@field Timer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Duration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field User Barotrauma.Character
_G['DurationListElement'] = {}

---`Method Public Instance`
---@param duration System.Single|number
---@param newUser Barotrauma.Character
_G['DurationListElement'].Reset = function(duration, newUser) end

---`Constructor Public Instance`
---@param parentEffect Barotrauma.StatusEffect
---@param parentEntity Barotrauma.Entity
---@param targets System.Collections.Generic.IEnumerable*1Barotrauma*ISerializableEntity|(fun():Barotrauma.ISerializableEntity)
---@param duration System.Single|number
---@param user Barotrauma.Character
---@return Barotrauma.DurationListElement
_G['DurationListElement'] = function(parentEffect, parentEntity, targets, duration, user) end

---`Constructor Public Instance`
---@param parentEffect Barotrauma.StatusEffect
---@param parentEntity Barotrauma.Entity
---@param targets System.Collections.Generic.IEnumerable*1Barotrauma*ISerializableEntity|(fun():Barotrauma.ISerializableEntity)
---@param duration System.Single|number
---@param user Barotrauma.Character
---@return Barotrauma.DurationListElement
_G['DurationListElement'].__new = function(parentEffect, parentEntity, targets, duration, user) end

