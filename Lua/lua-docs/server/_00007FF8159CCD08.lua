---@meta
---@class Barotrauma.FabricationRecipe.RequiredItemByIdentifier : Barotrauma.FabricationRecipe.RequiredItem
---`Field Public Instance`
---@field ItemPrefabIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---@field ItemPrefab Barotrauma.ItemPrefab
---`Getter Public Instance Virtual`
---@field UintIdentifier System.UInt32|integer
---`Getter Public Instance Virtual`
---@field ItemPrefabs System.Collections.Generic.IEnumerable*1Barotrauma*ItemPrefab|(fun():Barotrauma.ItemPrefab)
---`Getter Public Instance Virtual`
---@field FirstMatchingPrefab Barotrauma.ItemPrefab
_G['FabricationRecipe']['RequiredItemByIdentifier'] = {}

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['FabricationRecipe']['RequiredItemByIdentifier'].MatchesItem = function(item) end

---`Constructor Public Instance`
---@param itemPrefab Barotrauma.Identifier
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItemByIdentifier
_G['FabricationRecipe']['RequiredItemByIdentifier'] = function(itemPrefab, amount, minCondition, maxCondition, useCondition) end

---`Constructor Public Instance`
---@param itemPrefab Barotrauma.Identifier
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItemByIdentifier
_G['FabricationRecipe']['RequiredItemByIdentifier'].__new = function(itemPrefab, amount, minCondition, maxCondition, useCondition) end

