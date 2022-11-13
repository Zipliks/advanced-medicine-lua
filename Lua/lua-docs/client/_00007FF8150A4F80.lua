---@meta
---@class Barotrauma.Networking.SteamP2PAddress : Barotrauma.Networking.Address
---`Field Public Instance`
---@field SteamId Barotrauma.Networking.SteamId
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field IsLocalHost System.Boolean|boolean
_G['SteamP2PAddress'] = {}

---`Method Public Static`
---@param endpointStr System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*SteamP2PAddress
_G['SteamP2PAddress'].Parse = function(endpointStr) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['SteamP2PAddress'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['SteamP2PAddress'].GetHashCode = function() end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PAddress
_G['SteamP2PAddress'] = function(steamId) end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PAddress
_G['SteamP2PAddress'].__new = function(steamId) end

