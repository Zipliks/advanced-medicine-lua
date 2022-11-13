---@meta
---@class Barotrauma.AIObjectiveReturn : Barotrauma.AIObjective
---`Field Private Instance`
---@field moveInsideObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field moveOutsideObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field usingEscapeBehavior System.Boolean|boolean
---`Field Private Instance`
---@field isSteeringThroughGap System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---@field ReturnTarget Barotrauma.Submarine
_G['AIObjectiveReturn'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveReturn'].GetPriority = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveReturn'].Act = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveReturn'].CheckObjectiveSpecific = function() end

---`Method Public Instance Virtual`
_G['AIObjectiveReturn'].Reset = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveReturn'].OnAbandon = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param orderGiver Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveReturn
_G['AIObjectiveReturn'] = function(character, orderGiver, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param orderGiver Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveReturn
_G['AIObjectiveReturn'].__new = function(character, orderGiver, objectiveManager, priorityModifier) end

