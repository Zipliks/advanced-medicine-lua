---@meta
---@class Barotrauma.Networking.Endpoint : System.Object
---`Field Public Instance`
---@field Address Barotrauma.Networking.Address
---`Getter Public Instance Abstract Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Abstract Virtual`
---@field ServerTypeString Barotrauma.LocalizedString
_G['Endpoint'] = {}

---`Method Public Instance Abstract Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Endpoint'].Equals = function(obj) end

---`Method Public Instance Abstract Virtual`
---@return System.Int32|integer
_G['Endpoint'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Endpoint'].ToString = function() end

---`Method Public Static`
---@param str System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*Endpoint
_G['Endpoint'].Parse = function(str) end

---`Constructor Public Instance`
---@param address Barotrauma.Networking.Address
---@return Barotrauma.Networking.Endpoint
_G['Endpoint'] = function(address) end

---`Constructor Public Instance`
---@param address Barotrauma.Networking.Address
---@return Barotrauma.Networking.Endpoint
_G['Endpoint'].__new = function(address) end

