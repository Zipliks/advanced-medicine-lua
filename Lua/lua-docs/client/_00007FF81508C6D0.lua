---@meta
---@class Barotrauma.ReplaceLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field nestedStr Barotrauma.LocalizedString
---`Field Private Instance`
---@field replacements System.Collections.Immutable.ImmutableDictionary*1Barotrauma*LocalizedString*1System*ValueTuple*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|{[Barotrauma.LocalizedString]:System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals}
---`Field Private Instance`
---@field stringComparison System.StringComparison
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['ReplaceLString'] = {}

---`Method Private Static`
---@param text System.String|string
---@param variableTag System.String|string
---@param variableValue System.String|string
---@return System.String|string
_G['ReplaceLString'].HandleVariableCapitalization = function(text, variableTag, variableValue) end

---`Method Public Instance Virtual`
_G['ReplaceLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, r:System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*LocalizedString*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|(fun():System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals)):Barotrauma.ReplaceLString
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, ...:System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*LocalizedString):Barotrauma.ReplaceLString
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, r:System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*Identifier*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|(fun():System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals)):Barotrauma.ReplaceLString
---@param nStr Barotrauma.LocalizedString
---@param sc System.StringComparison
---@param ... System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString
---@return Barotrauma.ReplaceLString
_G['ReplaceLString'] = function(nStr, sc, ...) end

---`Constructor Public Instance`
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, r:System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*LocalizedString*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|(fun():System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals)):Barotrauma.ReplaceLString
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, ...:System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*LocalizedString):Barotrauma.ReplaceLString
---@overload fun(nStr:Barotrauma.LocalizedString, sc:System.StringComparison, r:System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*Identifier*2Barotrauma*LocalizedString*2Barotrauma*FormatCapitals|(fun():System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString*1Barotrauma*FormatCapitals)):Barotrauma.ReplaceLString
---@param nStr Barotrauma.LocalizedString
---@param sc System.StringComparison
---@param ... System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*LocalizedString
---@return Barotrauma.ReplaceLString
_G['ReplaceLString'].__new = function(nStr, sc, ...) end

