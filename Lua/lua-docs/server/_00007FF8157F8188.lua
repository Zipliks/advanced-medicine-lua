---@meta
---@class Barotrauma.SteamWorkshopId : Barotrauma.ContentPackageId
---`Field Public Instance`
---@field Value System.UInt64|integer
---`Field Private Static`
---@field Prefix System.String|string
---`Getter Public Instance Virtual`
---@field StringRepresentation System.String|string
_G['SteamWorkshopId'] = {}

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['SteamWorkshopId'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['SteamWorkshopId'].GetHashCode = function() end

---`Method Public Static`
---@param s System.String|string
---@return Barotrauma.Option*1Barotrauma*SteamWorkshopId
_G['SteamWorkshopId'].Parse = function(s) end

---`Constructor Public Instance`
---@param value System.UInt64|integer
---@return Barotrauma.SteamWorkshopId
_G['SteamWorkshopId'] = function(value) end

---`Constructor Public Instance`
---@param value System.UInt64|integer
---@return Barotrauma.SteamWorkshopId
_G['SteamWorkshopId'].__new = function(value) end

