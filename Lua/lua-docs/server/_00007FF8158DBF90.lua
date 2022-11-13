---@meta
---@class Barotrauma.Inventory : System.Object
---`Field Public Instance`
---@field Owner Barotrauma.Entity
---`Field NonPublic Instance`
---@field capacity System.Int32|integer
---`Field NonPublic Instance`
---@field slots Barotrauma.ItemSlot-arr|Barotrauma.Inventory.ItemSlot[]
---`Field Public Instance`
---@field Locked System.Boolean|boolean
---`Field NonPublic Instance`
---@field syncItemsDelay System.Single|number
---`Field Private Instance`
---@field allItemsList System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Field Public Instance`
---@field AllowSwappingContainedItems System.Boolean|boolean
---`Field Public Static`
---@field MaxStackSize System.Int32|integer
---`Getter Public Instance`
---@field AllItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---@field AllItemsMod System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---@field Capacity System.Int32|integer
_G['Inventory'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Inventory'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Inventory'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Inventory'].Contains = function(item) end

---`Method Public Instance`
---@return Barotrauma.Item
_G['Inventory'].FirstOrDefault = function() end

---`Method Public Instance`
---@return Barotrauma.Item
_G['Inventory'].LastOrDefault = function() end

---`Method Public Instance`
---@param index System.Int32|integer
---@return Barotrauma.Item
_G['Inventory'].GetItemAt = function(index) end

---`Method Public Instance`
---@param index System.Int32|integer
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
_G['Inventory'].GetItemsAt = function(index) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Int32|integer
_G['Inventory'].FindIndex = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
_G['Inventory'].FindIndices = function(item) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Inventory'].ItemOwnsSelf = function(item) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@param ignoreCondition? System.Boolean|boolean
---@return System.Int32|integer
_G['Inventory'].FindAllowedSlot = function(item, ignoreCondition) end

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@param condition? System.Nullable*1System*Single|number
---@param quality? System.Nullable*1System*Int32|integer
---@return System.Boolean|boolean
_G['Inventory'].CanBePut = function(itemPrefab, condition, quality) end

---`Method Public Instance Virtual`
---@overload fun(item:Barotrauma.Item, i:System.Int32|integer, ignoreCondition?:System.Boolean|boolean):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@param i System.Int32|integer
---@param condition? System.Nullable*1System*Single|number
---@param quality? System.Nullable*1System*Int32|integer
---@return System.Boolean|boolean
_G['Inventory'].CanBePutInSlot = function(itemPrefab, i, condition, quality) end

---`Method Public Instance`
---@param itemPrefab Barotrauma.ItemPrefab
---@param condition? System.Nullable*1System*Single|number
---@return System.Int32|integer
_G['Inventory'].HowManyCanBePut = function(itemPrefab, condition) end

---`Method Public Instance Virtual`
---@param itemPrefab Barotrauma.ItemPrefab
---@param i System.Int32|integer
---@param condition System.Nullable*1System*Single|number
---@return System.Int32|integer
_G['Inventory'].HowManyCanBePut = function(itemPrefab, i, condition) end

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
_G['Inventory'].TryPutItem = function(item, i, allowSwapping, allowCombine, user, createNetworkEvent, ignoreCondition) end

---`Method NonPublic Instance Virtual`
---@param item Barotrauma.Item
---@param i System.Int32|integer
---@param user Barotrauma.Character
---@param removeItem? System.Boolean|boolean
---@param createNetworkEvent? System.Boolean|boolean
_G['Inventory'].PutItem = function(item, i, user, removeItem, createNetworkEvent) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Inventory'].IsEmpty = function() end

---`Method Public Instance Virtual`
---@param takeStacksIntoAccount? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Inventory'].IsFull = function(takeStacksIntoAccount) end

---`Method NonPublic Instance`
---@param index System.Int32|integer
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param createNetworkEvent System.Boolean|boolean
---@param swapWholeStack System.Boolean|boolean
---@return System.Boolean|boolean
_G['Inventory'].TrySwapping = function(index, item, user, createNetworkEvent, swapWholeStack) end

---`Method Public Instance Virtual`
_G['Inventory'].CreateNetworkEvent = function() end

---`Method Public Instance`
---@param predicate System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---@param recursive System.Boolean|boolean
---@return Barotrauma.Item
_G['Inventory'].FindItem = function(predicate, recursive) end

---`Method Public Instance`
---@param predicate? System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---@param recursive? System.Boolean|boolean
---@param list? System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['Inventory'].FindAllItems = function(predicate, recursive, list) end

---`Method Public Instance`
---@param tag Barotrauma.Identifier
---@param recursive? System.Boolean|boolean
---@return Barotrauma.Item
_G['Inventory'].FindItemByTag = function(tag, recursive) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@param recursive? System.Boolean|boolean
---@return Barotrauma.Item
_G['Inventory'].FindItemByIdentifier = function(identifier, recursive) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
_G['Inventory'].RemoveItem = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param index System.Int32|integer
_G['Inventory'].ForceToSlot = function(item, index) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param index System.Int32|integer
_G['Inventory'].ForceRemoveFromSlot = function(item, index) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param newItemIds System.Collections.Generic.List
_G['Inventory'].SharedRead = function(msg, newItemIds) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Inventory'].SharedWrite = function(msg, extraData) end

---`Method Public Instance`
_G['Inventory'].DeleteAllItems = function() end

---`Constructor Public Instance`
---@param owner Barotrauma.Entity
---@param capacity System.Int32|integer
---@param slotsPerRow? System.Int32|integer
---@return Barotrauma.Inventory
_G['Inventory'] = function(owner, capacity, slotsPerRow) end

---`Constructor Public Instance`
---@param owner Barotrauma.Entity
---@param capacity System.Int32|integer
---@param slotsPerRow? System.Int32|integer
---@return Barotrauma.Inventory
_G['Inventory'].__new = function(owner, capacity, slotsPerRow) end

