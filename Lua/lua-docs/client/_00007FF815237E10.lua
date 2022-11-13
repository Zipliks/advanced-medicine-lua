---@meta
---@class Barotrauma.FabricationRecipe.RequiredItem : System.Object
---`Field Public Instance`
---@field Amount System.Int32|integer
---`Field Public Instance`
---@field MinCondition System.Single|number
---`Field Public Instance`
---@field MaxCondition System.Single|number
---`Field Public Instance`
---@field UseCondition System.Boolean|boolean
---`Getter Public Instance Abstract Virtual`
---@field ItemPrefabs System.Collections.Generic.IEnumerable*1Barotrauma*ItemPrefab|(fun():Barotrauma.ItemPrefab)
---`Getter Public Instance Abstract Virtual`
---@field UintIdentifier System.UInt32|integer
---`Getter Public Instance Abstract Virtual`
---@field FirstMatchingPrefab Barotrauma.ItemPrefab
_G['FabricationRecipe']['RequiredItem'] = {}

---`Method Public Instance Abstract Virtual`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['FabricationRecipe']['RequiredItem'].MatchesItem = function(item) end

---`Method Public Instance`
---@param conditionPercentage System.Single|number
---@return System.Boolean|boolean
_G['FabricationRecipe']['RequiredItem'].IsConditionSuitable = function(conditionPercentage) end

---`Constructor Public Instance`
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItem
_G['FabricationRecipe']['RequiredItem'] = function(amount, minCondition, maxCondition, useCondition) end

---`Constructor Public Instance`
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItem
_G['FabricationRecipe']['RequiredItem'].__new = function(amount, minCondition, maxCondition, useCondition) end

