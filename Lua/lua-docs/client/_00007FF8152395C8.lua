---@meta
---@class Barotrauma.UpgradePrice : System.ValueType
---`Field Public Instance`
---@field BasePrice System.Int32|integer
---`Field Public Instance`
---@field IncreaseLow System.Int32|integer
---`Field Public Instance`
---@field IncreaseHigh System.Int32|integer
---`Field Public Instance`
---@field Prefab Barotrauma.UpgradePrefab
_G['UpgradePrice'] = {}

---`Method Public Instance`
---@param level System.Int32|integer
---@param location? Barotrauma.Location
---@return System.Int32|integer
_G['UpgradePrice'].GetBuyPrice = function(level, location) end

---`Constructor Public Instance`
---@param prefab Barotrauma.UpgradePrefab
---@param element Barotrauma.ContentXElement
---@return Barotrauma.UpgradePrice
_G['UpgradePrice'] = function(prefab, element) end

---`Constructor Public Instance`
---@param prefab Barotrauma.UpgradePrefab
---@param element Barotrauma.ContentXElement
---@return Barotrauma.UpgradePrice
_G['UpgradePrice'].__new = function(prefab, element) end

