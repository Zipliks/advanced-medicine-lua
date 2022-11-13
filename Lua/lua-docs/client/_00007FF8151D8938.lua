---@meta
---@class Barotrauma.AIObjectiveFixLeaks : Barotrauma.AIObjectiveLoop*1Barotrauma*Gap
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field PrioritizedHull Barotrauma.Hull
_G['AIObjectiveFixLeaks'] = {}

---`Method NonPublic Instance Virtual`
---@param gap Barotrauma.Gap
---@return System.Boolean|boolean
_G['AIObjectiveFixLeaks'].Filter = function(gap) end

---`Method Public Static`
---@param leak Barotrauma.Gap
---@return System.Single|number
_G['AIObjectiveFixLeaks'].GetLeakSeverity = function(leak) end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveFixLeaks'].TargetEvaluation = function() end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Gap|(fun():Barotrauma.Gap)
_G['AIObjectiveFixLeaks'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@param gap Barotrauma.Gap
---@return Barotrauma.AIObjective
_G['AIObjectiveFixLeaks'].ObjectiveConstructor = function(gap) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Gap
_G['AIObjectiveFixLeaks'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param gap Barotrauma.Gap
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveFixLeaks'].IsValidTarget = function(gap, character) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param prioritizedHull? Barotrauma.Hull
---@return Barotrauma.AIObjectiveFixLeaks
_G['AIObjectiveFixLeaks'] = function(character, objectiveManager, priorityModifier, prioritizedHull) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param prioritizedHull? Barotrauma.Hull
---@return Barotrauma.AIObjectiveFixLeaks
_G['AIObjectiveFixLeaks'].__new = function(character, objectiveManager, priorityModifier, prioritizedHull) end

