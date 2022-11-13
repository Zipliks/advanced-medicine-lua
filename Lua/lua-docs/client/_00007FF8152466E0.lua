---@meta
---@class Barotrauma.Networking.NetworkConnection : System.Object
---`Field Public Instance`
---@field Endpoint Barotrauma.Networking.Endpoint
---`Field Public Instance`
---@field Status Barotrauma.Networking.NetworkConnectionStatus
---`Field Public Static`
---@field TimeoutThreshold System.Double|number
---`Field Public Static`
---@field TimeoutThresholdInGame System.Double|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AccountInfo Barotrauma.Networking.AccountInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Language Barotrauma.LanguageIdentifier
_G['NetworkConnection'] = {}

---`Method Public Instance`
---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean|boolean
_G['NetworkConnection'].EndpointMatches = function(endPoint) end

---`Method Public Instance`
---@param newInfo Barotrauma.Networking.AccountInfo
_G['NetworkConnection'].SetAccountInfo = function(newInfo) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['NetworkConnection'].ToString = function() end

---`Constructor Public Instance`
---@param endpoint Barotrauma.Networking.Endpoint
---@return Barotrauma.Networking.NetworkConnection
_G['NetworkConnection'] = function(endpoint) end

---`Constructor Public Instance`
---@param endpoint Barotrauma.Networking.Endpoint
---@return Barotrauma.Networking.NetworkConnection
_G['NetworkConnection'].__new = function(endpoint) end

