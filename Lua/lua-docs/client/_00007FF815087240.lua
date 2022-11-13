---@meta
---@class Barotrauma.LocalizedString : System.Object
---@operator add(Barotrauma.LocalizedString):Barotrauma.LocalizedString
---@operator add(System.Object):Barotrauma.LocalizedString
---`Field Private Instance`
---@field languageVersion System.Int32|integer
---`Field NonPublic Instance`
---@field cachedValue System.String|string
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field language Barotrauma.LanguageIdentifier
---`Getter Public Instance`
---@field Value System.String|string
---`Getter Public Instance`
---@field Length System.Int32|integer
---`Getter Public Instance Abstract Virtual`
---@field Loaded System.Boolean|boolean
_G['LocalizedString'] = {}

---`Method NonPublic Instance`
_G['LocalizedString'].UpdateLanguage = function() end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['LocalizedString'].MustRetrieveValue = function() end

---`Method NonPublic Static`
---@param str Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['LocalizedString'].MustRetrieveValue = function(str) end

---`Method Public Instance Abstract Virtual`
_G['LocalizedString'].RetrieveValue = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['LocalizedString'].ToString = function() end

---`Method Public Instance`
---@overload fun(subStr:System.String|string, comparison?:System.StringComparison):System.Boolean|boolean
---@param chr System.Char
---@param comparison? System.StringComparison
---@return System.Boolean|boolean
_G['LocalizedString'].Contains = function(chr, comparison) end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['LocalizedString'].ToUpper = function() end

---`Method Public Static`
---@overload fun(separator:System.String|string, ...:Barotrauma.LocalizedString):Barotrauma.LocalizedString
---@param separator System.String|string
---@param subStrs System.Collections.Generic.IEnumerable*1Barotrauma*LocalizedString|(fun():Barotrauma.LocalizedString)
---@return Barotrauma.LocalizedString
_G['LocalizedString'].Join = function(separator, subStrs) end

---`Method Public Instance`
---@param fallback Barotrauma.LocalizedString
---@return Barotrauma.LocalizedString
_G['LocalizedString'].Fallback = function(fallback) end

---`Method Public Instance`
---@param ... System.Char
---@return System.Collections.Generic.IReadOnlyList*1Barotrauma*LocalizedString|Barotrauma.LocalizedString[]
_G['LocalizedString'].Split = function(...) end

---`Method Public Instance`
---@overload fun(find:Barotrauma.Identifier, replace:Barotrauma.LocalizedString, stringComparison?:System.StringComparison):Barotrauma.LocalizedString
---@overload fun(find:System.String|string, replace:Barotrauma.LocalizedString, stringComparison?:System.StringComparison):Barotrauma.LocalizedString
---@param find Barotrauma.LocalizedString
---@param replace Barotrauma.LocalizedString
---@param stringComparison? System.StringComparison
---@return Barotrauma.LocalizedString
_G['LocalizedString'].Replace = function(find, replace, stringComparison) end

---`Method Public Instance`
---@return Barotrauma.LocalizedString
_G['LocalizedString'].TrimStart = function() end

---`Method Public Instance`
---@return Barotrauma.LocalizedString
_G['LocalizedString'].TrimEnd = function() end

---`Method Public Instance`
---@return Barotrauma.LocalizedString
_G['LocalizedString'].ToLower = function() end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['LocalizedString'].Equals = function(obj) end

---`Method Public Instance`
---@overload fun(other:Barotrauma.LocalizedString, comparison?:System.StringComparison):System.Boolean|boolean
---@param other System.String|string
---@param comparison? System.StringComparison
---@return System.Boolean|boolean
_G['LocalizedString'].Equals = function(other, comparison) end

---`Method Public Instance`
---@overload fun(other:Barotrauma.LocalizedString, comparison?:System.StringComparison):System.Boolean|boolean
---@param other System.String|string
---@param comparison? System.StringComparison
---@return System.Boolean|boolean
_G['LocalizedString'].StartsWith = function(other, comparison) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['LocalizedString'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Int32|integer
_G['LocalizedString'].CompareTo = function(obj) end

---`Constructor NonPublic Instance`
---@return Barotrauma.LocalizedString
_G['LocalizedString'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.LocalizedString
_G['LocalizedString'].__new = function() end

