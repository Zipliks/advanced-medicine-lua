---@meta
---@class Barotrauma.Networking.PipeAddress : Barotrauma.Networking.Address
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field IsLocalHost System.Boolean|boolean
_G['PipeAddress'] = {}

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['PipeAddress'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['PipeAddress'].GetHashCode = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.PipeAddress
_G['PipeAddress'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.PipeAddress
_G['PipeAddress'].__new = function() end

