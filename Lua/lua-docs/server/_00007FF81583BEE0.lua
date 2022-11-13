---@meta
---@class Barotrauma.RichString : System.Object
---`Field NonPublic Instance`
---@field loaded System.Boolean|boolean
---`Field NonPublic Instance`
---@field language Barotrauma.LanguageIdentifier
---`Field NonPublic Instance`
---@field cachedSanitizedValue System.String|string
---`Field Private Instance`
---@field postProcess System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)
---`Field Private Instance`
---@field shouldParseRichTextData System.Boolean|boolean
---`Field Private Instance`
---@field originalStr Barotrauma.LocalizedString
---`Field Public Instance`
---@field SanitizedString Barotrauma.LocalizedString
---`Getter Public Instance`
---@field SanitizedValue System.String|string
---`Getter Public Instance`
---@field Length System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field NestedStr Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RichTextData System.Nullable*1System*Collections*Immutable*ImmutableArray*2Barotrauma*RichTextData
_G['RichString'] = {}

---`Method Public Static`
---@param str Barotrauma.LocalizedString
---@param postProcess? System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)
---@return Barotrauma.RichString
_G['RichString'].Rich = function(str, postProcess) end

---`Method Public Static`
---@param str Barotrauma.LocalizedString
---@return Barotrauma.RichString
_G['RichString'].Plain = function(str) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['RichString'].MustRetrieveValue = function() end

---`Method Public Instance`
_G['RichString'].RetrieveValue = function() end

---`Method Public Instance`
---@return Barotrauma.RichString
_G['RichString'].ToUpper = function() end

---`Method Public Instance`
---@return Barotrauma.RichString
_G['RichString'].ToLower = function() end

---`Method Public Instance`
---@param from System.String|string
---@param to System.String|string
---@param stringComparison? System.StringComparison
---@return Barotrauma.RichString
_G['RichString'].Replace = function(from, to, stringComparison) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['RichString'].ToString = function() end

---`Method Public Instance`
---@overload fun(str:System.String|string, stringComparison?:System.StringComparison):System.Boolean|boolean
---@param chr System.Char
---@param stringComparison? System.StringComparison
---@return System.Boolean|boolean
_G['RichString'].Contains = function(chr, stringComparison) end

---`Constructor Private Instance`
---@param nestedStr Barotrauma.LocalizedString
---@param shouldParseRichTextData System.Boolean|boolean
---@param postProcess? System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)
---@return Barotrauma.RichString
_G['RichString'] = function(nestedStr, shouldParseRichTextData, postProcess) end

---`Constructor Private Instance`
---@param nestedStr Barotrauma.LocalizedString
---@param shouldParseRichTextData System.Boolean|boolean
---@param postProcess? System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)
---@return Barotrauma.RichString
_G['RichString'].__new = function(nestedStr, shouldParseRichTextData, postProcess) end

