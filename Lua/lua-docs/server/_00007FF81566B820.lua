---@meta
---@class System.Int64 : System.ValueType
---`Field Private Instance`
---@field m_value System.Int64|integer
---`Field Public Static`
---@field MaxValue System.Int64|integer
---`Field Public Static`
---@field MinValue System.Int64|integer
_G['System']['Int64'] = {}

---`Method Public Instance Virtual`
---@overload fun(value:System.Object):System.Int32|integer
---@param value System.Int64|integer
---@return System.Int32|integer
_G['System']['Int64'].CompareTo = function(value) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param obj System.Int64|integer
---@return System.Boolean|boolean
_G['System']['Int64'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['Int64'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@overload fun(provider:System.IFormatProvider):System.String|string
---@param format System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['Int64'].ToString = function(format, provider) end

---`Method Public Instance`
---@param format System.String|string
---@return System.String|string
_G['System']['Int64'].ToString = function(format) end

---`Method Public Instance Virtual`
---@param destination System.Span*1System*Char
---@param charsWritten System.Int32-ref
---@param format? System.ReadOnlySpan*1System*Char
---@param provider? System.IFormatProvider
---@return System.Boolean|boolean
_G['System']['Int64'].TryFormat = function(destination, charsWritten, format, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string):System.Int64|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles):System.Int64|integer
---@overload fun(s:System.String|string, provider:System.IFormatProvider):System.Int64|integer
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):System.Int64|integer
---@param s System.ReadOnlySpan*1System*Char
---@param style? System.Globalization.NumberStyles
---@param provider? System.IFormatProvider
---@return System.Int64|integer
_G['System']['Int64'].Parse = function(s, style, provider) end

---`Method Public Static`
---@overload fun(s:System.String|string, result:System.Int64-ref):System.Boolean|boolean
---@overload fun(s:System.ReadOnlySpan*1System*Char, result:System.Int64-ref):System.Boolean|boolean
---@overload fun(s:System.String|string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider, result:System.Int64-ref):System.Boolean|boolean
---@param s System.ReadOnlySpan*1System*Char
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param result System.Int64-ref
---@return System.Boolean|boolean
_G['System']['Int64'].TryParse = function(s, style, provider, result) end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['Int64'].GetTypeCode = function() end

