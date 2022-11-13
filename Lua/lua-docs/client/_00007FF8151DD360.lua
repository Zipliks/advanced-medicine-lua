---@meta
---@class Barotrauma.AIObjectiveRepairItems : Barotrauma.AIObjectiveLoop*1Barotrauma*Item
---`Field Public Instance`
---@field RelevantSkill Barotrauma.Identifier
---`Field Public Static`
---@field RequiredSuccessFactor System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PrioritizedItem Barotrauma.Item
---`Getter Public Instance Virtual`
---@field AllowMultipleInstances System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
_G['AIObjectiveRepairItems'] = {}

---`Method Public Instance Virtual`
---@param otherObjective Barotrauma.AIObjectiveRepairItems.T
---@return System.Boolean|boolean
_G['AIObjectiveRepairItems'].IsDuplicate = function(otherObjective) end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveRepairItems'].CreateObjectives = function() end

---`Method NonPublic Instance Virtual`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['AIObjectiveRepairItems'].Filter = function(item) end

---`Method Public Static`
---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@param humanAIController Barotrauma.HumanAIController
---@return System.Boolean|boolean
_G['AIObjectiveRepairItems'].ViableForRepair = function(item, character, humanAIController) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['AIObjectiveRepairItems'].NearlyFullCondition = function(item) end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveRepairItems'].TargetEvaluation = function() end

---`Method Public Static`
---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@param requiredSuccessFactor? System.Single|number
---@return System.Single|number
_G['AIObjectiveRepairItems'].GetTargetPriority = function(item, character, requiredSuccessFactor) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
_G['AIObjectiveRepairItems'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@param item Barotrauma.Item
---@return Barotrauma.AIObjective
_G['AIObjectiveRepairItems'].ObjectiveConstructor = function(item) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Item
_G['AIObjectiveRepairItems'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveRepairItems'].IsValidTarget = function(item, character) end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number, prioritizedItem?:Barotrauma.Item):Barotrauma.AIObjectiveRepairItems
---@return Barotrauma.AIObjectiveRepairItems
_G['AIObjectiveRepairItems'] = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number, prioritizedItem?:Barotrauma.Item):Barotrauma.AIObjectiveRepairItems
---@return Barotrauma.AIObjectiveRepairItems
_G['AIObjectiveRepairItems'].__new = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number, prioritizedItem?:Barotrauma.Item):Barotrauma.AIObjectiveRepairItems
---@return Barotrauma.AIObjectiveRepairItems
_G['AIObjectiveRepairItems'] = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number, prioritizedItem?:Barotrauma.Item):Barotrauma.AIObjectiveRepairItems
---@return Barotrauma.AIObjectiveRepairItems
_G['AIObjectiveRepairItems'].__new = function() end

