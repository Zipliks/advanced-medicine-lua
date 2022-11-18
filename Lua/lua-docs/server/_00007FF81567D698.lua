---@meta
---@class System.String : System.Object, {[System.Int32|integer]:System.Char}
---`Field Private Instance`
---@field _stringLength System.Int32|integer
---`Field Private Instance`
---@field _firstChar System.Char
---`Field Public Static`
---@field Empty System.String|string
---`Getter Public Instance`
---@field Length System.Int32|integer
_G['System']['String'] = {}

---`Method Public Instance`
---@overload fun(value:System.String|string, startIndex:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer, count:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.String|string, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer, count:System.Int32|integer, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(value:System.Char):System.Int32|integer
---@overload fun(value:System.Char, startIndex:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.Char, startIndex:System.Int32|integer, count:System.Int32|integer):System.Int32|integer
---@param value System.String|string
---@return System.Int32|integer
_G['System']['String'].LastIndexOf = function(value) end

---`Method Public Instance`
---@overload fun(totalWidth:System.Int32|integer):System.String|string
---@param totalWidth System.Int32|integer
---@param paddingChar System.Char
---@return System.String|string
_G['System']['String'].PadRight = function(totalWidth, paddingChar) end

---`Method Public Instance`
---@overload fun(startIndex:System.Int32|integer, count:System.Int32|integer):System.String|string
---@param startIndex System.Int32|integer
---@return System.String|string
_G['System']['String'].Remove = function(startIndex) end

---`Method Public Instance`
---@overload fun(oldValue:System.String|string, newValue:System.String|string, ignoreCase:System.Boolean|boolean, culture:System.Globalization.CultureInfo):System.String|string
---@overload fun(oldValue:System.String|string, newValue:System.String|string, comparisonType:System.StringComparison):System.String|string
---@overload fun(oldChar:System.Char, newChar:System.Char):System.String|string
---@param oldValue System.String|string
---@param newValue System.String|string
---@return System.String|string
_G['System']['String'].Replace = function(oldValue, newValue) end

---`Method Private Instance`
---@param oldValue System.String|string
---@param newValue System.String|string
---@param ci System.Globalization.CompareInfo
---@param options System.Globalization.CompareOptions
---@return System.String|string
_G['System']['String'].ReplaceCore = function(oldValue, newValue, ci, options) end

---`Method Private Static`
---@param searchSpace System.ReadOnlySpan*1System*Char
---@param oldValue System.ReadOnlySpan*1System*Char
---@param newValue System.ReadOnlySpan*1System*Char
---@param compareInfo System.Globalization.CompareInfo
---@param options System.Globalization.CompareOptions
---@return System.String|string
_G['System']['String'].ReplaceCore = function(searchSpace, oldValue, newValue, compareInfo, options) end

---`Method Private Instance`
---@param oldValueLength System.Int32|integer
---@param newValue System.String|string
---@param indices System.ReadOnlySpan*1System*Int32
---@return System.String|string
_G['System']['String'].ReplaceHelper = function(oldValueLength, newValue, indices) end

---`Method Public Instance`
---@overload fun():System.String|string
---@param replacementText System.String|string
---@return System.String|string
_G['System']['String'].ReplaceLineEndings = function(replacementText) end

---`Method NonPublic Static`
---@param text System.ReadOnlySpan*1System*Char
---@param stride System.Int32-ref
---@return System.Int32|integer
_G['System']['String'].IndexOfNewlineChar = function(text, stride) end

---`Method Public Instance`
---@overload fun(separator:System.Char, options?:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.Char, count:System.Int32|integer, options?:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(...:System.Char):System.String-arr|System.String|string[]
---@overload fun(separator:System.Char-arr|System.Char[], count:System.Int32|integer):System.String-arr|System.String|string[]
---@overload fun(separator:System.Char-arr|System.Char[], options:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.Char-arr|System.Char[], count:System.Int32|integer, options:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.String|string, options?:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.String|string, count:System.Int32|integer, options?:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.String-arr|System.String|string[], options:System.StringSplitOptions):System.String-arr|System.String|string[]
---@param separator System.String-arr|System.String|string[]
---@param count System.Int32|integer
---@param options System.StringSplitOptions
---@return System.String-arr|System.String|string[]
_G['System']['String'].Split = function(separator, count, options) end

---`Method Private Instance`
---@overload fun(separators:System.ReadOnlySpan*1System*Char, count:System.Int32|integer, options:System.StringSplitOptions):System.String-arr|System.String|string[]
---@overload fun(separator:System.String|string, separators:System.String-arr|System.String|string[], count:System.Int32|integer, options:System.StringSplitOptions):System.String-arr|System.String|string[]
---@param separator System.String|string
---@param count System.Int32|integer
---@param options System.StringSplitOptions
---@return System.String-arr|System.String|string[]
_G['System']['String'].SplitInternal = function(separator, count, options) end

---`Method Private Instance`
---@param sepList System.ReadOnlySpan*1System*Int32
---@param lengthList System.ReadOnlySpan*1System*Int32
---@param defaultLength System.Int32|integer
---@param count System.Int32|integer
---@return System.String-arr|System.String|string[]
_G['System']['String'].SplitWithoutPostProcessing = function(sepList, lengthList, defaultLength, count) end

---`Method Private Instance`
---@param sepList System.ReadOnlySpan*1System*Int32
---@param lengthList System.ReadOnlySpan*1System*Int32
---@param defaultLength System.Int32|integer
---@param count System.Int32|integer
---@param options System.StringSplitOptions
---@return System.String-arr|System.String|string[]
_G['System']['String'].SplitWithPostProcessing = function(sepList, lengthList, defaultLength, count, options) end

---`Method Private Instance`
---@overload fun(separators:System.ReadOnlySpan*1System*Char, sepListBuilder:System.Collections.Generic.ValueListBuilder)
---@overload fun(separator:System.String|string, sepListBuilder:System.Collections.Generic.ValueListBuilder)
---@param separators System.String-arr|System.String|string[]
---@param sepListBuilder System.Collections.Generic.ValueListBuilder
---@param lengthListBuilder System.Collections.Generic.ValueListBuilder
_G['System']['String'].MakeSeparatorList = function(separators, sepListBuilder, lengthListBuilder) end

---`Method Private Instance`
---@param sepListBuilder System.Collections.Generic.ValueListBuilder
---@param c System.Char
---@param c2 System.Char
---@param c3 System.Char
_G['System']['String'].MakeSeparatorListVectorized = function(sepListBuilder, c, c2, c3) end

---`Method Private Static`
---@param options System.StringSplitOptions
_G['System']['String'].CheckStringSplitOptions = function(options) end

---`Method Public Instance`
---@overload fun(startIndex:System.Int32|integer):System.String|string
---@param startIndex System.Int32|integer
---@param length System.Int32|integer
---@return System.String|string
_G['System']['String'].Substring = function(startIndex, length) end

---`Method Private Instance`
---@param startIndex System.Int32|integer
---@param length System.Int32|integer
---@return System.String|string
_G['System']['String'].InternalSubString = function(startIndex, length) end

---`Method Public Instance`
---@overload fun():System.String|string
---@param culture System.Globalization.CultureInfo
---@return System.String|string
_G['System']['String'].ToLower = function(culture) end

---`Method Public Instance`
---@return System.String|string
_G['System']['String'].ToLowerInvariant = function() end

---`Method Public Instance`
---@overload fun():System.String|string
---@param culture System.Globalization.CultureInfo
---@return System.String|string
_G['System']['String'].ToUpper = function(culture) end

---`Method Public Instance`
---@return System.String|string
_G['System']['String'].ToUpperInvariant = function() end

---`Method Public Instance`
---@overload fun():System.String|string
---@overload fun(trimChar:System.Char):System.String|string
---@param ... System.Char
---@return System.String|string
_G['System']['String'].Trim = function(...) end

---`Method Public Instance`
---@overload fun():System.String|string
---@overload fun(trimChar:System.Char):System.String|string
---@param ... System.Char
---@return System.String|string
_G['System']['String'].TrimStart = function(...) end

---`Method Public Instance`
---@overload fun():System.String|string
---@overload fun(trimChar:System.Char):System.String|string
---@param ... System.Char
---@return System.String|string
_G['System']['String'].TrimEnd = function(...) end

---`Method Private Instance`
---@param trimType System.Text.TrimType
---@return System.String|string
_G['System']['String'].TrimWhiteSpaceHelper = function(trimType) end

---`Method Private Instance`
---@param trimChars System.Char-ptr
---@param trimCharsLength System.Int32|integer
---@param trimType System.Text.TrimType
---@return System.String|string
_G['System']['String'].TrimHelper = function(trimChars, trimCharsLength, trimType) end

---`Method Private Instance`
---@param start System.Int32|integer
---@param luaKey__end System.Int32|integer
---@return System.String|string
_G['System']['String'].CreateTrimmedString = function(start, luaKey__end) end

---`Method Public Instance`
---@overload fun(value:System.String|string):System.Boolean|boolean
---@overload fun(value:System.String|string, comparisonType:System.StringComparison):System.Boolean|boolean
---@overload fun(value:System.Char):System.Boolean|boolean
---@param value System.Char
---@param comparisonType System.StringComparison
---@return System.Boolean|boolean
_G['System']['String'].Contains = function(value, comparisonType) end

---`Method Public Instance`
---@overload fun(value:System.Char):System.Int32|integer
---@overload fun(value:System.Char, startIndex:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.Char, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(value:System.Char, startIndex:System.Int32|integer, count:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.String|string):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer, count:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.String|string, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(value:System.String|string, startIndex:System.Int32|integer, comparisonType:System.StringComparison):System.Int32|integer
---@param value System.String|string
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@param comparisonType System.StringComparison
---@return System.Int32|integer
_G['System']['String'].IndexOf = function(value, startIndex, count, comparisonType) end

---`Method Public Instance`
---@overload fun(anyOf:System.Char-arr|System.Char[]):System.Int32|integer
---@overload fun(anyOf:System.Char-arr|System.Char[], startIndex:System.Int32|integer):System.Int32|integer
---@param anyOf System.Char-arr|System.Char[]
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@return System.Int32|integer
_G['System']['String'].IndexOfAny = function(anyOf, startIndex, count) end

---`Method Private Instance`
---@param anyOf System.Char-arr|System.Char[]
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@return System.Int32|integer
_G['System']['String'].IndexOfCharArray = function(anyOf, startIndex, count) end

---`Method Private Static`
---@param charMap System.UInt32-ptr
---@param anyOf System.ReadOnlySpan*1System*Char
_G['System']['String'].InitializeProbabilisticMap = function(charMap, anyOf) end

---`Method Private Static`
---@param searchChar System.Char
---@param anyOf System.Char-arr|System.Char[]
---@return System.Boolean|boolean
_G['System']['String'].ArrayContains = function(searchChar, anyOf) end

---`Method Private Static`
---@param charMap System.UInt32-ptr
---@param value System.Byte|integer
---@return System.Boolean|boolean
_G['System']['String'].IsCharBitSet = function(charMap, value) end

---`Method Private Static`
---@param charMap System.UInt32-ptr
---@param value System.Byte|integer
_G['System']['String'].SetCharBit = function(charMap, value) end

---`Method Public Instance`
---@overload fun(anyOf:System.Char-arr|System.Char[]):System.Int32|integer
---@overload fun(anyOf:System.Char-arr|System.Char[], startIndex:System.Int32|integer):System.Int32|integer
---@param anyOf System.Char-arr|System.Char[]
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@return System.Int32|integer
_G['System']['String'].LastIndexOfAny = function(anyOf, startIndex, count) end

---`Method Private Instance`
---@param anyOf System.Char-arr|System.Char[]
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@return System.Int32|integer
_G['System']['String'].LastIndexOfCharArray = function(anyOf, startIndex, count) end

---`Method Public Static`
---@param value System.String|string
---@return System.Boolean|boolean
_G['System']['String'].IsNullOrEmpty = function(value) end

---`Method Public Static`
---@param value System.String|string
---@return System.Boolean|boolean
_G['System']['String'].IsNullOrWhiteSpace = function(value) end

---`Method Public Instance`
---@return System.Char-ref
_G['System']['String'].GetPinnableReference = function() end

---`Method NonPublic Instance`
---@return System.Char-ref
_G['System']['String'].GetRawStringData = function() end

---`Method NonPublic Static`
---@param bytes System.Byte-ptr
---@param byteLength System.Int32|integer
---@param encoding System.Text.Encoding
---@return System.String|string
_G['System']['String'].CreateStringFromEncoding = function(bytes, byteLength, encoding) end

---`Method NonPublic Static`
---@overload fun(c:System.Char):System.String|string
---@param c1 System.Char
---@param c2 System.Char
---@return System.String|string
_G['System']['String'].CreateFromChar = function(c1, c2) end

---`Method Public Instance Virtual`
---@overload fun():System.String|string
---@param provider System.IFormatProvider
---@return System.String|string
_G['System']['String'].ToString = function(provider) end

---`Method Public Instance`
---@return System.CharEnumerator
_G['System']['String'].GetEnumerator = function() end

---`Method Public Instance`
---@return System.Text.StringRuneEnumerator
_G['System']['String'].EnumerateRunes = function() end

---`Method NonPublic Static`
---@param ptr System.Char-ptr
---@return System.Int32|integer
_G['System']['String'].wcslen = function(ptr) end

---`Method NonPublic Static`
---@param ptr System.Byte-ptr
---@return System.Int32|integer
_G['System']['String'].strlen = function(ptr) end

---`Method Private Static`
_G['System']['String'].ThrowMustBeNullTerminatedString = function() end

---`Method Public Instance Virtual`
---@return System.TypeCode
_G['System']['String'].GetTypeCode = function() end

---`Method Public Instance`
---@overload fun():System.Boolean|boolean
---@param normalizationForm System.Text.NormalizationForm
---@return System.Boolean|boolean
_G['System']['String'].IsNormalized = function(normalizationForm) end

---`Method Public Instance`
---@overload fun():System.String|string
---@param normalizationForm System.Text.NormalizationForm
---@return System.String|string
_G['System']['String'].Normalize = function(normalizationForm) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['System']['String'].IsAscii = function() end

---`Method Private Static`
---@param dest System.String|string
---@param destPos System.Int32|integer
---@param src System.String|string
_G['System']['String'].FillStringChecked = function(dest, destPos, src) end

---`Method Public Static`
---@overload fun(arg0:System.Object):System.String|string
---@overload fun(arg0:System.Object, arg1:System.Object):System.String|string
---@overload fun(arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String|string
---@overload fun(...:System.Object):System.String|string
---@overload fun(values:System.Collections.Generic.IEnumerable*1System*String*T|(fun():System.String.T)):System.String|string
---@overload fun(values:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):System.String|string
---@overload fun(str0:System.String|string, str1:System.String|string):System.String|string
---@overload fun(str0:System.String|string, str1:System.String|string, str2:System.String|string):System.String|string
---@overload fun(str0:System.String|string, str1:System.String|string, str2:System.String|string, str3:System.String|string):System.String|string
---@overload fun(str0:System.ReadOnlySpan*1System*Char, str1:System.ReadOnlySpan*1System*Char):System.String|string
---@overload fun(str0:System.ReadOnlySpan*1System*Char, str1:System.ReadOnlySpan*1System*Char, str2:System.ReadOnlySpan*1System*Char):System.String|string
---@overload fun(str0:System.ReadOnlySpan*1System*Char, str1:System.ReadOnlySpan*1System*Char, str2:System.ReadOnlySpan*1System*Char, str3:System.ReadOnlySpan*1System*Char):System.String|string
---@param ... System.String|string
---@return System.String|string
_G['System']['String'].Concat = function(...) end

---`Method Public Static`
---@overload fun(format:System.String|string, arg0:System.Object):System.String|string
---@overload fun(format:System.String|string, arg0:System.Object, arg1:System.Object):System.String|string
---@overload fun(format:System.String|string, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String|string
---@overload fun(format:System.String|string, ...:System.Object):System.String|string
---@overload fun(provider:System.IFormatProvider, format:System.String|string, arg0:System.Object):System.String|string
---@overload fun(provider:System.IFormatProvider, format:System.String|string, arg0:System.Object, arg1:System.Object):System.String|string
---@overload fun(provider:System.IFormatProvider, format:System.String|string, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String|string
---@param provider System.IFormatProvider
---@param format System.String|string
---@param ... System.Object
---@return System.String|string
_G['System']['String'].Format = function(provider, format, ...) end

---`Method Private Static`
---@param provider System.IFormatProvider
---@param format System.String|string
---@param args System.ParamsArray
---@return System.String|string
_G['System']['String'].FormatHelper = function(provider, format, args) end

---`Method Public Instance`
---@param startIndex System.Int32|integer
---@param value System.String|string
---@return System.String|string
_G['System']['String'].Insert = function(startIndex, value) end

---`Method Public Static`
---@overload fun(separator:System.Char, ...:System.String|string):System.String|string
---@overload fun(separator:System.String|string, ...:System.String|string):System.String|string
---@overload fun(separator:System.Char, value:System.String-arr|System.String|string[], startIndex:System.Int32|integer, count:System.Int32|integer):System.String|string
---@overload fun(separator:System.String|string, value:System.String-arr|System.String|string[], startIndex:System.Int32|integer, count:System.Int32|integer):System.String|string
---@overload fun(separator:System.String|string, values:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):System.String|string
---@overload fun(separator:System.Char, ...:System.Object):System.String|string
---@overload fun(separator:System.String|string, ...:System.Object):System.String|string
---@overload fun(separator:System.Char, values:System.Collections.Generic.IEnumerable*1System*String*T|(fun():System.String.T)):System.String|string
---@param separator System.String|string
---@param values System.Collections.Generic.IEnumerable*1System*String*T|(fun():System.String.T)
---@return System.String|string
_G['System']['String'].Join = function(separator, values) end

---`Method Private Static`
---@overload fun(separator:System.ReadOnlySpan*1System*Char, value:System.String-arr|System.String|string[], startIndex:System.Int32|integer, count:System.Int32|integer):System.String|string
---@overload fun(separator:System.ReadOnlySpan*1System*Char, values:System.Object-arr|System.Object[]):System.String|string
---@overload fun(separator:System.ReadOnlySpan*1System*Char, values:System.Collections.Generic.IEnumerable*1System*String*T|(fun():System.String.T)):System.String|string
---@param separator System.ReadOnlySpan*1System*Char
---@param values System.ReadOnlySpan*1System*String
---@return System.String|string
_G['System']['String'].JoinCore = function(separator, values) end

---`Method Public Instance`
---@overload fun(totalWidth:System.Int32|integer):System.String|string
---@param totalWidth System.Int32|integer
---@param paddingChar System.Char
---@return System.String|string
_G['System']['String'].PadLeft = function(totalWidth, paddingChar) end

---`Method NonPublic Static`
---@param length System.Int32|integer
---@return System.String|string
_G['System']['String'].FastAllocateString = function(length) end

---`Method NonPublic Instance`
---@param data System.Byte|integer
_G['System']['String'].SetTrailByte = function(data) end

---`Method NonPublic Instance`
---@param data System.Byte-ref
---@return System.Boolean|boolean
_G['System']['String'].TryGetTrailByte = function(data) end

---`Method Private Instance`
---@return System.String|string
_G['System']['String'].Intern = function() end

---`Method Public Static`
---@param str System.String|string
---@return System.String|string
_G['System']['String'].Intern = function(str) end

---`Method Private Instance`
---@return System.String|string
_G['System']['String'].IsInterned = function() end

---`Method Public Static`
---@param str System.String|string
---@return System.String|string
_G['System']['String'].IsInterned = function(str) end

---`Method NonPublic Static`
---@param src System.String|string
---@param dest System.IntPtr
---@param len System.Int32|integer
_G['System']['String'].InternalCopy = function(src, dest, len) end

---`Method NonPublic Instance`
---@param pbNativeBuffer System.Byte-ptr
---@param cbNativeBuffer System.Int32|integer
---@param encoding System.Text.Encoding
---@return System.Int32|integer
_G['System']['String'].GetBytesFromEncoding = function(pbNativeBuffer, cbNativeBuffer, encoding) end

---`Method Private Static`
---@param strA System.String|string
---@param strB System.String|string
---@return System.Boolean|boolean
_G['System']['String'].EqualsHelper = function(strA, strB) end

---`Method Private Static`
---@overload fun(strA:System.String|string, indexA:System.Int32|integer, countA:System.Int32|integer, strB:System.String|string, indexB:System.Int32|integer, countB:System.Int32|integer):System.Int32|integer
---@param strA System.String|string
---@param strB System.String|string
---@return System.Int32|integer
_G['System']['String'].CompareOrdinalHelper = function(strA, strB) end

---`Method NonPublic Static`
---@param strA System.String|string
---@param strB System.String|string
---@return System.Boolean|boolean
_G['System']['String'].EqualsOrdinalIgnoreCase = function(strA, strB) end

---`Method Private Static`
---@param strA System.String|string
---@param strB System.String|string
---@return System.Boolean|boolean
_G['System']['String'].EqualsOrdinalIgnoreCaseNoLengthCheck = function(strA, strB) end

---`Method Public Static`
---@overload fun(strA:System.String|string, strB:System.String|string):System.Int32|integer
---@overload fun(strA:System.String|string, strB:System.String|string, ignoreCase:System.Boolean|boolean):System.Int32|integer
---@overload fun(strA:System.String|string, strB:System.String|string, comparisonType:System.StringComparison):System.Int32|integer
---@overload fun(strA:System.String|string, strB:System.String|string, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):System.Int32|integer
---@overload fun(strA:System.String|string, strB:System.String|string, ignoreCase:System.Boolean|boolean, culture:System.Globalization.CultureInfo):System.Int32|integer
---@overload fun(strA:System.String|string, indexA:System.Int32|integer, strB:System.String|string, indexB:System.Int32|integer, length:System.Int32|integer):System.Int32|integer
---@overload fun(strA:System.String|string, indexA:System.Int32|integer, strB:System.String|string, indexB:System.Int32|integer, length:System.Int32|integer, ignoreCase:System.Boolean|boolean):System.Int32|integer
---@overload fun(strA:System.String|string, indexA:System.Int32|integer, strB:System.String|string, indexB:System.Int32|integer, length:System.Int32|integer, ignoreCase:System.Boolean|boolean, culture:System.Globalization.CultureInfo):System.Int32|integer
---@overload fun(strA:System.String|string, indexA:System.Int32|integer, strB:System.String|string, indexB:System.Int32|integer, length:System.Int32|integer, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):System.Int32|integer
---@param strA System.String|string
---@param indexA System.Int32|integer
---@param strB System.String|string
---@param indexB System.Int32|integer
---@param length System.Int32|integer
---@param comparisonType System.StringComparison
---@return System.Int32|integer
_G['System']['String'].Compare = function(strA, indexA, strB, indexB, length, comparisonType) end

---`Method Public Static`
---@overload fun(strA:System.String|string, strB:System.String|string):System.Int32|integer
---@param strA System.String|string
---@param indexA System.Int32|integer
---@param strB System.String|string
---@param indexB System.Int32|integer
---@param length System.Int32|integer
---@return System.Int32|integer
_G['System']['String'].CompareOrdinal = function(strA, indexA, strB, indexB, length) end

---`Method NonPublic Static`
---@param strA System.ReadOnlySpan*1System*Char
---@param strB System.ReadOnlySpan*1System*Char
---@return System.Int32|integer
_G['System']['String'].CompareOrdinal = function(strA, strB) end

---`Method Public Instance Virtual`
---@overload fun(value:System.Object):System.Int32|integer
---@param strB System.String|string
---@return System.Int32|integer
_G['System']['String'].CompareTo = function(strB) end

---`Method Public Instance`
---@overload fun(value:System.String|string):System.Boolean|boolean
---@overload fun(value:System.String|string, comparisonType:System.StringComparison):System.Boolean|boolean
---@overload fun(value:System.String|string, ignoreCase:System.Boolean|boolean, culture:System.Globalization.CultureInfo):System.Boolean|boolean
---@param value System.Char
---@return System.Boolean|boolean
_G['System']['String'].EndsWith = function(value) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param value System.String|string
---@return System.Boolean|boolean
_G['System']['String'].Equals = function(value) end

---`Method Public Instance`
---@param value System.String|string
---@param comparisonType System.StringComparison
---@return System.Boolean|boolean
_G['System']['String'].Equals = function(value, comparisonType) end

---`Method Public Static`
---@overload fun(a:System.String|string, b:System.String|string):System.Boolean|boolean
---@param a System.String|string
---@param b System.String|string
---@param comparisonType System.StringComparison
---@return System.Boolean|boolean
_G['System']['String'].Equals = function(a, b, comparisonType) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['System']['String'].GetHashCode = function() end

---`Method Public Instance`
---@param comparisonType System.StringComparison
---@return System.Int32|integer
_G['System']['String'].GetHashCode = function(comparisonType) end

---`Method Public Static`
---@overload fun(value:System.ReadOnlySpan*1System*Char):System.Int32|integer
---@param value System.ReadOnlySpan*1System*Char
---@param comparisonType System.StringComparison
---@return System.Int32|integer
_G['System']['String'].GetHashCode = function(value, comparisonType) end

---`Method NonPublic Instance`
---@return System.Int32|integer
_G['System']['String'].GetHashCodeOrdinalIgnoreCase = function() end

---`Method NonPublic Static`
---@param value System.ReadOnlySpan*1System*Char
---@return System.Int32|integer
_G['System']['String'].GetHashCodeOrdinalIgnoreCase = function(value) end

---`Method NonPublic Instance`
---@return System.Int32|integer
_G['System']['String'].GetNonRandomizedHashCode = function() end

---`Method NonPublic Instance`
---@return System.Int32|integer
_G['System']['String'].GetNonRandomizedHashCodeOrdinalIgnoreCase = function() end

---`Method Public Instance`
---@overload fun(value:System.String|string):System.Boolean|boolean
---@overload fun(value:System.String|string, comparisonType:System.StringComparison):System.Boolean|boolean
---@overload fun(value:System.String|string, ignoreCase:System.Boolean|boolean, culture:System.Globalization.CultureInfo):System.Boolean|boolean
---@param value System.Char
---@return System.Boolean|boolean
_G['System']['String'].StartsWith = function(value) end

---`Method NonPublic Static`
---@param comparisonType System.StringComparison
_G['System']['String'].CheckStringComparison = function(comparisonType) end

---`Method NonPublic Static`
---@param comparisonType System.StringComparison
---@return System.Globalization.CompareOptions
_G['System']['String'].GetCaseCompareOfComparisonCulture = function(comparisonType) end

---`Method Private Static`
---@param comparisonType System.StringComparison
---@return System.Globalization.CompareOptions
_G['System']['String'].GetCompareOptionsFromOrdinalStringComparison = function(comparisonType) end

---`Method Private Instance`
---@overload fun(value:System.Char-arr|System.Char[]):System.String|string
---@overload fun(value:System.Char-arr|System.Char[], startIndex:System.Int32|integer, length:System.Int32|integer):System.String|string
---@overload fun(ptr:System.Char-ptr):System.String|string
---@overload fun(ptr:System.Char-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String|string
---@overload fun(value:System.SByte-ptr):System.String|string
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String|string
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer, enc:System.Text.Encoding):System.String|string
---@overload fun(c:System.Char, count:System.Int32|integer):System.String|string
---@param value System.ReadOnlySpan*1System*Char
---@return System.String|string
_G['System']['String'].Ctor = function(value) end

---`Method Private Static`
---@param pb System.Byte-ptr
---@param numBytes System.Int32|integer
---@return System.String|string
_G['System']['String'].CreateStringForSByteConstructor = function(pb, numBytes) end

---`Method Public Static`
---@overload fun(length:System.Int32|integer, state:System.String.TState, action:System.Buffers.SpanAction*1System*Char*1System*String*TState|(fun(span:System.Span*1System*Char, arg:System.String.TState))):System.String|string
---@overload fun(provider:System.IFormatProvider, handler:System.Runtime.CompilerServices.DefaultInterpolatedStringHandler-ref):System.String|string
---@param provider System.IFormatProvider
---@param initialBuffer System.Span*1System*Char
---@param handler System.Runtime.CompilerServices.DefaultInterpolatedStringHandler-ref
---@return System.String|string
_G['System']['String'].Create = function(provider, initialBuffer, handler) end

---`Method NonPublic Instance`
---@param startIndex System.Int32|integer
---@param count System.Int32|integer
---@param slice System.ReadOnlySpan
---@return System.Boolean|boolean
_G['System']['String'].TryGetSpan = function(startIndex, count, slice) end

---`Method Public Instance Virtual`
---@return System.Object
_G['System']['String'].Clone = function() end

---`Method Public Static`
---@param str System.String|string
---@return System.String|string
_G['System']['String'].Copy = function(str) end

---`Method Public Instance`
---@overload fun(sourceIndex:System.Int32|integer, destination:System.Char-arr|System.Char[], destinationIndex:System.Int32|integer, count:System.Int32|integer)
---@param destination System.Span*1System*Char
_G['System']['String'].CopyTo = function(destination) end

---`Method Public Instance`
---@param destination System.Span*1System*Char
---@return System.Boolean|boolean
_G['System']['String'].TryCopyTo = function(destination) end

---`Method Public Instance`
---@overload fun():System.Char-arr|System.Char[]
---@param startIndex System.Int32|integer
---@param length System.Int32|integer
---@return System.Char-arr|System.Char[]
_G['System']['String'].ToCharArray = function(startIndex, length) end

---`Constructor Public Instance`
---@overload fun(value:System.Char-arr|System.Char[]):System.String
---@overload fun(value:System.Char-arr|System.Char[], startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.Char-ptr):System.String
---@overload fun(value:System.Char-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.SByte-ptr):System.String
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer, enc:System.Text.Encoding):System.String
---@overload fun(c:System.Char, count:System.Int32|integer):System.String
---@param value System.ReadOnlySpan*1System*Char
---@return System.String
_G['System']['String'] = function(value) end

---`Constructor Public Instance`
---@overload fun(value:System.Char-arr|System.Char[]):System.String
---@overload fun(value:System.Char-arr|System.Char[], startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.Char-ptr):System.String
---@overload fun(value:System.Char-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.SByte-ptr):System.String
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer):System.String
---@overload fun(value:System.SByte-ptr, startIndex:System.Int32|integer, length:System.Int32|integer, enc:System.Text.Encoding):System.String
---@overload fun(c:System.Char, count:System.Int32|integer):System.String
---@param value System.ReadOnlySpan*1System*Char
---@return System.String
_G['System']['String'].__new = function(value) end

