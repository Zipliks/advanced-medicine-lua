---@meta
---@class Barotrauma.TextManager : System.Object
---`Field Public Static`
---@field DefaultLanguage Barotrauma.LanguageIdentifier
---`Field Public Static`
---@field TextPacks System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*LanguageIdentifier*1System*Collections*Immutable*ImmutableHashSet*2Barotrauma*TextPack|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*LanguageIdentifier*1System*Collections*Immutable*ImmutableHashSet*2Barotrauma*TextPack)
---`Field Private Static`
---@field cachedStrings System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*WeakReference*2Barotrauma*TagLString|{[Barotrauma.Identifier]:System.WeakReference*1Barotrauma*TagLString}
---`Field Private Static`
---@field nonCacheableTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Static`
---@field CjkRanges System.Collections.Immutable.ImmutableArray*1Barotrauma*Range*2System*Int32|Barotrauma.Range*1System*Int32[]
---`Getter Public Static`
---@field AvailableLanguages System.Collections.Generic.IEnumerable*1Barotrauma*LanguageIdentifier|(fun():Barotrauma.LanguageIdentifier)
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field LanguageVersion System.Int32|integer
_G['TextManager'] = {}

---`Method Public Static`
---@overload fun(text:Barotrauma.LocalizedString):System.Boolean|boolean
---@param text System.String|string
---@return System.Boolean|boolean
_G['TextManager'].IsCJK = function(text) end

---`Method Public Static`
_G['TextManager'].VerifyLanguageAvailable = function() end

---`Method Public Static`
---@overload fun(tag:System.String|string):System.Boolean|boolean
---@param tag Barotrauma.Identifier
---@return System.Boolean|boolean
_G['TextManager'].ContainsTag = function(tag) end

---`Method Public Static`
---@overload fun(tag:System.String|string):System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param tag Barotrauma.Identifier
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['TextManager'].GetAll = function(tag) end

---`Method Public Static`
---@return System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2System*String|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1System*String)
_G['TextManager'].GetAllTagTextPairs = function() end

---`Method Public Static`
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['TextManager'].GetTextFiles = function() end

---`Method Private Static`
---@param directory System.String|string
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['TextManager'].GetTextFilesRecursive = function(directory) end

---`Method Public Static`
---@param languageIdentifier Barotrauma.LanguageIdentifier
---@return System.String|string
_G['TextManager'].GetTranslatedLanguageName = function(languageIdentifier) end

---`Method Public Static`
_G['TextManager'].ClearCache = function() end

---`Method Public Static`
---@overload fun(...:Barotrauma.Identifier):Barotrauma.LocalizedString
---@param ... System.String|string
---@return Barotrauma.LocalizedString
_G['TextManager'].Get = function(...) end

---`Method Public Static`
---@param punctuationSymbol System.Char
---@param ... Barotrauma.LocalizedString
---@return Barotrauma.LocalizedString
_G['TextManager'].AddPunctuation = function(punctuationSymbol, ...) end

---`Method Public Static`
---@overload fun(tag:Barotrauma.Identifier, ...:System.Object):Barotrauma.LocalizedString
---@param str Barotrauma.LocalizedString
---@param ... System.Object
---@return Barotrauma.LocalizedString
_G['TextManager'].GetFormatted = function(str, ...) end

---`Method Public Static`
---@overload fun(str:System.String|string):System.String|string
---@param message System.String|string
---@param ... System.ValueTuple*1System*String*1System*String
---@return System.String|string
_G['TextManager'].FormatServerMessage = function(message, ...) end

---`Method NonPublic Static`
---@param charInfo Barotrauma.CharacterInfo
---@param message System.String|string
---@param ... System.ValueTuple*1System*String*1System*String
---@return System.String|string
_G['TextManager'].FormatServerMessageWithPronouns = function(charInfo, message, ...) end

---`Method Public Static`
---@param separator System.String|string
---@param parts System.String-arr|System.String|string[]
---@param namePrefix? System.String|string
---@return System.String|string
_G['TextManager'].JoinServerMessages = function(separator, parts, namePrefix) end

---`Method Public Static`
---@param str Barotrauma.LocalizedString
---@param useColorHighlight? System.Boolean|boolean
---@return Barotrauma.LocalizedString
_G['TextManager'].ParseInputTypes = function(str, useColorHighlight) end

---`Method Public Static`
---@overload fun(tag:System.String|string, varName:System.String|string, value:Barotrauma.LocalizedString, formatCapitals?:Barotrauma.FormatCapitals):Barotrauma.LocalizedString
---@param tag Barotrauma.Identifier
---@param varName Barotrauma.Identifier
---@param value Barotrauma.LocalizedString
---@param formatCapitals? Barotrauma.FormatCapitals
---@return Barotrauma.LocalizedString
_G['TextManager'].GetWithVariable = function(tag, varName, value, formatCapitals) end

---`Method Public Static`
---@overload fun(tag:System.String|string, ...:System.ValueTuple*1System*String*1System*String):Barotrauma.LocalizedString
---@overload fun(tag:System.String|string, ...:System.ValueTuple*1System*String*1Barotrauma*LocalizedString):Barotrauma.LocalizedString
---@overload fun(tag:System.String|string, ...:System.ValueTuple*1System*String*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals):Barotrauma.LocalizedString
---@overload fun(tag:System.String|string, ...:System.ValueTuple*1System*String*1System*String*1Barotrauma*FormatCapitals):Barotrauma.LocalizedString
---@overload fun(tag:Barotrauma.Identifier, ...:System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString):Barotrauma.LocalizedString
---@param tag Barotrauma.Identifier
---@param replacements System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*Identifier*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|(fun():System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals)
---@return Barotrauma.LocalizedString
_G['TextManager'].GetWithVariables = function(tag, replacements) end

---`Method Public Static`
---@param description Barotrauma.LocalizedString-ref
---@param descriptionElement System.Xml.Linq.XElement
_G['TextManager'].ConstructDescription = function(description, descriptionElement) end

---`Method Public Static`
---@param amount System.Int32|integer
---@return Barotrauma.LocalizedString
_G['TextManager'].FormatCurrency = function(amount) end

---`Method Public Static`
---@param serverMessage System.String|string
---@return Barotrauma.LocalizedString
_G['TextManager'].GetServerMessage = function(serverMessage) end

---`Method Public Static`
---@param str Barotrauma.LocalizedString
---@return Barotrauma.LocalizedString
_G['TextManager'].Capitalize = function(str) end

---`Method Public Static`
_G['TextManager'].IncrementLanguageVersion = function() end

---`Constructor Private Static`
---@return Barotrauma.TextManager
_G['TextManager'] = function() end

---`Constructor Private Static`
---@return Barotrauma.TextManager
_G['TextManager'].__new = function() end

