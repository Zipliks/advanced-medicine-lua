---@meta
---@class Barotrauma.AIObjectivePumpWater : Barotrauma.AIObjectiveLoop*1Barotrauma*Items*Components*Pump
---`Field Private Instance`
---@field pumpList System.Collections.Generic.List*1Barotrauma*Items*Components*Pump|Barotrauma.Items.Components.Pump[]
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowAutomaticItemUnequipping System.Boolean|boolean
_G['AIObjectivePumpWater'] = {}

---`Method NonPublic Instance Virtual`
_G['AIObjectivePumpWater'].FindTargets = function() end

---`Method NonPublic Instance Virtual`
---@param pump Barotrauma.Items.Components.Pump
---@return System.Boolean|boolean
_G['AIObjectivePumpWater'].Filter = function(pump) end

---`Method NonPublic Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*Pump|(fun():Barotrauma.Items.Components.Pump)
_G['AIObjectivePumpWater'].GetList = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectivePumpWater'].TargetEvaluation = function() end

---`Method Private Instance`
---@param pump Barotrauma.Items.Components.Pump
---@return System.Boolean|boolean
_G['AIObjectivePumpWater'].IsReady = function(pump) end

---`Method NonPublic Instance Virtual`
---@param pump Barotrauma.Items.Components.Pump
---@return Barotrauma.AIObjective
_G['AIObjectivePumpWater'].ObjectiveConstructor = function(pump) end

---`Method NonPublic Instance Virtual`
---@param objective Barotrauma.AIObjective
---@param target Barotrauma.Items.Components.Pump
_G['AIObjectivePumpWater'].OnObjectiveCompleted = function(objective, target) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectivePumpWater
_G['AIObjectivePumpWater'] = function(character, objectiveManager, option, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectivePumpWater
_G['AIObjectivePumpWater'].__new = function(character, objectiveManager, option, priorityModifier) end

