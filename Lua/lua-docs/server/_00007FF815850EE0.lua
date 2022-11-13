---@meta
---@class Barotrauma.Networking.LidgrenAddress : Barotrauma.Networking.Address
---`Field Public Instance`
---@field NetAddress System.Net.IPAddress
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
---`Getter Public Instance Virtual`
---@field IsLocalHost System.Boolean|boolean
_G['LidgrenAddress'] = {}

---`Method Public Static`
---@param endpointStr System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*LidgrenAddress
_G['LidgrenAddress'].Parse = function(endpointStr) end

---`Method Public Static`
---@param endpointStr System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*LidgrenAddress
_G['LidgrenAddress'].ParseHostName = function(endpointStr) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['LidgrenAddress'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['LidgrenAddress'].GetHashCode = function() end

---`Constructor Public Instance`
---@param netAddress System.Net.IPAddress
---@return Barotrauma.Networking.LidgrenAddress
_G['LidgrenAddress'] = function(netAddress) end

---`Constructor Public Instance`
---@param netAddress System.Net.IPAddress
---@return Barotrauma.Networking.LidgrenAddress
_G['LidgrenAddress'].__new = function(netAddress) end

