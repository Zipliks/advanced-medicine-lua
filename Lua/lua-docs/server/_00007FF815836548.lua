---@meta
---@class Barotrauma.AddedPunctuationLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field nestedStrs System.Collections.Immutable.ImmutableArray*1Barotrauma*LocalizedString|Barotrauma.LocalizedString[]
---`Field Private Instance`
---@field punctuationSymbol System.Char
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['AddedPunctuationLString'] = {}

---`Method Public Instance Virtual`
_G['AddedPunctuationLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param symbol System.Char
---@param ... Barotrauma.LocalizedString
---@return Barotrauma.AddedPunctuationLString
_G['AddedPunctuationLString'] = function(symbol, ...) end

---`Constructor Public Instance`
---@param symbol System.Char
---@param ... Barotrauma.LocalizedString
---@return Barotrauma.AddedPunctuationLString
_G['AddedPunctuationLString'].__new = function(symbol, ...) end

