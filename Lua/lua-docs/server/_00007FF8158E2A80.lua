---@meta
---@class Barotrauma.Order : System.Object
---`Field Public Instance`
---@field Prefab Barotrauma.OrderPrefab
---`Field Public Instance`
---@field Option Barotrauma.Identifier
---`Field Public Instance`
---@field ManualPriority System.Int32|integer
---`Field Public Instance`
---@field Type Barotrauma.Order.OrderType
---`Field Public Instance`
---@field Objective Barotrauma.AIObjective
---`Field Public Instance`
---@field TargetEntity Barotrauma.Entity
---`Field Public Instance`
---@field TargetItemComponent Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field ConnectedController Barotrauma.Items.Components.Controller
---`Field Public Instance`
---@field OrderGiver Barotrauma.Character
---`Field Public Instance`
---@field TargetPosition Barotrauma.OrderTarget
---`Field Private Instance`
---@field targetSpatialEntity Barotrauma.ISpatialEntity
---`Field Public Instance`
---@field TargetType Barotrauma.Order.OrderTargetType
---`Field Public Instance`
---@field WallSectionIndex System.Nullable*1System*Int32|integer
---`Field Public Instance`
---@field UseController System.Boolean|boolean
---`Getter Public Instance`
---@field IsCurrentOrder System.Boolean|boolean
---`Getter Public Instance`
---@field IsDismissal System.Boolean|boolean
---`Getter Public Instance`
---@field TargetSpatialEntity Barotrauma.ISpatialEntity
---`Getter Public Instance`
---@field TargetHull Barotrauma.Hull
---`Getter Public Instance`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance`
---@field ContextualName Barotrauma.LocalizedString
---`Getter Public Instance`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---@field ItemComponentType System.Type
---`Getter Public Instance`
---@field CanTypeBeSubclass System.Boolean|boolean
---`Getter Public Instance`
---@field ControllerTags System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field TargetItems System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field RequireItems System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field Options System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field HiddenOptions System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field AllOptions System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field SymbolSprite Barotrauma.Sprite
---`Getter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field TargetAllCharacters System.Boolean|boolean
---`Getter Public Instance`
---@field AppropriateJobs System.Collections.Immutable.ImmutableArray
---`Getter Public Instance`
---@field FadeOutTime System.Single|number
---`Getter Public Instance`
---@field MustSetTarget System.Boolean|boolean
---`Getter Public Instance`
---@field AppropriateSkill Barotrauma.Identifier
---`Getter Public Instance`
---@field Category System.Nullable*1Barotrauma*OrderCategory
---`Getter Public Instance`
---@field MustManuallyAssign System.Boolean|boolean
---`Getter Public Instance`
---@field IsIgnoreOrder System.Boolean|boolean
---`Getter Public Instance`
---@field DrawIconWhenContained System.Boolean|boolean
---`Getter Public Instance`
---@field Hidden System.Boolean|boolean
---`Getter Public Instance`
---@field IgnoreAtOutpost System.Boolean|boolean
---`Getter Public Instance`
---@field IsReport System.Boolean|boolean
---`Getter Public Instance`
---@field AutoDismiss System.Boolean|boolean
---`Getter Public Instance`
---@field AssignmentPriority System.Int32|integer
---`Getter Public Instance`
---@field ColoredWhenControllingGiver System.Boolean|boolean
---`Getter Public Instance`
---@field DisplayGiverInTooltip System.Boolean|boolean
_G['Order'] = {}

---`Method Public Instance`
---@param option Barotrauma.Identifier
---@return Barotrauma.Order
_G['Order'].WithOption = function(option) end

---`Method Public Instance`
---@param newPriority System.Int32|integer
---@return Barotrauma.Order
_G['Order'].WithManualPriority = function(newPriority) end

---`Method Public Instance`
---@param orderGiver Barotrauma.Character
---@return Barotrauma.Order
_G['Order'].WithOrderGiver = function(orderGiver) end

---`Method Public Instance`
---@param objective Barotrauma.AIObjective
---@return Barotrauma.Order
_G['Order'].WithObjective = function(objective) end

