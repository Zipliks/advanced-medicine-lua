---@meta
---@class Barotrauma.CharacterInfoPrefab : System.Object
---`Field Public Instance`
---@field Heads System.Collections.Immutable.ImmutableArray*1Barotrauma*CharacterInfo*HeadPreset|Barotrauma.CharacterInfo.HeadPreset[]
---`Field Public Instance`
---@field VarTags System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Collections*Immutable*ImmutableHashSet*2Barotrauma*Identifier|{[Barotrauma.Identifier]:System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]}
---`Field Public Instance`
---@field MenuCategoryVar Barotrauma.Identifier
---`Field Public Instance`
---@field Pronouns Barotrauma.Identifier
_G['CharacterInfoPrefab'] = {}

---`Method Public Instance`
---@overload fun(str:System.String|string, headPreset:Barotrauma.CharacterInfo.HeadPreset):System.String|string
---@param str System.String|string
---@param tagSet System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---@return System.String|string
_G['CharacterInfoPrefab'].ReplaceVars = function(str, tagSet) end

---`Constructor Public Instance`
---@param headsElement Barotrauma.ContentXElement
---@param varsElement System.Xml.Linq.XElement
---@param menuCategoryElement System.Xml.Linq.XElement
---@param pronounsElement System.Xml.Linq.XElement
---@return Barotrauma.CharacterInfoPrefab
_G['CharacterInfoPrefab'] = function(headsElement, varsElement, menuCategoryElement, pronounsElement) end

---`Constructor Public Instance`
---@param headsElement Barotrauma.ContentXElement
---@param varsElement System.Xml.Linq.XElement
---@param menuCategoryElement System.Xml.Linq.XElement
---@param pronounsElement System.Xml.Linq.XElement
---@return Barotrauma.CharacterInfoPrefab
_G['CharacterInfoPrefab'].__new = function(headsElement, varsElement, menuCategoryElement, pronounsElement) end

