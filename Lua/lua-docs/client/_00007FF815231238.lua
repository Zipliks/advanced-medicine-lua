---@meta
---@class Barotrauma.InventorySlotItem : System.ValueType
---`Field Public Instance`
---@field Slot System.Int32|integer
---`Field Public Instance`
---@field Item Barotrauma.Item
_G['InventorySlotItem'] = {}

---`Method Public Instance`
---@param slot System.Int32-ref
---@param item Barotrauma.Item-ref
_G['InventorySlotItem'].Deconstruct = function(slot, item) end

---`Constructor Public Instance`
---@param slot System.Int32|integer
---@param item Barotrauma.Item
---@return Barotrauma.InventorySlotItem
_G['InventorySlotItem'] = function(slot, item) end

---`Constructor Public Instance`
---@param slot System.Int32|integer
---@param item Barotrauma.Item
---@return Barotrauma.InventorySlotItem
_G['InventorySlotItem'].__new = function(slot, item) end

