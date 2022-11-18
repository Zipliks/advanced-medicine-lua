---@meta
---@class Barotrauma.Key : System.Object
---`Field Private Instance`
---@field hit System.Boolean|boolean
---`Field Private Instance`
---@field hitQueue System.Boolean|boolean
---`Field Private Instance`
---@field held System.Boolean|boolean
---`Field Private Instance`
---@field heldQueue System.Boolean|boolean
---`Field Private Instance`
---@field inputType Barotrauma.InputType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hit System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Held System.Boolean|boolean
---`Getter Public Instance`
---@field GetHeldQueue System.Boolean|boolean
---`Getter Public Instance`
---@field GetHitQueue System.Boolean|boolean
_G['Key'] = {}

---`Method Public Instance`
---@param hit System.Boolean|boolean
---@param held System.Boolean|boolean
_G['Key'].SetState = function(hit, held) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Key'].DequeueHit = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Key'].DequeueHeld = function() end

---`Method Public Instance`
_G['Key'].Reset = function() end

---`Method Public Instance`
_G['Key'].ResetHit = function() end

---`Method Public Instance`
_G['Key'].ResetHeld = function() end

---`Constructor Public Instance`
---@param inputType Barotrauma.InputType
---@return Barotrauma.Key
_G['Key'] = function(inputType) end

---`Constructor Public Instance`
---@param inputType Barotrauma.InputType
---@return Barotrauma.Key
_G['Key'].__new = function(inputType) end

