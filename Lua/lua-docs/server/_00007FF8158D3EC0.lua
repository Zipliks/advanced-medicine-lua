---@meta
---@class Barotrauma.TalentOption : System.Object
---`Field Private Instance`
---@field talentIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---@field TalentIdentifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['TalentOption'] = {}

---`Method Public Instance`
---@param talentIdentifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['TalentOption'].HasTalent = function(talentIdentifier) end

---`Constructor Public Instance`
---@param talentOptionsElement Barotrauma.ContentXElement
---@param debugIdentifier Barotrauma.Identifier
---@return Barotrauma.TalentOption
_G['TalentOption'] = function(talentOptionsElement, debugIdentifier) end

---`Constructor Public Instance`
---@param talentOptionsElement Barotrauma.ContentXElement
---@param debugIdentifier Barotrauma.Identifier
---@return Barotrauma.TalentOption
_G['TalentOption'].__new = function(talentOptionsElement, debugIdentifier) end

