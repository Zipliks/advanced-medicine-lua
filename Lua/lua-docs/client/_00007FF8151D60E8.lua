---@meta
---@class Barotrauma.AIObjectiveExtinguishFires : Barotrauma.AIObjectiveLoop*1Barotrauma*Hull
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
_G['AIObjectiveExtinguishFires'] = {}

---`Method NonPublic Instance Virtual`
---@param hull Barotrauma.Hull
---@return System.Boolean|boolean
_G['AIObjectiveExtinguishFires'].Filter = function(hull) end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveExtinguishFires'].TargetEvaluation = function() end

---`Method Public Static`
---@param hull Barotrauma.Hull
---@return System.Single|number
_G['AIObjectiveExtinguishFires'].GetFireSeverity = function(hull) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Hull|(fun():Barotrauma.Hull)
_G['AIObjectiveExtinguishFires'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Hull
---@return Barotrauma.AIObjective
_G['AIObjectiveExtinguishFires'].ObjectiveConstructor = function(target) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Hull
_G['AIObjectiveExtinguishFires'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param hull Barotrauma.Hull
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveExtinguishFires'].IsValidTarget = function(hull, character) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveExtinguishFires
_G['AIObjectiveExtinguishFires'] = function(character, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveExtinguishFires
_G['AIObjectiveExtinguishFires'].__new = function(character, objectiveManager, priorityModifier) end

