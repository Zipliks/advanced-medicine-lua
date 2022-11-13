---@meta
---@class Barotrauma.AIObjectiveChargeBatteries : Barotrauma.AIObjectiveLoop*1Barotrauma*Items*Components*PowerContainer
---`Field Private Instance`
---@field batteryList System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*PowerContainer|(fun():Barotrauma.Items.Components.PowerContainer)
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field AllowAutomaticItemUnequipping System.Boolean|boolean
_G['AIObjectiveChargeBatteries'] = {}

---`Method NonPublic Instance Virtual`
---@param battery Barotrauma.Items.Components.PowerContainer
---@return System.Boolean|boolean
_G['AIObjectiveChargeBatteries'].Filter = function(battery) end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveChargeBatteries'].TargetEvaluation = function() end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*PowerContainer|(fun():Barotrauma.Items.Components.PowerContainer)
_G['AIObjectiveChargeBatteries'].GetList = function() end

---`Method Private Instance`
---@param battery Barotrauma.Items.Components.PowerContainer
---@return System.Boolean|boolean
_G['AIObjectiveChargeBatteries'].IsReady = function(battery) end

---`Method NonPublic Instance Virtual`
---@param battery Barotrauma.Items.Components.PowerContainer
---@return Barotrauma.AIObjective
_G['AIObjectiveChargeBatteries'].ObjectiveConstructor = function(battery) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Items.Components.PowerContainer
_G['AIObjectiveChargeBatteries'].OnObjectiveCompleted = function(objective, target) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param priorityModifier System.Single|number
---@return Barotrauma.AIObjectiveChargeBatteries
_G['AIObjectiveChargeBatteries'] = function(character, objectiveManager, option, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param priorityModifier System.Single|number
---@return Barotrauma.AIObjectiveChargeBatteries
_G['AIObjectiveChargeBatteries'].__new = function(character, objectiveManager, option, priorityModifier) end

