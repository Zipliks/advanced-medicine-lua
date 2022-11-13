---@meta
---@class Barotrauma.Networking.SteamP2PConnection : Barotrauma.Networking.NetworkConnection
---`Field Public Instance`
---@field Timeout System.Double|number
_G['SteamP2PConnection'] = {}

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['SteamP2PConnection'].Decay = function(deltaTime) end

---`Method Public Instance`
_G['SteamP2PConnection'].Heartbeat = function() end

---`Constructor Public Instance`
---@overload fun(steamId:Barotrauma.Networking.SteamId):Barotrauma.Networking.SteamP2PConnection
---@param endpoint Barotrauma.Networking.SteamP2PEndpoint
---@return Barotrauma.Networking.SteamP2PConnection
_G['SteamP2PConnection'] = function(endpoint) end

---`Constructor Public Instance`
---@overload fun(steamId:Barotrauma.Networking.SteamId):Barotrauma.Networking.SteamP2PConnection
---@param endpoint Barotrauma.Networking.SteamP2PEndpoint
---@return Barotrauma.Networking.SteamP2PConnection
_G['SteamP2PConnection'].__new = function(endpoint) end

