---@meta
---@class Barotrauma.AIObjectiveRescueAll : Barotrauma.AIObjectiveLoop*1Barotrauma*Character
---`Field Private Static`
---@field vitalityThreshold System.Single|number
---`Field Private Static`
---@field vitalityThresholdForOrders System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field InverseTargetEvaluation System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
_G['AIObjectiveRescueAll'] = {}

---`Method Public Static`
---@param manager Barotrauma.AIObjectiveManager
---@param character Barotrauma.Character
---@param target Barotrauma.Character
---@return System.Single|number
_G['AIObjectiveRescueAll'].GetVitalityThreshold = function(manager, character, target) end

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveRescueAll'].Filter = function(target) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['AIObjectiveRescueAll'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveRescueAll'].TargetEvaluation = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@return System.Single|number
_G['AIObjectiveRescueAll'].GetVitalityFactor = function(character) end

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Character
---@return Barotrauma.AIObjective
_G['AIObjectiveRescueAll'].ObjectiveConstructor = function(target) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Character
_G['AIObjectiveRescueAll'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveRescueAll'].IsValidTarget = function(target, character) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveRescueAll
_G['AIObjectiveRescueAll'] = function(character, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveRescueAll
_G['AIObjectiveRescueAll'].__new = function(character, objectiveManager, priorityModifier) end

