---@meta
---@class Barotrauma.InventoryPlaceCommand : Barotrauma.Command
---`Field Private Instance`
---@field Inventory Barotrauma.Inventory
---`Field Private Instance`
---@field Receivers System.Collections.Generic.List*1Barotrauma*InventorySlotItem|Barotrauma.InventorySlotItem[]
---`Field Private Instance`
---@field wasDropped System.Boolean|boolean
_G['InventoryPlaceCommand'] = {}

---`Method Public Instance Virtual`
_G['InventoryPlaceCommand'].Execute = function() end

---`Method Public Instance Virtual`
_G['InventoryPlaceCommand'].UnExecute = function() end

---`Method Public Instance Virtual`
_G['InventoryPlaceCommand'].Cleanup = function() end

---`Method Private Instance`
---@param drop System.Boolean|boolean
_G['InventoryPlaceCommand'].ContainUncontain = function(drop) end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['InventoryPlaceCommand'].GetDescription = function() end

---`Constructor Public Instance`
---@param inventory Barotrauma.Inventory
---@param items System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@param dropped System.Boolean|boolean
---@return Barotrauma.InventoryPlaceCommand
_G['InventoryPlaceCommand'] = function(inventory, items, dropped) end

---`Constructor Public Instance`
---@param inventory Barotrauma.Inventory
---@param items System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@param dropped System.Boolean|boolean
---@return Barotrauma.InventoryPlaceCommand
_G['InventoryPlaceCommand'].__new = function(inventory, items, dropped) end

