---@meta
---@class System.SByte : System.ValueType
---`Field Private Instance`
---@field m_value System.SByte|integer
---`Field Public Static`
---@field MaxValue System.SByte|integer
---`Field Public Static`
---@field MinValue System.SByte|integer
_G['System']['SByte'] = {}

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Int32|integer
---@param value System.SByte|integer
---@return System.Int32|integer
_G['System']['SByte'].CompareTo = function(value) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param obj System.SByte|integer
---@return System.Boolean|boolean
_G['System']['SByte'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['SByte'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@overload fun(provider:System.IFormatProvider):System.String|string
---@param format System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['SByte'].ToString = function(format, provider) end

---`Method Public Instance`
---@param format System.String|string
---@return System.String|string
_G['System']['SByte'].ToString = function(format) end

---`Method Public Instance Virtual`
---@param destination System.Span*1System*Char
---@param charsWritten System.Int32-ref
---@param format? System.ReadOnlySpan*1System*Char
---@param provider? System.IFormatProvider
---@return System.Boolean|boolean
_G['System']['SByte'].TryFormat = function(destination, charsWritten, format, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string):System.SByte|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles):System.SByte|integer
---@overload fun(s:System.String|string, provider:System.IFormatProvider):System.SByte|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.SByte|integer
---@param s System.ReadOnlySpan*1System*Char
---@param style? System.Globalization.NumberStyles
---@param provider? System.IFormatProvider
---@return System.SByte|integer
_G['System']['SByte'].Parse = function(s, style, provider) end

---`Method Private Static`
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param info System.Globalization.NumberFormatInfo
---@return System.SByte|integer
_G['System']['SByte'].Parse = function(s, style, info) end

---`Method Public Static`
---@overload fun(s:System.String|string, result:System.SByte-ref):System.Boolean|boolean
---@overload fun(s:System.ReadOnlySpan*1System*Char, result:System.SByte-ref):System.Boolean|boolean
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.SByte-ref):System.Boolean|boolean
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param result System.SByte-ref
---@return System.Boolean|boolean
_G['System']['SByte'].TryParse = function(s, style, provider, result) end

---`Method Private Static`
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param info System.Globalization.NumberFormatInfo
---@param result System.SByte-ref
---@return System.Boolean|boolean
_G['System']['SByte'].TryParse = function(s, style, info, result) end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['SByte'].GetTypeCode = function() end

