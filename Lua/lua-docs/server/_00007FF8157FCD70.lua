---@meta
---@class Barotrauma.Networking.AccountId : System.Object
---`Getter Public Instance Abstract Virtual`
---@field StringRepresentation System.String|string
_G['AccountId'] = {}

---`Method Public Static`
---@param str System.String|string
---@return Barotrauma.Option*1Barotrauma*Networking*AccountId
_G['AccountId'].Parse = function(str) end

---`Method Public Instance Abstract Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['AccountId'].Equals = function(obj) end

---`Method Public Instance Abstract Virtual`
---@return System.Int32|integer
_G['AccountId'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['AccountId'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Networking.AccountId
_G['AccountId'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Networking.AccountId
_G['AccountId'].__new = function() end

