---@meta
---@class Barotrauma.AIObjectiveFightIntruders : Barotrauma.AIObjectiveLoop*1Barotrauma*Character
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter NonPublic Instance Virtual`
---@field IgnoreListClearInterval System.Single|number
---`Getter Public Instance Virtual`
---@field IgnoreUnsafeHulls System.Boolean|boolean
---`Getter NonPublic Instance Virtual`
---@field TargetUpdateTimeMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetCharactersInOtherSubs System.Boolean|boolean
_G['AIObjectiveFightIntruders'] = {}

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveFightIntruders'].Filter = function(target) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['AIObjectiveFightIntruders'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveFightIntruders'].TargetEvaluation = function() end

---`Method NonPublic Instance Virtual`
---@param target Barotrauma.Character
---@return Barotrauma.AIObjective
_G['AIObjectiveFightIntruders'].ObjectiveConstructor = function(target) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Character
_G['AIObjectiveFightIntruders'].OnObjectiveCompleted = function(objective, target) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@param targetCharactersInOtherSubs System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIObjectiveFightIntruders'].IsValidTarget = function(target, character, targetCharactersInOtherSubs) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['AIObjectiveFightIntruders'].ShouldArrest = function(target, character) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveFightIntruders
_G['AIObjectiveFightIntruders'] = function(character, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveFightIntruders
_G['AIObjectiveFightIntruders'].__new = function(character, objectiveManager, priorityModifier) end

