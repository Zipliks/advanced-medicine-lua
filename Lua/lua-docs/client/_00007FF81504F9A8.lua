---@meta
---@class Barotrauma.Option*1Barotrauma*Networking*AccountId : System.Object
_G['Option*1Barotrauma*Networking*AccountId'] = {}

---`Method Public Static`
---@param value Barotrauma.Networking.AccountId
---@return Barotrauma.Option*1Barotrauma*Networking*AccountId
_G['Option*1Barotrauma*Networking*AccountId'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1Barotrauma*Networking*AccountId
_G['Option*1Barotrauma*Networking*AccountId'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*AccountId'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*AccountId'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:Barotrauma.Networking.AccountId-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*AccountId'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1Barotrauma*Networking*AccountId*1Barotrauma*Option*TType|(fun(arg:Barotrauma.Networking.AccountId):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1Barotrauma*Networking*AccountId'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1Barotrauma*Networking*AccountId):Barotrauma.Option*1Barotrauma*Networking*AccountId
---@param fallback Barotrauma.Networking.AccountId
---@return Barotrauma.Networking.AccountId
_G['Option*1Barotrauma*Networking*AccountId'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value Barotrauma.Networking.AccountId
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*AccountId'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Networking*AccountId'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1Barotrauma*Networking*AccountId'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1Barotrauma*Networking*AccountId'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*AccountId
_G['Option*1Barotrauma*Networking*AccountId'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Networking*AccountId
_G['Option*1Barotrauma*Networking*AccountId'].__new = function() end

