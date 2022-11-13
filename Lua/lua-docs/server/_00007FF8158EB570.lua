---@meta
---@class Barotrauma.AIObjectiveCleanupItems : Barotrauma.AIObjectiveLoop*1Barotrauma*Item
---`Field Public Instance`
---@field prioritizedItems System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowAutomaticItemUnequipping System.Boolean|boolean
---`Getter NonPublic Instance Virtual`
---@field ForceOrderPriority System.Boolean|boolean
_G['AIObjectiveCleanupItems'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveCleanupItems'].TargetEvaluation = function() end

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Item
---@return System.Boolean|boolean
_G['AIObjectiveCleanupItems'].Filter = function(target) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
_G['AIObjectiveCleanupItems'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@param item Barotrauma.Item
---@return Barotrauma.AIObjective
_G['AIObjectiveCleanupItems'].ObjectiveConstructor = function(item) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Item
_G['AIObjectiveCleanupItems'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveCleanupItems'].IsItemInsideValidSubmarine = function(item, character) end

---`Method Public Static`
---@param container Barotrauma.Item
---@param character Barotrauma.Character
---@param allowUnloading? System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIObjectiveCleanupItems'].IsValidContainer = function(container, character, allowUnloading) end

---`Method Public Static`
---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@param checkInventory System.Boolean|boolean
---@param allowUnloading? System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIObjectiveCleanupItems'].IsValidTarget = function(item, character, checkInventory, allowUnloading) end

---`Method Public Instance Virtual`
_G['AIObjectiveCleanupItems'].OnDeselected = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, prioritizedItem?:Barotrauma.Item, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveCleanupItems
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param prioritizedItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveCleanupItems
_G['AIObjectiveCleanupItems'] = function(character, objectiveManager, prioritizedItems, priorityModifier) end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, prioritizedItem?:Barotrauma.Item, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveCleanupItems
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param prioritizedItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveCleanupItems
_G['AIObjectiveCleanupItems'].__new = function(character, objectiveManager, prioritizedItems, priorityModifier) end

