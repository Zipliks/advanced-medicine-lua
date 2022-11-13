---@meta
---@class Barotrauma.ItemInventory : Barotrauma.Inventory
---`Field Private Instance`
---@field container Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance`
---@field Container Barotrauma.Items.Components.ItemContainer
_G['ItemInventory'] = {}

---`Method NonPublic Instance Virtual`
---@param cam Barotrauma.Camera
_G['ItemInventory'].ControlInput = function(cam) end

---`Method NonPublic Instance Virtual`
_G['ItemInventory'].CalculateBackgroundFrame = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param subInventory? System.Boolean|boolean
_G['ItemInventory'].Draw = function(spriteBatch, subInventory) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@param ignoreCondition? System.Boolean|boolean
---@return System.Int32|integer
_G['ItemInventory'].FindAllowedSlot = function(item, ignoreCondition) end

---`Method Public Instance Virtual`
---@overload fun(item:Barotrauma.Item, i:System.Int32|integer, ignoreCondition?:System.Boolean|boolean):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@param i System.Int32|integer
---@param condition System.Nullable*1System*Single|number
---@param quality? System.Nullable*1System*Int32|integer
---@return System.Boolean|boolean
_G['ItemInventory'].CanBePutInSlot = function(itemPrefab, i, condition, quality) end

---`Method Public Instance Virtual`
---@param itemPrefab Barotrauma.ItemPrefab
---@param i System.Int32|integer
---@param condition System.Nullable*1System*Single|number
---@return System.Int32|integer
_G['ItemInventory'].HowManyCanBePut = function(itemPrefab, i, condition) end

---`Method Public Instance Virtual`
---@param takeStacksIntoAccount? System.Boolean|boolean
---@return System.Boolean|boolean
_G['ItemInventory'].IsFull = function(takeStacksIntoAccount) end

---`Method Public Instance Virtual`
---@overload fun(item:Barotrauma.Item, user:Barotrauma.Character, allowedSlots?:System.Collections.Generic.IEnumerable*1Barotrauma*InvSlotType|(fun():Barotrauma.InvSlotType), createNetworkEvent?:System.Boolean|boolean, ignoreCondition?:System.Boolean|boolean):System.Boolean|boolean
---@param item Barotrauma.Item
---@param i System.Int32|integer
---@param allowSwapping System.Boolean|boolean
---@param allowCombine System.Boolean|boolean
---@param user Barotrauma.Character
---@param createNetworkEvent? System.Boolean|boolean
---@param ignoreCondition? System.Boolean|boolean
---@return System.Boolean|boolean
_G['ItemInventory'].TryPutItem = function(item, i, allowSwapping, allowCombine, user, createNetworkEvent, ignoreCondition) end

---`Method Public Instance Virtual`
_G['ItemInventory'].CreateNetworkEvent = function() end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
_G['ItemInventory'].RemoveItem = function(item) end

---`Constructor Public Instance`
---@param owner Barotrauma.Item
---@param container Barotrauma.Items.Components.ItemContainer
---@param capacity System.Int32|integer
---@param slotsPerRow? System.Int32|integer
---@return Barotrauma.ItemInventory
_G['ItemInventory'] = function(owner, container, capacity, slotsPerRow) end

---`Constructor Public Instance`
---@param owner Barotrauma.Item
---@param container Barotrauma.Items.Components.ItemContainer
---@param capacity System.Int32|integer
---@param slotsPerRow? System.Int32|integer
---@return Barotrauma.ItemInventory
_G['ItemInventory'].__new = function(owner, container, capacity, slotsPerRow) end

