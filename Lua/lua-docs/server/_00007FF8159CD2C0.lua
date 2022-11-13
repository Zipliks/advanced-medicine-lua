---@meta
---@class Barotrauma.UpgradeCategory : Barotrauma.UpgradeContentPrefab
---`Field Private Instance`
---@field selfItemTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field prefabsThatAllowUpgrades System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field IsWallUpgrade System.Boolean|boolean
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field ItemTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---`Field Public Static`
---@field Categories Barotrauma.PrefabCollection*1Barotrauma*UpgradeCategory|(fun():Barotrauma.UpgradeCategory)
_G['UpgradeCategory'] = {}

---`Method Public Instance`
_G['UpgradeCategory'].DeterminePrefabsThatAllowUpgrades = function() end

---`Method Public Instance`
---@overload fun(item:Barotrauma.MapEntity, upgradePrefab:Barotrauma.UpgradePrefab):System.Boolean|boolean
---@param element System.Xml.Linq.XElement
---@param prefab Barotrauma.UpgradePrefab
---@return System.Boolean|boolean
_G['UpgradeCategory'].CanBeApplied = function(element, prefab) end

---`Method Public Static`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.UpgradeCategory
_G['UpgradeCategory'].Find = function(identifier) end

---`Method Public Instance Virtual`
_G['UpgradeCategory'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradeCategory
---@return Barotrauma.UpgradeCategory
_G['UpgradeCategory'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradeCategory
---@return Barotrauma.UpgradeCategory
_G['UpgradeCategory'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradeCategory
---@return Barotrauma.UpgradeCategory
_G['UpgradeCategory'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.UpgradeModulesFile):Barotrauma.UpgradeCategory
---@return Barotrauma.UpgradeCategory
_G['UpgradeCategory'].__new = function() end

