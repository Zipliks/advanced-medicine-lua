---@meta
---@class Barotrauma.Networking.SteamP2PEndpoint : Barotrauma.Networking.Endpoint
---`Field Public Instance`
---@field SteamId Barotrauma.Networking.SteamId
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field ServerTypeString Barotrauma.LocalizedString
_G['SteamP2PEndpoint'] = {}

---`Method Public Static`
---@param endpointStr System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*SteamP2PEndpoint
_G['SteamP2PEndpoint'].Parse = function(endpointStr) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['SteamP2PEndpoint'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['SteamP2PEndpoint'].GetHashCode = function() end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PEndpoint
_G['SteamP2PEndpoint'] = function(steamId) end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PEndpoint
_G['SteamP2PEndpoint'].__new = function(steamId) end

