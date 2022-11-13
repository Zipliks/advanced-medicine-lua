---@meta
---@class Barotrauma.Networking.SteamId : Barotrauma.Networking.AccountId
---`Field Public Instance`
---@field Value System.UInt64|integer
---`Field Private Static`
---@field steam64Prefix System.String|string
---`Field Private Static`
---@field steam40Prefix System.String|string
---`Field Private Static`
---@field usualAccountInstance System.UInt64|integer
---`Field Private Static`
---@field usualAccountType System.UInt64|integer
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
_G['SteamId'] = {}

---`Method Private Static`
---@param id System.UInt64|integer
---@param offset System.Int32|integer
---@param numberOfBits System.Int32|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractBits = function(id, offset, numberOfBits) end

---`Method Private Static`
---@param id System.UInt64|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractY = function(id) end

---`Method Private Static`
---@param id System.UInt64|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractAccountNumberRemainder = function(id) end

---`Method Private Static`
---@param id System.UInt64|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractAccountInstance = function(id) end

---`Method Private Static`
---@param id System.UInt64|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractAccountType = function(id) end

---`Method Private Static`
---@param id System.UInt64|integer
---@return System.UInt64|integer
_G['SteamId'].ExtractUniverse = function(id) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['SteamId'].ToString = function() end

---`Method Public Static`
---@param str System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*SteamId
_G['SteamId'].Parse = function(str) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['SteamId'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['SteamId'].GetHashCode = function() end

---`Constructor Public Instance`
---@param value System.UInt64|integer
---@return Barotrauma.Networking.SteamId
_G['SteamId'] = function(value) end

---`Constructor Public Instance`
---@param value System.UInt64|integer
---@return Barotrauma.Networking.SteamId
_G['SteamId'].__new = function(value) end

