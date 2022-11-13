---@meta
---@class Barotrauma.Items.Components.ProducedItem : System.Object
---`Field Public Instance`
---@field StatusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Public Instance`
---@field Producer Barotrauma.Item
---`Field Public Instance`
---@field Prefab Barotrauma.ItemPrefab
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Probability System.Single|number
_G['Components']['ProducedItem'] = {}

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['ProducedItem'].LoadSubElements = function(element) end

---`Constructor Public Instance`
---@overload fun(producer:Barotrauma.Item, prefab:Barotrauma.ItemPrefab, probability:System.Single|number):Barotrauma.Items.Components.ProducedItem
---@param producer Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ProducedItem
_G['Components']['ProducedItem'] = function(producer, element) end

---`Constructor Public Instance`
---@overload fun(producer:Barotrauma.Item, prefab:Barotrauma.ItemPrefab, probability:System.Single|number):Barotrauma.Items.Components.ProducedItem
---@param producer Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ProducedItem
_G['Components']['ProducedItem'].__new = function(producer, element) end

