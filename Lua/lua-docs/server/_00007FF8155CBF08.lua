---@meta
---@class System.Boolean : System.ValueType
---`Field Private Instance`
---@field m_value System.Boolean|boolean
---`Field Public Static`
---@field TrueString System.String|string
---`Field Public Static`
---@field FalseString System.String|string
_G['System']['Boolean'] = {}

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['Boolean'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['Boolean'].ToString = function(provider) end

---`Method Public Instance`
---@param destination System.Span*1System*Char
---@param charsWritten System.Int32-ref
---@return System.Boolean|boolean
_G['System']['Boolean'].TryFormat = function(destination, charsWritten) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param obj System.Boolean|boolean
---@return System.Boolean|boolean
_G['System']['Boolean'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Int32|integer
---@param value System.Boolean|boolean
---@return System.Int32|integer
_G['System']['Boolean'].CompareTo = function(value) end

---`Method NonPublic Static`
---@param value System.ReadOnlySpan*1System*Char
---@return System.Boolean|boolean
_G['System']['Boolean'].IsTrueStringIgnoreCase = function(value) end

---`Method NonPublic Static`
---@param value System.ReadOnlySpan*1System*Char
---@return System.Boolean|boolean
_G['System']['Boolean'].IsFalseStringIgnoreCase = function(value) end

---`Method Public Static`
---@overload fun(value:System.String|string):System.Boolean|boolean
---@param value System.ReadOnlySpan*1System*Char
---@return System.Boolean|boolean
_G['System']['Boolean'].Parse = function(value) end

---`Method Public Static`
---@overload fun(value:System.String|string, result:System.Boolean-ref):System.Boolean|boolean
---@param value System.ReadOnlySpan*1System*Char
---@param result System.Boolean-ref
---@return System.Boolean|boolean
_G['System']['Boolean'].TryParse = function(value, result) end

---`Method Private Static`
---@param value System.ReadOnlySpan*1System*Char
---@return System.ReadOnlySpan*1System*Char
_G['System']['Boolean'].TrimWhiteSpaceAndNull = function(value) end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['Boolean'].GetTypeCode = function() end

---`Constructor Private Static`
---@return System.Boolean
_G['System']['Boolean'] = function() end

---`Constructor Private Static`
---@return System.Boolean
_G['System']['Boolean'].__new = function() end

