---@meta
---@class Barotrauma.Networking.UnknownAddress : Barotrauma.Networking.Address
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field IsLocalHost System.Boolean|boolean
_G['UnknownAddress'] = {}

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['UnknownAddress'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['UnknownAddress'].GetHashCode = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.UnknownAddress
_G['UnknownAddress'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.UnknownAddress
_G['UnknownAddress'].__new = function() end

