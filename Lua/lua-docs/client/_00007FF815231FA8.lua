---@meta
---@class Barotrauma.InventoryMoveCommand : Barotrauma.Command
---`Field Private Instance`
---@field oldInventory Barotrauma.Inventory
---`Field Private Instance`
---@field newInventory Barotrauma.Inventory
---`Field Private Instance`
---@field oldSlot System.Int32|integer
---`Field Private Instance`
---@field newSlot System.Int32|integer
---`Field Private Instance`
---@field targetItem Barotrauma.Item
_G['InventoryMoveCommand'] = {}

---`Method Public Instance Virtual`
_G['InventoryMoveCommand'].Execute = function() end

---`Method Public Instance Virtual`
_G['InventoryMoveCommand'].UnExecute = function() end

---`Method Public Instance Virtual`
_G['InventoryMoveCommand'].Cleanup = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['InventoryMoveCommand'].GetDescription = function() end

---`Constructor Public Instance`
---@param oldInventory Barotrauma.Inventory
---@param newInventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param oldSlot System.Int32|integer
---@param newSlot System.Int32|integer
---@return Barotrauma.InventoryMoveCommand
_G['InventoryMoveCommand'] = function(oldInventory, newInventory, item, oldSlot, newSlot) end

---`Constructor Public Instance`
---@param oldInventory Barotrauma.Inventory
---@param newInventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param oldSlot System.Int32|integer
---@param newSlot System.Int32|integer
---@return Barotrauma.InventoryMoveCommand
_G['InventoryMoveCommand'].__new = function(oldInventory, newInventory, item, oldSlot, newSlot) end

