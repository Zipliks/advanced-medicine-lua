---@meta
---@class Barotrauma.CharacterParams.InventoryParams : Barotrauma.CharacterParams.SubParam
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Slots System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AccessibleWhenAlive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Commonness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Items System.Collections.Generic.List*1Barotrauma*CharacterParams*InventoryParams*InventoryItem|Barotrauma.CharacterParams.InventoryParams.InventoryItem[]
_G['CharacterParams']['InventoryParams'] = {}

---`Method Public Instance`
---@param identifier? System.String|string
_G['CharacterParams']['InventoryParams'].AddItem = function(identifier) end

---`Method Public Instance`
---@param item Barotrauma.CharacterParams.InventoryParams.InventoryItem
---@return System.Boolean|boolean
_G['CharacterParams']['InventoryParams'].RemoveItem = function(item) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.InventoryParams
_G['CharacterParams']['InventoryParams'] = function(element, character) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.InventoryParams
_G['CharacterParams']['InventoryParams'].__new = function(element, character) end

