---@meta
---@class Barotrauma.FabricationRecipe.RequiredItemByTag : Barotrauma.FabricationRecipe.RequiredItem
---`Field Public Instance`
---@field Tag Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field UintIdentifier System.UInt32|integer
---`Getter Public Instance Virtual`
---@field ItemPrefabs System.Collections.Generic.IEnumerable*1Barotrauma*ItemPrefab|(fun():Barotrauma.ItemPrefab)
---`Getter Public Instance Virtual`
---@field FirstMatchingPrefab Barotrauma.ItemPrefab
_G['FabricationRecipe']['RequiredItemByTag'] = {}

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['FabricationRecipe']['RequiredItemByTag'].MatchesItem = function(item) end

---`Constructor Public Instance`
---@param tag Barotrauma.Identifier
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItemByTag
_G['FabricationRecipe']['RequiredItemByTag'] = function(tag, amount, minCondition, maxCondition, useCondition) end

---`Constructor Public Instance`
---@param tag Barotrauma.Identifier
---@param amount System.Int32|integer
---@param minCondition System.Single|number
---@param maxCondition System.Single|number
---@param useCondition System.Boolean|boolean
---@return Barotrauma.FabricationRecipe.RequiredItemByTag
_G['FabricationRecipe']['RequiredItemByTag'].__new = function(tag, amount, minCondition, maxCondition, useCondition) end

