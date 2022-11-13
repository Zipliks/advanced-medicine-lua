---@meta
---@class Barotrauma.Option*1Barotrauma*Networking*SteamId : System.Object
_G['Option*1Barotrauma*Networking*SteamId'] = {}

---`Method Public Static`
---@param value Barotrauma.Networking.SteamId
---@return Barotrauma.Option*1Barotrauma*Networking*SteamId
_G['Option*1Barotrauma*Networking*SteamId'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1Barotrauma*Networking*SteamId
_G['Option*1Barotrauma*Networking*SteamId'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*SteamId'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*SteamId'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:Barotrauma.Networking.SteamId-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*SteamId'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1Barotrauma*Networking*SteamId*1Barotrauma*Option*TType|(fun(arg:Barotrauma.Networking.SteamId):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1Barotrauma*Networking*SteamId'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1Barotrauma*Networking*SteamId):Barotrauma.Option*1Barotrauma*Networking*SteamId
---@param fallback Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamId
_G['Option*1Barotrauma*Networking*SteamId'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value Barotrauma.Networking.SteamId
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*SteamId'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*SteamId'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1Barotrauma*Networking*SteamId'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1Barotrauma*Networking*SteamId'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*SteamId
_G['Option*1Barotrauma*Networking*SteamId'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*SteamId
_G['Option*1Barotrauma*Networking*SteamId'].__new = function() end

