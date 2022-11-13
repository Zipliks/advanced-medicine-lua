---@meta
---@class Barotrauma.CharacterInventory : Barotrauma.Inventory
---`Field Private Instance`
---@field screenResolution Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field SlotPositions Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field layout Barotrauma.CharacterInventory.Layout
---`Field Private Instance`
---@field personalSlotArea Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field character Barotrauma.Character
---`Field NonPublic Instance`
---@field IsEquipped System.Boolean-arr|System.Boolean|boolean[]
---`Field Private Static`
---@field limbSlotIcons System.Collections.Generic.Dictionary*1Barotrauma*InvSlotType*1Barotrauma*Sprite|{[Barotrauma.InvSlotType]:Barotrauma.Sprite}
---`Field Public Static`
---@field SlotSize Microsoft.Xna.Framework.Point
---`Field Public Static`
---@field Spacing System.Int32|integer
---`Field Private Static`
---@field hideSubInventories System.Collections.Generic.List*1Barotrauma*Inventory*SlotReference|Barotrauma.Inventory.SlotReference[]
---`Field Private Static`
---@field tempHighlightedSubInventorySlots System.Collections.Generic.List*1Barotrauma*Inventory*SlotReference|Barotrauma.Inventory.SlotReference[]
---`Field Public Static`
---@field anySlot System.Collections.Generic.List*1Barotrauma*InvSlotType|Barotrauma.InvSlotType[]
---`Field Public Static`
---@field PersonalSlots Barotrauma.InvSlotType
---`Getter Public Static`
---@field LimbSlotIcons System.Collections.Generic.Dictionary*1Barotrauma*InvSlotType*1Barotrauma*Sprite|{[Barotrauma.InvSlotType]:Barotrauma.Sprite}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CurrentLayout Barotrauma.CharacterInventory.Layout
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SlotTypes Barotrauma.InvSlotType-arr|Barotrauma.InvSlotType[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AccessibleWhenAlive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AccessibleByOwner System.Boolean|boolean
_G['CharacterInventory'] = {}

---`Method NonPublic Instance Virtual`
---@param slotIndex System.Int32|integer
---@return Barotrauma.ItemInventory
_G['CharacterInventory'].GetActiveEquippedSubInventory = function(slotIndex) end

---`Method Public Instance Virtual`
_G['CharacterInventory'].CreateSlots = function() end

---`Method NonPublic Instance Virtual`
_G['CharacterInventory'].CalculateBackgroundFrame = function() end

---`Method NonPublic Instance Virtual`
---@param i System.Int32|integer
---@return System.Boolean|boolean
_G['CharacterInventory'].HideSlot = function(i) end

---`Method Private Instance`
---@param layout Barotrauma.CharacterInventory.Layout
_G['CharacterInventory'].SetSlotPositions = function(layout) end

---`Method NonPublic Instance Virtual`
---@param cam Barotrauma.Camera
_G['CharacterInventory'].ControlInput = function(cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
---@param isSubInventory? System.Boolean|boolean
_G['CharacterInventory'].Update = function(deltaTime, cam, isSubInventory) end

---`Method Public Instance`
_G['CharacterInventory'].UpdateSlotInput = function() end

---`Method Private Instance`
---@param item Barotrauma.Item
---@param slot Barotrauma.VisualSlot
---@param deltaTime System.Single|number
_G['CharacterInventory'].HandleButtonEquipStates = function(item, slot, deltaTime) end

---`Method Private Instance`
---@param slotRef Barotrauma.Inventory.SlotReference
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
---@param hideSubInventories System.Collections.Generic.List*1Barotrauma*Inventory*SlotReference|Barotrauma.Inventory.SlotReference[]
---@param isEquippedSubInventory System.Boolean|boolean
_G['CharacterInventory'].ShowSubInventory = function(slotRef, deltaTime, cam, hideSubInventories, isEquippedSubInventory) end

---`Method Public Instance`
_G['CharacterInventory'].AssignQuickUseNumKeys = function() end

---`Method Private Instance`
---@param item Barotrauma.Item
---@param allowEquip System.Boolean|boolean
---@param allowInventorySwap System.Boolean|boolean
---@param allowApplyTreatment System.Boolean|boolean
---@return Barotrauma.CharacterInventory.QuickUseAction
_G['CharacterInventory'].GetQuickUseAction = function(item, allowEquip, allowInventorySwap, allowApplyTreatment) end

---`Method Private Instance`
---@param item Barotrauma.Item
---@param allowEquip System.Boolean|boolean
---@param allowInventorySwap System.Boolean|boolean
---@param allowApplyTreatment System.Boolean|boolean
---@param action? System.Nullable*1Barotrauma*CharacterInventory*QuickUseAction
---@param playSound? System.Boolean|boolean
_G['CharacterInventory'].QuickUseItem = function(item, allowEquip, allowInventorySwap, allowApplyTreatment, action, playSound) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['CharacterInventory'].DrawOwn = function(spriteBatch) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@return System.String-arr|System.String|string[]
_G['CharacterInventory'].ParseSlotTypes = function(element) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['CharacterInventory'].InitProjSpecific = function(element) end

---`Method Public Instance`
---@param limbSlot Barotrauma.InvSlotType
---@return System.Int32|integer
_G['CharacterInventory'].FindLimbSlot = function(limbSlot) end

---`Method Public Instance`
---@param limbSlot Barotrauma.InvSlotType
---@return Barotrauma.Item
_G['CharacterInventory'].GetItemInLimbSlot = function(limbSlot) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param limbSlot Barotrauma.InvSlotType
---@return System.Boolean|boolean
_G['CharacterInventory'].IsInLimbSlot = function(item, limbSlot) end

---`Method Public Instance Virtual`
---@overload fun(item:Barotrauma.Item, i:System.Int32|integer, ignoreCondition?:System.Boolean|boolean):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@param i System.Int32|integer
---@param condition System.Nullable*1System*Single|number
---@param quality? System.Nullable*1System*Int32|integer
---@return System.Boolean|boolean
_G['CharacterInventory'].CanBePutInSlot = function(itemPrefab, i, condition, quality) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['CharacterInventory'].CanBeAutoMovedToCorrectSlots = function(item) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
_G['CharacterInventory'].RemoveItem = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param tryEquipFromSameStack System.Boolean|boolean
_G['CharacterInventory'].RemoveItem = function(item, tryEquipFromSameStack) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param allowedSlots? System.Collections.Generic.IEnumerable*1Barotrauma*InvSlotType|(fun():Barotrauma.InvSlotType)
---@param createNetworkEvent? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterInventory'].TryPutItemWithAutoEquipCheck = function(item, user, allowedSlots, createNetworkEvent) end

---`Method Public Instance Virtual`
---@overload fun(item:Barotrauma.Item, user:Barotrauma.Character, allowedSlots?:System.Collections.Generic.IEnumerable*1Barotrauma*InvSlotType|(fun():Barotrauma.InvSlotType), createNetworkEvent?:System.Boolean|boolean, ignoreCondition?:System.Boolean|boolean):System.Boolean|boolean
---@param item Barotrauma.Item
---@param index System.Int32|integer
---@param allowSwapping System.Boolean|boolean
---@param allowCombine System.Boolean|boolean
---@param user Barotrauma.Character
---@param createNetworkEvent? System.Boolean|boolean
---@param ignoreCondition? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterInventory'].TryPutItem = function(item, index, allowSwapping, allowCombine, user, createNetworkEvent, ignoreCondition) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param inWrongSlot System.Boolean|boolean
---@return System.Int32|integer
_G['CharacterInventory'].CheckIfAnySlotAvailable = function(item, inWrongSlot) end

---`Method NonPublic Instance Virtual`
---@param item Barotrauma.Item
---@param i System.Int32|integer
---@param user Barotrauma.Character
---@param removeItem? System.Boolean|boolean
---@param createNetworkEvent? System.Boolean|boolean
_G['CharacterInventory'].PutItem = function(item, i, user, removeItem, createNetworkEvent) end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, character:Barotrauma.Character):Barotrauma.CharacterInventory
---@return Barotrauma.CharacterInventory
_G['CharacterInventory'] = function() end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, character:Barotrauma.Character):Barotrauma.CharacterInventory
---@return Barotrauma.CharacterInventory
_G['CharacterInventory'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, character:Barotrauma.Character):Barotrauma.CharacterInventory
---@return Barotrauma.CharacterInventory
_G['CharacterInventory'] = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, character:Barotrauma.Character):Barotrauma.CharacterInventory
---@return Barotrauma.CharacterInventory
_G['CharacterInventory'].__new = function() end

