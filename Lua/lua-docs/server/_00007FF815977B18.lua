---@meta
---@class Barotrauma.AIObjectivePrepare : Barotrauma.AIObjective
---`Field Private Instance`
---@field getSingleItemObjective Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field getAllItemsObjective Barotrauma.AIObjectiveGetItems
---`Field Private Instance`
---@field getMultipleItemsObjective Barotrauma.AIObjectiveGetItems
---`Field Private Instance`
---@field subObjectivesCreated System.Boolean|boolean
---`Field Private Instance`
---@field targetItem Barotrauma.Item
---`Field Private Instance`
---@field requiredItems System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field optionalItems System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field items System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field DebugTag System.String|string
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOnAlsoWhenInactive System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field PrioritizeIfSubObjectivesActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KeepActiveWhenReady System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CheckInventory System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FindAllItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Equip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EvaluateCombatPriority System.Boolean|boolean
_G['AIObjectivePrepare'] = {}

---`Method Private Instance`
---@return Barotrauma.AIObjective
_G['AIObjectivePrepare'].GetSubObjective = function() end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectivePrepare'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectivePrepare'].GetPriority = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectivePrepare'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectivePrepare'].Reset = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, targetItem:Barotrauma.Item, priorityModifier?:System.Single|number):Barotrauma.AIObjectivePrepare
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param optionalItems System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param requiredItems? System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectivePrepare
_G['AIObjectivePrepare'] = function(character, objectiveManager, optionalItems, requiredItems, priorityModifier) end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, targetItem:Barotrauma.Item, priorityModifier?:System.Single|number):Barotrauma.AIObjectivePrepare
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param optionalItems System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param requiredItems? System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectivePrepare
_G['AIObjectivePrepare'].__new = function(character, objectiveManager, optionalItems, requiredItems, priorityModifier) end

