---@meta
---@class System.Double : System.ValueType
---`Field Private Instance`
---@field m_value System.Double|number
---`Field Public Static`
---@field MinValue System.Double|number
---`Field Public Static`
---@field MaxValue System.Double|number
---`Field Public Static`
---@field Epsilon System.Double|number
---`Field Public Static`
---@field NegativeInfinity System.Double|number
---`Field Public Static`
---@field PositiveInfinity System.Double|number
---`Field Public Static`
---@field NaN System.Double|number
_G['System']['Double'] = {}

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsFinite = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsInfinity = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsNaN = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsNegative = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsNegativeInfinity = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsNormal = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsPositiveInfinity = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].IsSubnormal = function(d) end

---`Method NonPublic Static`
---@param bits System.UInt64|integer
---@return System.Int32|integer
_G['System']['Double'].ExtractExponentFromBits = function(bits) end

---`Method NonPublic Static`
---@param bits System.UInt64|integer
---@return System.UInt64|integer
_G['System']['Double'].ExtractSignificandFromBits = function(bits) end

---`Method Public Instance Virtual`
---@overload fun(value:System.Object):System.Int32|integer
---@param value System.Double|number
---@return System.Int32|integer
_G['System']['Double'].CompareTo = function(value) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param obj System.Double|number
---@return System.Boolean|boolean
_G['System']['Double'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['Double'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@overload fun(provider:System.IFormatProvider):System.String|string
---@param format System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['Double'].ToString = function(format, provider) end

---`Method Public Instance`
---@param format System.String|string
---@return System.String|string
_G['System']['Double'].ToString = function(format) end

---`Method Public Instance Virtual`
---@param destination System.Span*1System*Char
---@param charsWritten System.Int32-ref
---@param format? System.ReadOnlySpan*1System*Char
---@param provider? System.IFormatProvider
---@return System.Boolean|boolean
_G['System']['Double'].TryFormat = function(destination, charsWritten, format, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string):System.Double|number
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles):System.Double|number
---@overload fun(s:System.String|string, provider:System.IFormatProvider):System.Double|number
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Double|number
---@param s System.ReadOnlySpan*1System*Char
---@param style? System.Globalization.NumberStyles
---@param provider? System.IFormatProvider
---@return System.Double|number
_G['System']['Double'].Parse = function(s, style, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string, result:System.Double-ref):System.Boolean|boolean
---@overload fun(s:System.ReadOnlySpan*1System*Char, result:System.Double-ref):System.Boolean|boolean
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Double-ref):System.Boolean|boolean
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param result System.Double-ref
---@return System.Boolean|boolean
_G['System']['Double'].TryParse = function(s, style, provider, result) end

---`Method Private Static`
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param info System.Globalization.NumberFormatInfo
---@param result System.Double-ref
---@return System.Boolean|boolean
_G['System']['Double'].TryParse = function(s, style, info, result) end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['Double'].GetTypeCode = function() end

