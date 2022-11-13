---@meta
---@class Barotrauma.Option*1System*DateTime : System.Object
_G['Option*1System*DateTime'] = {}

---`Method Public Static`
---@param value System.DateTime
---@return Barotrauma.Option*1System*DateTime
_G['Option*1System*DateTime'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1System*DateTime
_G['Option*1System*DateTime'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1System*DateTime'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1System*DateTime'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:System.DateTime-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1System*DateTime'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1System*DateTime*1Barotrauma*Option*TType|(fun(arg:System.DateTime):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1System*DateTime'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1System*DateTime):Barotrauma.Option*1System*DateTime
---@param fallback System.DateTime
---@return System.DateTime
_G['Option*1System*DateTime'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value System.DateTime
---@return System.Boolean|boolean
_G['Option*1System*DateTime'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1System*DateTime'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1System*DateTime'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1System*DateTime'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1System*DateTime
_G['Option*1System*DateTime'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1System*DateTime
_G['Option*1System*DateTime'].__new = function() end

