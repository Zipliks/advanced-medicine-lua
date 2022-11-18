---@meta
---@class Barotrauma.AIObjectiveGetItem : Barotrauma.AIObjective
---`Field Public Instance`
---@field ignoredItems System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Field Public Instance`
---@field GetItemPriority System.Func*1Barotrauma*Item*1System*Single|(fun(arg:Barotrauma.Item):System.Single|number)
---`Field Public Instance`
---@field ItemFilter System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---`Field Public Instance`
---@field IdentifiersOrTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field spawnItemIfNotFound System.Boolean|boolean
---`Field Private Instance`
---@field targetItem Barotrauma.Item
---`Field Private Instance`
---@field originalTarget Barotrauma.Item
---`Field Private Instance`
---@field moveToTarget Barotrauma.ISpatialEntity
---`Field Private Instance`
---@field isDoneSeeking System.Boolean|boolean
---`Field Private Instance`
---@field currSearchIndex System.Int32|integer
---`Field Public Instance`
---@field ignoredContainerIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field ignoredIdentifiersOrTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field goToObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field currItemPriority System.Single|number
---`Field Private Instance`
---@field checkInventory System.Boolean|boolean
---`Field Private Instance`
---@field _itemCount System.Int32|integer
---`Field Public Static`
---@field DefaultReach System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field AbandonWhenCannotCompleteSubjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowMultipleInstances System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetCondition System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowDangerousPressure System.Boolean|boolean
---`Getter Public Instance`
---@field TargetItem Barotrauma.Item
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowToFindDivingGear System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MustBeSpecificItem System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowStealing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TakeWholeStack System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowVariants System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Equip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Wear System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireLoaded System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EvaluateCombatPriority System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CheckPathForEachItem System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpeakIfFails System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CannotFindDialogueIdentifierOverride System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CannotFindDialogueCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EquipSlotType System.Nullable*1Barotrauma*InvSlotType
_G['AIObjectiveGetItem'] = {}

---`Method Public Static`
---@param identifiersOrTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['AIObjectiveGetItem'].ParseGearTags = function(identifiersOrTags) end

---`Method Public Static`
---@param identifiersOrTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['AIObjectiveGetItem'].ParseIgnoredTags = function(identifiersOrTags) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['AIObjectiveGetItem'].CheckInventory = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['AIObjectiveGetItem'].CountItems = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveGetItem'].Act = function(deltaTime) end

---`Method Private Instance`
_G['AIObjectiveGetItem'].FindTargetItem = function() end

---`Method Private Instance`
---@return Barotrauma.ItemPrefab
_G['AIObjectiveGetItem'].FindItemToSpawn = function() end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveGetItem'].CheckObjectiveSpecific = function() end

---`Method Private Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['AIObjectiveGetItem'].CheckItem = function(item) end

---`Method Public Instance Virtual`
_G['AIObjectiveGetItem'].Reset = function() end

---`Method Private Instance`
_G['AIObjectiveGetItem'].ResetInternal = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveGetItem'].OnAbandon = function() end

---`Method Private Instance`
_G['AIObjectiveGetItem'].SpeakCannotFind = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, targetItem:Barotrauma.Item, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifierOrTag:Barotrauma.Identifier, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifiersOrTags:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@return Barotrauma.AIObjectiveGetItem
_G['AIObjectiveGetItem'] = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, targetItem:Barotrauma.Item, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifierOrTag:Barotrauma.Identifier, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifiersOrTags:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@return Barotrauma.AIObjectiveGetItem
_G['AIObjectiveGetItem'].__new = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, targetItem:Barotrauma.Item, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifierOrTag:Barotrauma.Identifier, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifiersOrTags:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@return Barotrauma.AIObjectiveGetItem
_G['AIObjectiveGetItem'] = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, targetItem:Barotrauma.Item, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifierOrTag:Barotrauma.Identifier, objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@overload fun(character:Barotrauma.Character, identifiersOrTags:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), objectiveManager:Barotrauma.AIObjectiveManager, equip?:System.Boolean|boolean, checkInventory?:System.Boolean|boolean, priorityModifier?:System.Single|number, spawnItemIfNotFound?:System.Boolean|boolean):Barotrauma.AIObjectiveGetItem
---@return Barotrauma.AIObjectiveGetItem
_G['AIObjectiveGetItem'].__new = function() end

