---@meta
---@class Barotrauma.TextPack : System.Object
---`Field Public Instance`
---@field ContentFile Barotrauma.TextFile
---`Field Public Instance`
---@field Language Barotrauma.LanguageIdentifier
---`Field Public Instance`
---@field Texts System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Collections*Immutable*ImmutableArray*2System*String|{[Barotrauma.Identifier]:System.Collections.Immutable.ImmutableArray*1System*String|System.String|string[]}
---`Field Public Instance`
---@field TranslatedName System.String|string
---`Field Public Instance`
---@field NoWhitespace System.Boolean|boolean
_G['TextPack'] = {}

---`Constructor Public Instance`
---@param file Barotrauma.TextFile
---@param mainElement Barotrauma.ContentXElement
---@param language Barotrauma.LanguageIdentifier
---@return Barotrauma.TextPack
_G['TextPack'] = function(file, mainElement, language) end

---`Constructor Public Instance`
---@param file Barotrauma.TextFile
---@param mainElement Barotrauma.ContentXElement
---@param language Barotrauma.LanguageIdentifier
---@return Barotrauma.TextPack
_G['TextPack'].__new = function(file, mainElement, language) end

