---@meta
---@class Barotrauma.Networking.LidgrenEndpoint : Barotrauma.Networking.Endpoint
---`Field Public Instance`
---@field NetEndpoint System.Net.IPEndPoint
---`Getter Public Instance`
---@field Port System.Int32|integer
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field ServerTypeString Barotrauma.LocalizedString
_G['LidgrenEndpoint'] = {}

---`Method Public Static`
---@param endpointStr System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*LidgrenEndpoint
_G['LidgrenEndpoint'].Parse = function(endpointStr) end

---`Method Public Static`
---@param endpointStr System.String|string
---@param tryParseHostName System.Boolean|boolean
---@return Barotrauma.Option*1Barotrauma*Networking*LidgrenEndpoint
_G['LidgrenEndpoint'].ParseFromWithHostNameCheck = function(endpointStr, tryParseHostName) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['LidgrenEndpoint'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['LidgrenEndpoint'].GetHashCode = function() end

---`Constructor Public Instance`
---@overload fun(address:System.Net.IPAddress, port:System.Int32|integer):Barotrauma.Networking.LidgrenEndpoint
---@param netEndpoint System.Net.IPEndPoint
---@return Barotrauma.Networking.LidgrenEndpoint
_G['LidgrenEndpoint'] = function(netEndpoint) end

---`Constructor Public Instance`
---@overload fun(address:System.Net.IPAddress, port:System.Int32|integer):Barotrauma.Networking.LidgrenEndpoint
---@param netEndpoint System.Net.IPEndPoint
---@return Barotrauma.Networking.LidgrenEndpoint
_G['LidgrenEndpoint'].__new = function(netEndpoint) end

