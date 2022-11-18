---@meta
---@class Barotrauma.MapEntityPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Private Instance`
---@field cachedAllowedUpgrades System.String|string
---`Field Private Instance`
---@field allowedUpgradeSet System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field NonPublic Static`
---@field placePosition Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field List System.Collections.Generic.IEnumerable*1Barotrauma*MapEntityPrefab|(fun():Barotrauma.MapEntityPrefab)
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field Selected Barotrauma.MapEntityPrefab
---`Getter Public Instance Abstract Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance Abstract Virtual`
---@field OriginalName System.String|string
---`Getter Public Instance Abstract Virtual`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance Abstract Virtual`
---@field Tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Abstract Virtual`
---@field AllowedLinks System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Abstract Virtual`
---@field Category Barotrauma.MapEntityCategory
---`Getter Public Instance Abstract Virtual`
---@field Aliases System.Collections.Immutable.ImmutableHashSet*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field ResizeHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field ResizeVertical System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Description Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field AllowedUpgrades System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field HideInMenus System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Subcategory System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Linkable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field SpriteColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Scale System.Single|number
_G['MapEntityPrefab'] = {}

---`Method Public Static`
---@param selection System.Object
---@return System.Boolean|boolean
_G['MapEntityPrefab'].SelectPrefab = function(selection) end

---`Method Public Static`
---@return System.Object
_G['MapEntityPrefab'].GetSelected = function() end

---`Method Public Static`
---@overload fun(name:System.String|string, identifier?:System.String|string, showErrorMessages?:System.Boolean|boolean):Barotrauma.MapEntityPrefab
---@overload fun(name:System.String|string, identifier:Barotrauma.Identifier, showErrorMessages?:System.Boolean|boolean):Barotrauma.MapEntityPrefab
---@param predicate System.Predicate*1Barotrauma*MapEntityPrefab|(fun(obj:Barotrauma.MapEntityPrefab):System.Boolean|boolean)
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].Find = function(predicate) end

---`Method Public Static`
---@param predicate System.Predicate*1Barotrauma*MapEntityPrefab|(fun(obj:Barotrauma.MapEntityPrefab):System.Boolean|boolean)
---@param sync Barotrauma.Rand.RandSync
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].GetRandom = function(predicate, sync) end

---`Method Public Static`
---@param name System.String|string
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].FindByName = function(name) end

---`Method Public Static`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].FindByIdentifier = function(identifier) end

---`Method Public Instance`
---@return System.String|string
_G['MapEntityPrefab'].GetItemNameTextId = function() end

---`Method Public Instance`
---@return System.String|string
_G['MapEntityPrefab'].GetHullNameTextId = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['MapEntityPrefab'].GetAllowedUpgrades = function() end

---`Method Public Instance`
---@param subcategory System.String|string
---@return System.Boolean|boolean
_G['MapEntityPrefab'].HasSubCategory = function(subcategory) end

---`Method NonPublic Instance Abstract Virtual`
---@param rect Microsoft.Xna.Framework.Rectangle
_G['MapEntityPrefab'].CreateInstance = function(rect) end

---`Method Public Instance`
---@overload fun(name:System.String|string, comparisonType:System.StringComparison):System.Boolean|boolean
---@param allowedNames System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param comparisonType System.StringComparison
---@return System.Boolean|boolean
_G['MapEntityPrefab'].NameMatches = function(allowedNames, comparisonType) end

---`Method Public Instance`
---@param target Barotrauma.MapEntityPrefab
---@return System.Boolean|boolean
_G['MapEntityPrefab'].IsLinkAllowed = function(target) end

---`Method NonPublic Instance`
---@param element Barotrauma.ContentXElement
_G['MapEntityPrefab'].LoadDescription = function(element) end

---`Constructor NonPublic Instance`
---@overload fun(identifier:Barotrauma.Identifier):Barotrauma.MapEntityPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.ContentFile
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'] = function(element, file) end

---`Constructor NonPublic Instance`
---@overload fun(identifier:Barotrauma.Identifier):Barotrauma.MapEntityPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.ContentFile
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].__new = function(element, file) end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):Barotrauma.MapEntityPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.ContentFile
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'] = function(element, file) end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):Barotrauma.MapEntityPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.ContentFile
---@return Barotrauma.MapEntityPrefab
_G['MapEntityPrefab'].__new = function(element, file) end

