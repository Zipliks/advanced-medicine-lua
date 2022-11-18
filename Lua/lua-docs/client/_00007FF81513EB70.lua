---@meta
---@class Barotrauma.Inventory : System.Object
---`Field NonPublic Instance`
---@field prevUIScale System.Single|number
---`Field NonPublic Instance`
---@field prevHUDScale System.Single|number
---`Field NonPublic Instance`
---@field prevScreenResolution Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field ReplacedBy Barotrauma.Inventory
---`Field Private Instance`
---@field receivedItemIDs System.Collections.Generic.List|System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[][]
---`Field Private Instance`
---@field syncItemsCoroutine Barotrauma.CoroutineHandle
---`Field Public Instance`
---@field HideTimer System.Single|number
---`Field Private Instance`
---@field isSubInventory System.Boolean|boolean
---`Field Private Instance`
---@field movableFrameRectColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field movableFrameRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field savedPosition Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field originalPos Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field canMove System.Boolean|boolean
---`Field Private Instance`
---@field positionUpdateQueued System.Boolean|boolean
---`Field Private Instance`
---@field draggableIndicatorOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field draggableIndicatorScale System.Single|number
---`Field NonPublic Instance`
---@field padding Microsoft.Xna.Framework.Vector4
---`Field Private Instance`
---@field slotsPerRow System.Int32|integer
---`Field Public Instance`
---@field visualSlots Barotrauma.VisualSlot-arr|Barotrauma.VisualSlot[]
---`Field Private Instance`
---@field prevRect Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field RectTransform Barotrauma.RectTransform
---`Field Public Instance`
---@field OpenState System.Single|number
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
---`Field NonPublic Static`
---@field slotHotkeySprite Barotrauma.Sprite
---`Field Private Static`
---@field slotSpriteSmall Barotrauma.Sprite
---`Field Public Static`
---@field DraggableIndicator Barotrauma.Sprite
---`Field Public Static`
---@field UnequippedIndicator Barotrauma.Sprite
---`Field Public Static`
---@field UnequippedHoverIndicator Barotrauma.Sprite
---`Field Public Static`
---@field UnequippedClickedIndicator Barotrauma.Sprite
---`Field Public Static`
---@field EquippedIndicator Barotrauma.Sprite
---`Field Public Static`
---@field EquippedHoverIndicator Barotrauma.Sprite
---`Field Public Static`
---@field EquippedClickedIndicator Barotrauma.Sprite
---`Field Public Static`
---@field DraggingInventory Barotrauma.Inventory
---`Field Public Static`
---@field DraggingSlot Barotrauma.VisualSlot
---`Field Public Static`
---@field DraggingItems System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Field Public Static`
---@field doubleClickedItems System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Field NonPublic Static`
---@field highlightedSubInventorySlots System.Collections.Generic.HashSet*1Barotrauma*Inventory*SlotReference|Barotrauma.Inventory.SlotReference[]
---`Field Private Static`
---@field subInventorySlotsToDraw System.Collections.Generic.List*1Barotrauma*Inventory*SlotReference|Barotrauma.Inventory.SlotReference[]
---`Field NonPublic Static`
---@field selectedSlot Barotrauma.Inventory.SlotReference
---`Field Private Static`
---@field movableFrameRectHeight System.Single|number
---`Field Public Static`
---@field MaxStackSize System.Int32|integer
---`Getter Public Static`
---@field UIScale System.Single|number
---`Getter Public Static`
---@field ContainedIndicatorHeight System.Int32|integer
---`Getter Public Static`
---@field SlotSpriteSmall Barotrauma.Sprite
---`Getter Public Static`
---@field IndicatorScaleAdjustment System.Single|number
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field BackgroundFrame Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---@field DraggingItemToWorld System.Boolean|boolean
---<br/>`Setter Public Instance`
---@field SlotsPerRow System.Int32|integer
---`Getter Public Static`
---@field SelectedSlot Barotrauma.Inventory.SlotReference
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field IsMouseOnInventory System.Boolean|boolean
---`Getter Public Instance`
---@field AllItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---@field AllItemsMod System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---@field Capacity System.Int32|integer
_G['Inventory'] = {}

---`Method Public Instance`
---@return Barotrauma.Inventory
_G['Inventory'].GetReplacementOrThiS = function() end

---`Method Public Instance Virtual`
_G['Inventory'].CreateSlots = function() end

---`Method NonPublic Instance Virtual`
_G['Inventory'].CalculateBackgroundFrame = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Inventory'].Movable = function() end

---`Method Public Instance`
---@param owner Barotrauma.Character
---@param container Barotrauma.Items.Components.ItemContainer
---@return System.Boolean|boolean
_G['Inventory'].IsInventoryHoverAvailable = function(owner, container) end

---`Method NonPublic Instance Virtual`
---@param i System.Int32|integer
---@return System.Boolean|boolean
_G['Inventory'].HideSlot = function(i) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
---@param subInventory? System.Boolean|boolean
_G['Inventory'].Update = function(deltaTime, cam, subInventory) end

