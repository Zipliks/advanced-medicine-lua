---@meta
---@class Barotrauma.Option*1Barotrauma*Networking*BannedPlayer : System.Object
_G['Option*1Barotrauma*Networking*BannedPlayer'] = {}

---`Method Public Static`
---@param value Barotrauma.Networking.BannedPlayer
---@return Barotrauma.Option*1Barotrauma*Networking*BannedPlayer
_G['Option*1Barotrauma*Networking*BannedPlayer'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1Barotrauma*Networking*BannedPlayer
_G['Option*1Barotrauma*Networking*BannedPlayer'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*BannedPlayer'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*BannedPlayer'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:Barotrauma.Networking.BannedPlayer-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*BannedPlayer'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1Barotrauma*Networking*BannedPlayer*1Barotrauma*Option*TType|(fun(arg:Barotrauma.Networking.BannedPlayer):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1Barotrauma*Networking*BannedPlayer'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1Barotrauma*Networking*BannedPlayer):Barotrauma.Option*1Barotrauma*Networking*BannedPlayer
---@param fallback Barotrauma.Networking.BannedPlayer
---@return Barotrauma.Networking.BannedPlayer
_G['Option*1Barotrauma*Networking*BannedPlayer'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value Barotrauma.Networking.BannedPlayer
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*BannedPlayer'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*BannedPlayer'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1Barotrauma*Networking*BannedPlayer'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1Barotrauma*Networking*BannedPlayer'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*BannedPlayer
_G['Option*1Barotrauma*Networking*BannedPlayer'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*BannedPlayer
_G['Option*1Barotrauma*Networking*BannedPlayer'].__new = function() end

