---@meta
---@class Barotrauma.AIObjectiveExtinguishFire : Barotrauma.AIObjective
---`Field Private Instance`
---@field targetHull Barotrauma.Hull
---`Field Private Instance`
---@field getExtinguisherObjective Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field gotoObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field useExtinquisherTimer System.Single|number
---`Field Private Instance`
---@field sinTime System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field ConcurrentObjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
_G['AIObjectiveExtinguishFire'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveExtinguishFire'].GetPriority = function() end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveExtinguishFire'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveExtinguishFire'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectiveExtinguishFire'].Reset = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param targetHull Barotrauma.Hull
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveExtinguishFire
_G['AIObjectiveExtinguishFire'] = function(character, targetHull, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param targetHull Barotrauma.Hull
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveExtinguishFire
_G['AIObjectiveExtinguishFire'].__new = function(character, targetHull, objectiveManager, priorityModifier) end

