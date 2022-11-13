---@meta
---@class Barotrauma.CharacterInventory : Barotrauma.Inventory
---`Field Private Instance`
---@field character Barotrauma.Character
---`Field NonPublic Instance`
---@field IsEquipped System.Boolean-arr|System.Boolean|boolean[]
---`Field Public Static`
---@field anySlot System.Collections.Generic.List*1Barotrauma*InvSlotType|Barotrauma.InvSlotType[]
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

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@return System.String-arr|System.String|string[]
_G['CharacterInventory'].ParseSlotTypes = function(element) end

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

