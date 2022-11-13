---@meta
---@class Barotrauma.Option*1Barotrauma*ContentPackageId : System.Object
_G['Option*1Barotrauma*ContentPackageId'] = {}

---`Method Public Static`
---@param value Barotrauma.ContentPackageId
---@return Barotrauma.Option*1Barotrauma*ContentPackageId
_G['Option*1Barotrauma*ContentPackageId'].Some = function(value) end

---`Method Public Static`
---@return Barotrauma.Option*1Barotrauma*ContentPackageId
_G['Option*1Barotrauma*ContentPackageId'].None = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*ContentPackageId'].IsNone = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Option*1Barotrauma*ContentPackageId'].IsSome = function() end

---`Method Public Instance`
---@overload fun(outValue:Barotrauma.ContentPackageId-ref):System.Boolean|boolean
---@param outValue Barotrauma.T1-ref
---@return System.Boolean|boolean
_G['Option*1Barotrauma*ContentPackageId'].TryUnwrap = function(outValue) end

---`Method Public Instance`
---@param selector System.Func*1Barotrauma*ContentPackageId*1Barotrauma*Option*TType|(fun(arg:Barotrauma.ContentPackageId):Barotrauma.Option.TType)
---@return Barotrauma.Option*1Barotrauma*Option*TType
_G['Option*1Barotrauma*ContentPackageId'].Select = function(selector) end

---`Method Public Instance Abstract Virtual`
---@overload fun(fallback:Barotrauma.Option*1Barotrauma*ContentPackageId):Barotrauma.Option*1Barotrauma*ContentPackageId
---@param fallback Barotrauma.ContentPackageId
---@return Barotrauma.ContentPackageId
_G['Option*1Barotrauma*ContentPackageId'].Fallback = function(fallback) end

---`Method Public Instance Abstract Virtual`
---@param value Barotrauma.ContentPackageId
---@return System.Boolean|boolean
_G['Option*1Barotrauma*ContentPackageId'].ValueEquals = function(value) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['Option*1Barotrauma*ContentPackageId'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Option*1Barotrauma*ContentPackageId'].GetHashCode = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['Option*1Barotrauma*ContentPackageId'].ToString = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*ContentPackageId
_G['Option*1Barotrauma*ContentPackageId'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Option*1Barotrauma*ContentPackageId
_G['Option*1Barotrauma*ContentPackageId'].__new = function() end