---`Method Public Instance`
---@param entity Barotrauma.Entity
---@return Barotrauma.Order
_G['Order'].WithTargetEntity = function(entity) end

---`Method Public Instance`
---@param spatialEntity Barotrauma.ISpatialEntity
---@return Barotrauma.Order
_G['Order'].WithTargetSpatialEntity = function(spatialEntity) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param component? Barotrauma.Items.Components.ItemComponent
---@return Barotrauma.Order
_G['Order'].WithItemComponent = function(item, component) end

---`Method Public Instance`
---@param wall Barotrauma.Structure
---@param sectionIndex System.Nullable*1System*Int32|integer
---@return Barotrauma.Order
_G['Order'].WithWallSection = function(wall, sectionIndex) end

---`Method Public Instance`
---@param type Barotrauma.Order.OrderType
---@return Barotrauma.Order
_G['Order'].WithType = function(type) end

---`Method Public Instance`
---@param targetPosition Barotrauma.OrderTarget
---@return Barotrauma.Order
_G['Order'].WithTargetPosition = function(targetPosition) end

---`Method Public Instance`
---@return Barotrauma.Order
_G['Order'].Clone = function() end

---`Method Public Instance`
---@return Barotrauma.Order
_G['Order'].GetDismissal = function() end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Order'].HasAppropriateJob = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Order'].HasPreferredJob = function(character) end

---`Method Public Instance`
---@param targetCharacterName System.String|string
---@param targetRoomName System.String|string
---@param givingOrderToSelf System.Boolean|boolean
---@param orderOption? Barotrauma.Identifier
---@param isNewOrder? System.Boolean|boolean
---@return System.String|string
_G['Order'].GetChatMessage = function(targetCharacterName, targetRoomName, givingOrderToSelf, orderOption, isNewOrder) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.ItemComponent
_G['Order'].GetTargetItemComponent = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param firstMatchingComponent Barotrauma.Items.Components.ItemComponent-ref
---@return System.Boolean|boolean
_G['Order'].TryGetTargetItemComponent = function(item, firstMatchingComponent) end

