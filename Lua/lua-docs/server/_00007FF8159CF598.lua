---@meta
---@class Barotrauma.UpgradePrefab : Barotrauma.UpgradeContentPrefab
---`Field Public Instance`
---@field MaxLevel System.Int32|integer
---`Field Private Instance`
---@field upgradeCategoryIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field MaxLevelsMods System.Collections.Immutable.ImmutableArray*1Barotrauma*UpgradeMaxLevelMod|Barotrauma.UpgradeMaxLevelMod[]
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*UpgradePrefab|(fun():Barotrauma.UpgradePrefab)
---`Getter Public Instance`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance`
---@field Description Barotrauma.LocalizedString
---`Getter Public Instance`
---@field IncreaseOnTooltip System.Single|number
---`Getter Public Instance`
---@field UpgradeCategories System.Collections.Generic.IEnumerable*1Barotrauma*UpgradeCategory|(fun():Barotrauma.UpgradeCategory)
---`Getter Public Instance`
---@field Price Barotrauma.UpgradePrice
---`Getter Private Instance`
---@field isOverride System.Boolean|boolean
---`Getter Public Instance`
---@field SourceElement Barotrauma.ContentXElement
---`Getter Public Instance`
---@field SuppressWarnings System.Boolean|boolean
---`Getter Public Instance`
---@field HideInMenus System.Boolean|boolean
---`Getter Public Instance`
---@field TargetItems System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---`Getter Public Instance`
---@field IsWallUpgrade System.Boolean|boolean
---`Getter Private Instance`
---@field targetProperties System.Collections.Generic.Dictionary*1System*String*1System*String-arr|{[System.String|string]:System.String-arr|System.String|string[]}
_G['UpgradePrefab'] = {}

---`Method Public Instance`
---@return System.Int32|integer
_G['UpgradePrefab'].GetMaxLevelForCurrentSub = function() end

---`Method Public Instance`
---@param info Barotrauma.SubmarineInfo
---@return System.Int32|integer
_G['UpgradePrefab'].GetMaxLevel = function(info) end

---`Method Public Instance`
---@param info Barotrauma.SubmarineInfo
---@return System.Boolean|boolean
_G['UpgradePrefab'].IsApplicable = function(info) end

---`Method Public Instance`
---@param item Barotrauma.MapEntity
---@return System.Boolean|boolean
_G['UpgradePrefab'].IsDisallowed = function(item) end

---`Method Public Static`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.UpgradePrefab
_G['UpgradePrefab'].Find = function(identifier) end

---`Method Public Static`
---@param value System.String|string
---@param attribute? Barotrauma.Identifier
---@param sourceElement? System.Xml.Linq.XElement
---@param suppressWarnings? System.Boolean|boolean
---@return System.Int32|integer
_G['UpgradePrefab'].ParsePercentage = function(value, attribute, sourceElement, suppressWarnings) end

---`Method Public Instance Virtual`
_G['UpgradePrefab'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradePrefab
---@return Barotrauma.UpgradePrefab
_G['UpgradePrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradePrefab
---@return Barotrauma.UpgradePrefab
_G['UpgradePrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradePrefab
---@return Barotrauma.UpgradePrefab
_G['UpgradePrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradePrefab
---@return Barotrauma.UpgradePrefab
_G['UpgradePrefab'].__new = function() end

