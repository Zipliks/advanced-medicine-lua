---@meta
---@class Barotrauma.OrderPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field Category System.Nullable*1Barotrauma*OrderCategory
---`Field Public Instance`
---@field CategoryIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field ContextualName Barotrauma.LocalizedString
---`Field Public Instance`
---@field SymbolSprite Barotrauma.Sprite
---`Field Public Instance`
---@field ItemComponentType System.Type
---`Field Public Instance`
---@field CanTypeBeSubclass System.Boolean|boolean
---`Field Public Instance`
---@field TargetItems System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field RequireItems System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field OptionTargetItems System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Collections*Immutable*ImmutableArray*2Barotrauma*Identifier|{[Barotrauma.Identifier]:System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]}
---`Field Private Instance`
---@field color System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Public Instance`
---@field TargetAllCharacters System.Boolean|boolean
---`Field Public Instance`
---@field FadeOutTime System.Single|number
---`Field Public Instance`
---@field UseController System.Boolean|boolean
---`Field Public Instance`
---@field ControllerTags System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field AppropriateJobs System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field Options System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field HiddenOptions System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field AllOptions System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field OptionNames Barotrauma.ListDictionary*1Barotrauma*Identifier*1Barotrauma*LocalizedString|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*LocalizedString)
---`Field Public Instance`
---@field OptionSprites System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*Sprite|{[Barotrauma.Identifier]:Barotrauma.Sprite}
---`Field Public Instance`
---@field MustSetTarget System.Boolean|boolean
---`Field Public Instance`
---@field CanBeGeneralized System.Boolean|boolean
---`Field Public Instance`
---@field AppropriateSkill Barotrauma.Identifier
---`Field Public Instance`
---@field Hidden System.Boolean|boolean
---`Field Public Instance`
---@field IgnoreAtOutpost System.Boolean|boolean
---`Field Public Instance`
---@field MustManuallyAssign System.Boolean|boolean
---`Field Public Instance`
---@field AutoDismiss System.Boolean|boolean
---`Field Public Instance`
---@field PreferredJobs System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab|(fun():Barotrauma.OrderPrefab)
---`Field Public Static`
---@field DismissalIdentifier Barotrauma.Identifier
---`Getter Public Static`
---@field Dismissal Barotrauma.OrderPrefab
---`Getter Public Instance`
---@field HasOptionSpecificTargetItems System.Boolean|boolean
---`Getter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field IsReport System.Boolean|boolean
---`Getter Public Instance`
---@field IsDismissal System.Boolean|boolean
---`Getter Public Instance`
---@field HasOptions System.Boolean|boolean
---`Getter Public Instance`
---@field TargetType Barotrauma.OrderPrefab.OrderTargetType
---`Getter Public Instance`
---@field WallSectionIndex System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---@field IsIgnoreOrder System.Boolean|boolean
---`Getter Public Instance`
---@field DrawIconWhenContained System.Boolean|boolean
---`Getter Public Instance`
---@field AssignmentPriority System.Int32|integer
---`Getter Public Instance`
---@field ColoredWhenControllingGiver System.Boolean|boolean
---`Getter Public Instance`
---@field DisplayGiverInTooltip System.Boolean|boolean
_G['OrderPrefab'] = {}

---`Method Private Instance`
---@param character Barotrauma.Character
---@param jobs System.Collections.Generic.IReadOnlyList*1Barotrauma*Identifier|Barotrauma.Identifier[]
---@return System.Boolean|boolean
_G['OrderPrefab'].HasSpecifiedJob = function(character, jobs) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['OrderPrefab'].HasAppropriateJob = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['OrderPrefab'].HasPreferredJob = function(character) end

---`Method Public Instance`
---@param targetCharacterName System.String|string
---@param targetRoomName System.String|string
---@param givingOrderToSelf System.Boolean|boolean
---@param orderOption? Barotrauma.Identifier
---@param isNewOrder? System.Boolean|boolean
---@return System.String|string
_G['OrderPrefab'].GetChatMessage = function(targetCharacterName, targetRoomName, givingOrderToSelf, orderOption, isNewOrder) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.ItemComponent
_G['OrderPrefab'].GetTargetItemComponent = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param firstMatchingComponent Barotrauma.Items.Components.ItemComponent-ref
---@return System.Boolean|boolean
_G['OrderPrefab'].TryGetTargetItemComponent = function(item, firstMatchingComponent) end

---`Method Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, mustBelongToPlayerSub:System.Boolean|boolean, requiredTeam?:System.Nullable*1Barotrauma*CharacterTeamType, interactableFor?:Barotrauma.Character, orderOption?:Barotrauma.Identifier):System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@param mustBelongToPlayerSub System.Boolean|boolean
---@param interactableFor? Barotrauma.Character
---@param orderOption? Barotrauma.Identifier
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['OrderPrefab'].GetMatchingItems = function(mustBelongToPlayerSub, interactableFor, orderOption) end

---`Method Public Instance`
---@overload fun(id:System.String|string):Barotrauma.LocalizedString
---@overload fun(id:Barotrauma.Identifier):Barotrauma.LocalizedString
---@param index System.Int32|integer
---@return Barotrauma.LocalizedString
_G['OrderPrefab'].GetOptionName = function(index) end

---`Method Public Static`
---@param order Barotrauma.Order
---@return Barotrauma.Identifier
_G['OrderPrefab'].GetDismissOrderOption = function(order) end

---`Method Public Instance`
---@param option? Barotrauma.Identifier
---@return System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['OrderPrefab'].GetTargetItems = function(option) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param option? Barotrauma.Identifier
---@return System.Boolean|boolean
_G['OrderPrefab'].TargetItemsMatchItem = function(item, option) end

---`Method Public Static`
---@param targetItems System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['OrderPrefab'].TargetItemsMatchItem = function(targetItems, item) end

---`Method Public Instance Virtual`
_G['OrderPrefab'].Dispose = function() end

---`Method Public Instance`
---@param targetType Barotrauma.OrderPrefab.OrderTargetType
---@param orderGiver? Barotrauma.Character
---@param isAutonomous? System.Boolean|boolean
---@return Barotrauma.Order
_G['OrderPrefab'].CreateInstance = function(targetType, orderGiver, isAutonomous) end

---`Constructor Public Instance`
---@overload fun(orderElement:Barotrauma.ContentXElement, file:Barotrauma.OrdersFile):Barotrauma.OrderPrefab
---@return Barotrauma.OrderPrefab
_G['OrderPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(orderElement:Barotrauma.ContentXElement, file:Barotrauma.OrdersFile):Barotrauma.OrderPrefab
---@return Barotrauma.OrderPrefab
_G['OrderPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(orderElement:Barotrauma.ContentXElement, file:Barotrauma.OrdersFile):Barotrauma.OrderPrefab
---@return Barotrauma.OrderPrefab
_G['OrderPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(orderElement:Barotrauma.ContentXElement, file:Barotrauma.OrdersFile):Barotrauma.OrderPrefab
---@return Barotrauma.OrderPrefab
_G['OrderPrefab'].__new = function() end