---`Method NonPublic Instance Virtual`
---@param cam Barotrauma.Camera
_G['Inventory'].ControlInput = function(cam) end

---`Method NonPublic Instance`
---@param slot Barotrauma.VisualSlot
---@param slotIndex System.Int32|integer
---@param item Barotrauma.Item
---@param isSubSlot System.Boolean|boolean
_G['Inventory'].UpdateSlot = function(slot, slotIndex, item, isSubSlot) end

---`Method NonPublic Instance`
---@param slotIndex System.Int32|integer
---@return Barotrauma.Inventory
_G['Inventory'].GetSubInventory = function(slotIndex) end

---`Method NonPublic Instance Virtual`
---@param slotIndex System.Int32|integer
---@return Barotrauma.ItemInventory
_G['Inventory'].GetActiveEquippedSubInventory = function(slotIndex) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param slotIndex System.Int32|integer
---@param cam Barotrauma.Camera
_G['Inventory'].UpdateSubInventory = function(deltaTime, slotIndex, cam) end

---`Method Public Instance`
_G['Inventory'].ClearSubInventories = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param subInventory? System.Boolean|boolean
_G['Inventory'].Draw = function(spriteBatch, subInventory) end

---`Method Public Static`
---@param slot Barotrauma.VisualSlot
---@return System.Boolean|boolean
_G['Inventory'].IsMouseOnSlot = function(slot) end

---`Method Public Static`
_G['Inventory'].RefreshMouseOnInventory = function() end

---`Method Private Static`
---@param ignoreDraggedItem? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Inventory'].DetermineMouseOnInventory = function(ignoreDraggedItem) end

---`Method Public Static`
---@return Barotrauma.CursorState
_G['Inventory'].GetInventoryMouseCursor = function() end

---`Method NonPublic Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param toolTip Barotrauma.RichString
---@param highlightedSlot Microsoft.Xna.Framework.Rectangle
_G['Inventory'].DrawToolTip = function(spriteBatch, toolTip, highlightedSlot) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param slotIndex System.Int32|integer
_G['Inventory'].DrawSubInventory = function(spriteBatch, slotIndex) end

---`Method Public Static`
_G['Inventory'].UpdateDragging = function() end

---`Method Private Static`
---@param selectedSlot Barotrauma.Inventory.SlotReference
---@return System.Boolean|boolean
_G['Inventory'].CanSelectSlot = function(selectedSlot) end

---`Method NonPublic Static`
---@param subSlot Barotrauma.Inventory.SlotReference
---@return Microsoft.Xna.Framework.Rectangle
_G['Inventory'].GetSubInventoryHoverArea = function(subSlot) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Inventory'].DrawFront = function(spriteBatch) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param inventory Barotrauma.Inventory
---@param slot Barotrauma.VisualSlot
---@param item Barotrauma.Item
---@param slotIndex System.Int32|integer
---@param drawItem? System.Boolean|boolean
---@param type? Barotrauma.InvSlotType
_G['Inventory'].DrawSlot = function(spriteBatch, inventory, slot, item, slotIndex, drawItem, type) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param inventory Barotrauma.Inventory
---@param indicatorSprite Barotrauma.Sprite
---@param emptyIndicatorSprite Barotrauma.Sprite
---@param containedIndicatorArea Microsoft.Xna.Framework.Rectangle
---@param containedState System.Single|number
---@param pulsate? System.Boolean|boolean
_G['Inventory'].DrawItemStateIndicator = function(spriteBatch, inventory, indicatorSprite, emptyIndicatorSprite, containedIndicatorArea, containedState, pulsate) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Inventory'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param lastEventID System.UInt16|integer
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Inventory'].SyncItemsAfterDelay = function(lastEventID) end

---`Method Public Instance`
_G['Inventory'].ApplyReceivedState = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Inventory'].ClientEventWrite = function(msg, extraData) end

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
---@overload fun(owner:Barotrauma.Entity, capacity:System.Int32|integer, slotsPerRow?:System.Int32|integer):Barotrauma.Inventory
---@return Barotrauma.Inventory
_G['Inventory'] = function() end

---`Constructor Public Instance`
---@overload fun(owner:Barotrauma.Entity, capacity:System.Int32|integer, slotsPerRow?:System.Int32|integer):Barotrauma.Inventory
---@return Barotrauma.Inventory
_G['Inventory'].__new = function() end

---`Constructor Private Static`
---@overload fun(owner:Barotrauma.Entity, capacity:System.Int32|integer, slotsPerRow?:System.Int32|integer):Barotrauma.Inventory
---@return Barotrauma.Inventory
_G['Inventory'] = function() end

---`Constructor Private Static`
---@overload fun(owner:Barotrauma.Entity, capacity:System.Int32|integer, slotsPerRow?:System.Int32|integer):Barotrauma.Inventory
---@return Barotrauma.Inventory
_G['Inventory'].__new = function() end

