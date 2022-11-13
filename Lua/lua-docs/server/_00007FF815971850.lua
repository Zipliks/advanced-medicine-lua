---@meta
---@class Barotrauma.AIObjectiveEscapeHandcuffs : Barotrauma.AIObjective
---`Field Private Instance`
---@field escapeProgress System.Int32|integer
---`Field Private Instance`
---@field isBeingWatched System.Boolean|boolean
---`Field Private Instance`
---@field shouldSwitchTeams System.Boolean|boolean
---`Field Private Instance`
---@field escapeTimer System.Single|number
---`Field Private Instance`
---@field updateTimer System.Single|number
---`Field Private Static`
---@field EscapeTeamChangeIdentifier System.String|string
---`Field Private Static`
---@field EscapeIntervalTimer System.Single|number
---`Field Private Static`
---@field UpdateIntervalTimer System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field AllowAutomaticItemUnequipping System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanBeCompleted System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsLoop System.Boolean|boolean
_G['AIObjectiveEscapeHandcuffs'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveEscapeHandcuffs'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveEscapeHandcuffs'].GetPriority = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveEscapeHandcuffs'].Update = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveEscapeHandcuffs'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectiveEscapeHandcuffs'].Reset = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param shouldSwitchTeams? System.Boolean|boolean
---@param beginInstantly? System.Boolean|boolean
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveEscapeHandcuffs
_G['AIObjectiveEscapeHandcuffs'] = function(character, objectiveManager, shouldSwitchTeams, beginInstantly, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param shouldSwitchTeams? System.Boolean|boolean
---@param beginInstantly? System.Boolean|boolean
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveEscapeHandcuffs
_G['AIObjectiveEscapeHandcuffs'].__new = function(character, objectiveManager, shouldSwitchTeams, beginInstantly, priorityModifier) end

