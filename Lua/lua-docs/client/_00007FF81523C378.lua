---@meta
---@class Barotrauma.PurchasedUpgrade : System.Object
---`Field Public Instance`
---@field Category Barotrauma.UpgradeCategory
---`Field Public Instance`
---@field Prefab Barotrauma.UpgradePrefab
---`Field Public Instance`
---@field Level System.Int32|integer
_G['PurchasedUpgrade'] = {}

---`Method Public Instance`
---@param prefab Barotrauma.UpgradePrefab-ref
---@param category Barotrauma.UpgradeCategory-ref
---@param level System.Int32-ref
_G['PurchasedUpgrade'].Deconstruct = function(prefab, category, level) end

---`Constructor Public Instance`
---@param upgradePrefab Barotrauma.UpgradePrefab
---@param category Barotrauma.UpgradeCategory
---@param level? System.Int32|integer
---@return Barotrauma.PurchasedUpgrade
_G['PurchasedUpgrade'] = function(upgradePrefab, category, level) end

---`Constructor Public Instance`
---@param upgradePrefab Barotrauma.UpgradePrefab
---@param category Barotrauma.UpgradeCategory
---@param level? System.Int32|integer
---@return Barotrauma.PurchasedUpgrade
_G['PurchasedUpgrade'].__new = function(upgradePrefab, category, level) end

