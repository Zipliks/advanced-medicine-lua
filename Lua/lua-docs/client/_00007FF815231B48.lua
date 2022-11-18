---@meta
---@class Barotrauma.AddOrDeleteCommand : Barotrauma.Command
---`Field Private Instance`
---@field PreviousInventories System.Collections.Generic.Dictionary*1Barotrauma*InventorySlotItem*1Barotrauma*Inventory|{[Barotrauma.InventorySlotItem]:Barotrauma.Inventory}
---`Field Private Instance`
---@field Receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Instance`
---@field CloneList System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Instance`
---@field WasDeleted System.Boolean|boolean
---`Field Private Instance`
---@field ContainedItemsCommand System.Collections.Generic.List*1Barotrauma*AddOrDeleteCommand|Barotrauma.AddOrDeleteCommand[]
_G['AddOrDeleteCommand'] = {}

---`Method Public Instance Virtual`
_G['AddOrDeleteCommand'].Execute = function() end

---`Method Public Instance Virtual`
_G['AddOrDeleteCommand'].UnExecute = function() end

---`Method Public Instance Virtual`
_G['AddOrDeleteCommand'].Cleanup = function() end

---`Method Private Instance`
---@param redo System.Boolean|boolean
_G['AddOrDeleteCommand'].DeleteUndelete = function(redo) end

---`Method Public Instance`
---@param master Barotrauma.AddOrDeleteCommand
_G['AddOrDeleteCommand'].MergeInto = function(master) end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['AddOrDeleteCommand'].GetDescription = function() end

---`Constructor Public Instance`
---@param receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@param wasDeleted System.Boolean|boolean
---@param handleInventoryBehavior? System.Boolean|boolean
---@return Barotrauma.AddOrDeleteCommand
_G['AddOrDeleteCommand'] = function(receivers, wasDeleted, handleInventoryBehavior) end

---`Constructor Public Instance`
---@param receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@param wasDeleted System.Boolean|boolean
---@param handleInventoryBehavior? System.Boolean|boolean
---@return Barotrauma.AddOrDeleteCommand
_G['AddOrDeleteCommand'].__new = function(receivers, wasDeleted, handleInventoryBehavior) end

