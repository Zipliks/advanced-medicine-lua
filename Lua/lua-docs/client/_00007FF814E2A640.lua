---@meta
---@class System.UInt32 : System.ValueType
---`Field Private Instance`
---@field m_value System.UInt32|integer
---`Field Public Static`
---@field MaxValue System.UInt32|integer
---`Field Public Static`
---@field MinValue System.UInt32|integer
_G['System']['UInt32'] = {}

---`Method Public Instance Virtual`
---@overload fun(value:System.Object):System.Int32|integer
---@param value System.UInt32|integer
---@return System.Int32|integer
_G['System']['UInt32'].CompareTo = function(value) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param obj System.UInt32|integer
---@return System.Boolean|boolean
_G['System']['UInt32'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['UInt32'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@overload fun(provider:System.IFormatProvider):System.String|string
---@param format System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['UInt32'].ToString = function(format, provider) end

---`Method Public Instance`
---@param format System.String|string
---@return System.String|string
_G['System']['UInt32'].ToString = function(format) end

---`Method Public Instance Virtual`
---@param destination System.Span*1System*Char
---@param charsWritten System.Int32-ref
---@param format? System.ReadOnlySpan*1System*Char
---@param provider? System.IFormatProvider
---@return System.Boolean|boolean
_G['System']['UInt32'].TryFormat = function(destination, charsWritten, format, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string):System.UInt32|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles):System.UInt32|integer
---@overload fun(s:System.String|string, provider:System.IFormatProvider):System.UInt32|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.UInt32|integer
---@param s System.ReadOnlySpan*1System*Char
---@param style? System.Globalization.NumberStyles
---@param provider? System.IFormatProvider
---@return System.UInt32|integer
_G['System']['UInt32'].Parse = function(s, style, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string, result:System.UInt32-ref):System.Boolean|boolean
---@overload fun(s:System.ReadOnlySpan*1System*Char, result:System.UInt32-ref):System.Boolean|boolean
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.UInt32-ref):System.Boolean|boolean
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param result System.UInt32-ref
---@return System.Boolean|boolean
_G['System']['UInt32'].TryParse = function(s, style, provider, result) end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['UInt32'].GetTypeCode = function() end