---`Method Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, mustBelongToPlayerSub:System.Boolean|boolean, requiredTeam?:System.Nullable*1Barotrauma*CharacterTeamType, interactableFor?:Barotrauma.Character):System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@param mustBelongToPlayerSub System.Boolean|boolean
---@param interactableFor? Barotrauma.Character
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['Order'].GetMatchingItems = function(mustBelongToPlayerSub, interactableFor) end

---`Method Public Instance`
---@overload fun(id:System.String|string):Barotrauma.LocalizedString
---@overload fun(id:Barotrauma.Identifier):Barotrauma.LocalizedString
---@param index System.Int32|integer
---@return Barotrauma.LocalizedString
_G['Order'].GetOptionName = function(index) end

---`Method Public Static`
---@param order Barotrauma.Order
---@return Barotrauma.Identifier
_G['Order'].GetDismissOrderOption = function(order) end

---`Method Public Instance`
---@overload fun(orderIdentifier:Barotrauma.Identifier, orderOption:Barotrauma.Identifier):System.Boolean|boolean
---@param order Barotrauma.Order
---@return System.Boolean|boolean
_G['Order'].MatchesOrder = function(order) end

---`Method Public Instance`
---@param dismissOrderOption Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Order'].MatchesDismissedOrder = function(dismissOrderOption) end

---`Method Public Instance`
---@param option? Barotrauma.Identifier
---@return System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['Order'].GetTargetItems = function(option) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Order'].ToString = function() end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.OrderPrefab, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@param other Barotrauma.Order
---@param prefab? Barotrauma.OrderPrefab
---@param option? Barotrauma.Identifier
---@param manualPriority? System.Nullable*1System*Int32|integer
---@param type? System.Nullable*1Barotrauma*Order*OrderType
---@param objective? Barotrauma.AIObjective
---@param targetEntity? Barotrauma.Entity
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param connectedController? Barotrauma.Items.Components.Controller
---@param orderGiver? Barotrauma.Character
---@param targetPosition? Barotrauma.OrderTarget
---@param targetType? System.Nullable*1Barotrauma*Order*OrderTargetType
---@param wallSectionIndex? System.Nullable*1System*Int32|integer
---@param useController? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.Order
_G['Order'] = function(other, prefab, option, manualPriority, type, objective, targetEntity, targetItemComponent, connectedController, orderGiver, targetPosition, targetType, wallSectionIndex, useController) end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.OrderPrefab, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@param other Barotrauma.Order
---@param prefab? Barotrauma.OrderPrefab
---@param option? Barotrauma.Identifier
---@param manualPriority? System.Nullable*1System*Int32|integer
---@param type? System.Nullable*1Barotrauma*Order*OrderType
---@param objective? Barotrauma.AIObjective
---@param targetEntity? Barotrauma.Entity
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param connectedController? Barotrauma.Items.Components.Controller
---@param orderGiver? Barotrauma.Character
---@param targetPosition? Barotrauma.OrderTarget
---@param targetType? System.Nullable*1Barotrauma*Order*OrderTargetType
---@param wallSectionIndex? System.Nullable*1System*Int32|integer
---@param useController? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.Order
_G['Order'].__new = function(other, prefab, option, manualPriority, type, objective, targetEntity, targetItemComponent, connectedController, orderGiver, targetPosition, targetType, wallSectionIndex, useController) end

---`Constructor Private Instance`
---@overload fun(prefab:Barotrauma.OrderPrefab, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@param other Barotrauma.Order
---@param prefab? Barotrauma.OrderPrefab
---@param option? Barotrauma.Identifier
---@param manualPriority? System.Nullable*1System*Int32|integer
---@param type? System.Nullable*1Barotrauma*Order*OrderType
---@param objective? Barotrauma.AIObjective
---@param targetEntity? Barotrauma.Entity
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param connectedController? Barotrauma.Items.Components.Controller
---@param orderGiver? Barotrauma.Character
---@param targetPosition? Barotrauma.OrderTarget
---@param targetType? System.Nullable*1Barotrauma*Order*OrderTargetType
---@param wallSectionIndex? System.Nullable*1System*Int32|integer
---@param useController? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.Order
_G['Order'] = function(other, prefab, option, manualPriority, type, objective, targetEntity, targetItemComponent, connectedController, orderGiver, targetPosition, targetType, wallSectionIndex, useController) end

---`Constructor Private Instance`
---@overload fun(prefab:Barotrauma.OrderPrefab, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, targetEntity:Barotrauma.Entity, targetItem:Barotrauma.Items.Components.ItemComponent, orderGiver?:Barotrauma.Character, isAutonomous?:System.Boolean|boolean):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, target:Barotrauma.OrderTarget, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@overload fun(prefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, manualPriority:System.Int32|integer, orderType:Barotrauma.Order.OrderType, aiObjective:Barotrauma.AIObjective, wall:Barotrauma.Structure, sectionIndex:System.Nullable*1System*Int32|integer, orderGiver?:Barotrauma.Character):Barotrauma.Order
---@param other Barotrauma.Order
---@param prefab? Barotrauma.OrderPrefab
---@param option? Barotrauma.Identifier
---@param manualPriority? System.Nullable*1System*Int32|integer
---@param type? System.Nullable*1Barotrauma*Order*OrderType
---@param objective? Barotrauma.AIObjective
---@param targetEntity? Barotrauma.Entity
---@param targetItemComponent? Barotrauma.Items.Components.ItemComponent
---@param connectedController? Barotrauma.Items.Components.Controller
---@param orderGiver? Barotrauma.Character
---@param targetPosition? Barotrauma.OrderTarget
---@param targetType? System.Nullable*1Barotrauma*Order*OrderTargetType
---@param wallSectionIndex? System.Nullable*1System*Int32|integer
---@param useController? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.Order
_G['Order'].__new = function(other, prefab, option, manualPriority, type, objective, targetEntity, targetItemComponent, connectedController, orderGiver, targetPosition, targetType, wallSectionIndex, useController) end

