---@meta
---@class Barotrauma.RelatedItem : System.Object
---`Field Private Instance`
---@field excludedIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field type Barotrauma.RelatedItem.RelationType
---`Field Public Instance`
---@field statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Public Instance`
---@field Msg Barotrauma.LocalizedString
---`Field Public Instance`
---@field MsgTag Barotrauma.Identifier
---`Field Public Instance`
---@field TargetSlot System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsOptional System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MatchOnEmpty System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreInEditor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExcludeBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExcludeFullCondition System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowVariants System.Boolean|boolean
---`Getter Public Instance`
---@field Type Barotrauma.RelatedItem.RelationType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field JoinedIdentifiers System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Identifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field JoinedExcludedIdentifiers System.String|string
_G['RelatedItem'] = {}

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@return System.Boolean|boolean
_G['RelatedItem'].MatchesItem = function(itemPrefab) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param parentItem Barotrauma.Item
---@return System.Boolean|boolean
_G['RelatedItem'].CheckRequirements = function(character, parentItem) end

---`Method Private Instance`
---@param parentItem Barotrauma.Item
---@return System.Boolean|boolean
_G['RelatedItem'].CheckContained = function(parentItem) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['RelatedItem'].Save = function(element) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param returnEmpty System.Boolean|boolean
---@param parentDebugName System.String|string
---@return Barotrauma.RelatedItem
_G['RelatedItem'].Load = function(element, returnEmpty, parentDebugName) end

---`Constructor Public Instance`
---@param identifiers Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---@param excludedIdentifiers Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---@return Barotrauma.RelatedItem
_G['RelatedItem'] = function(identifiers, excludedIdentifiers) end

---`Constructor Public Instance`
---@param identifiers Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---@param excludedIdentifiers Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---@return Barotrauma.RelatedItem
_G['RelatedItem'].__new = function(identifiers, excludedIdentifiers) end

