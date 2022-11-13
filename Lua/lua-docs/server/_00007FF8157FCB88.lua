---@meta
---@class Barotrauma.Option*1Barotrauma*Character : System.Object
_G['Option*1Barotrauma*Character'] = {}

---`Method Public Static`
---@param value Barotrauma.Character
---@return Barotrauma.Option*1Barotrauma*Character
_G['Option*1Barotrauma*Character'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1Barotrauma*Character
_G['Option*1Barotrauma*Character'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Character'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Character'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:Barotrauma.Character-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Character'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1Barotrauma*Character*1Barotrauma*Option*TType|(fun(arg:Barotrauma.Character):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1Barotrauma*Character'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1Barotrauma*Character):Barotrauma.Option*1Barotrauma*Character
---@param fallback Barotrauma.Character
---@return Barotrauma.Character
_G['Option*1Barotrauma*Character'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value Barotrauma.Character
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Character'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1Barotrauma*Character'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1Barotrauma*Character'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1Barotrauma*Character'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Character
_G['Option*1Barotrauma*Character'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*Character
_G['Option*1Barotrauma*Character'].__new = function() end

