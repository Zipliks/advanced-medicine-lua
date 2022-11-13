---@meta
---@class Barotrauma.Items.Components.ItemContainer : Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field OnContainedItemsChanged Barotrauma.NamedEvent*1Barotrauma*Items*Components*ItemContainer
---`Field Private Instance`
---@field alwaysContainedItemsSpawned System.Boolean|boolean
---`Field Public Instance`
---@field Inventory Barotrauma.ItemInventory
---`Field Private Instance`
---@field activeContainedItems System.Collections.Generic.List*1Barotrauma*Items*Components*ItemContainer*ActiveContainedItem|Barotrauma.Items.Components.ItemContainer.ActiveContainedItem[]
---`Field Private Instance`
---@field itemIds System.Collections.Generic.List|System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[][]
---`Field Private Instance`
---@field capacity System.Int32|integer
---`Field Private Instance`
---@field maxStackSize System.Int32|integer
---`Field Private Instance`
---@field hideItems System.Boolean|boolean
---`Field Private Instance`
---@field containableRestrictions System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Field Private Instance`
---@field itemRotation System.Single|number
---`Field Private Instance`
---@field slotRestrictions System.Collections.Immutable.ImmutableArray*1Barotrauma*Items*Components*ItemContainer*SlotRestrictions|Barotrauma.Items.Components.ItemContainer.SlotRestrictions[]
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field prevContainedItemPositions Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field autoInjectCooldown System.Single|number
---`Field Private Instance`
---@field containableItemIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Static`
---@field AutoInjectInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Capacity System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxStackSize System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemInterval Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemsPerRow System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DrawInventory System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowDragAndDrop System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowSwappingContainedItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoInteractWithContained System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowAccess System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AccessOnlyWhenBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SlotsPerRow System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ContainableRestrictions System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoFill System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemRotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnWithId System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnWithIdWhenBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoInject System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoInjectThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RemoveContainedItemsOnDeconstruct System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Locked System.Boolean|boolean
---`Getter Public Instance`
---@field ContainableItemIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---@field ContainableItems System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]
_G['Components']['ItemContainer'] = {}

---`Method Public Instance`
---@overload fun(identifiersOrTags:System.String-arr|System.String|string[], isRestrictionsDefined:System.Boolean-ref):System.Boolean|boolean
---@param item Barotrauma.Item
---@param isRestrictionsDefined System.Boolean-ref
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].ShouldBeContained = function(item, isRestrictionsDefined) end

---`Method Public Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['ItemContainer'].ReloadContainableRestrictions = function(element) end

---`Method Public Instance`
---@param slotIndex System.Int32|integer
---@return System.Int32|integer
_G['Components']['ItemContainer'].GetMaxStackSize = function(slotIndex) end

---`Method Public Instance`
---@param containedItem Barotrauma.Item
_G['Components']['ItemContainer'].OnItemContained = function(containedItem) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['ItemContainer'].Move = function(amount, ignoreContacts) end

---`Method Public Instance`
---@param containedItem Barotrauma.Item
_G['Components']['ItemContainer'].OnItemRemoved = function(containedItem) end

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item):System.Boolean|boolean
---@overload fun(item:Barotrauma.Item, index:System.Int32|integer):System.Boolean|boolean
---@overload fun(itemPrefab:Barotrauma.ItemPrefab):System.Boolean|boolean
---@param itemPrefab Barotrauma.ItemPrefab
---@param index System.Int32|integer
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].CanBeContained = function(itemPrefab, index) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].ContainsItemsWithSameIdentifier = function(item) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ItemContainer'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ItemContainer'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param addMessage System.Boolean|boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].HasRequiredItems = function(character, addMessage, msg) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].Select = function(character) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemContainer'].Combine = function(item, user) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['ItemContainer'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['ItemContainer'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ItemContainer'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance`
_G['Components']['ItemContainer'].SetContainedItemPositions = function() end

---`Method Public Instance Virtual`
_G['Components']['ItemContainer'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['ItemContainer'].OnMapLoaded = function() end

---`Method Private Instance`
_G['Components']['ItemContainer'].SpawnAlwaysContainedItems = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ItemContainer'].ShallowRemoveComponentSpecific = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ItemContainer'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['ItemContainer'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['ItemContainer'].Save = function(parentElement) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemContainer
_G['Components']['ItemContainer'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemContainer
_G['Components']['ItemContainer'].__new = function(item, element) end

