---@meta
---@class Barotrauma.AIObjectiveFixLeak : Barotrauma.AIObjective
---`Field Private Instance`
---@field getWeldingTool Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field refuelObjective Barotrauma.AIObjectiveContainItem
---`Field Private Instance`
---@field gotoObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field operateObjective Barotrauma.AIObjectiveOperateItem
---`Field Public Instance`
---@field isPriority System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Leak Barotrauma.Gap
_G['AIObjectiveFixLeak'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveFixLeak'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveFixLeak'].GetPriority = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveFixLeak'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectiveFixLeak'].Reset = function() end

---`Method Public Static`
---@param repairTool Barotrauma.Items.Components.RepairTool
---@param character Barotrauma.Character
---@return System.Single|number
_G['AIObjectiveFixLeak'].CalculateReach = function(repairTool, character) end

---`Constructor Public Instance`
---@param leak Barotrauma.Gap
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param isPriority? System.Boolean|boolean
---@return Barotrauma.AIObjectiveFixLeak
_G['AIObjectiveFixLeak'] = function(leak, character, objectiveManager, priorityModifier, isPriority) end

---`Constructor Public Instance`
---@param leak Barotrauma.Gap
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param isPriority? System.Boolean|boolean
---@return Barotrauma.AIObjectiveFixLeak
_G['AIObjectiveFixLeak'].__new = function(leak, character, objectiveManager, priorityModifier, isPriority) end

