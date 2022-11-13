---@meta
---@class Barotrauma.AIObjectiveFindSafety : Barotrauma.AIObjective
---`Field Private Instance`
---@field currenthullSafety System.Single|number
---`Field Private Instance`
---@field searchHullTimer System.Single|number
---`Field Private Instance`
---@field goToObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field divingGearObjective Barotrauma.AIObjectiveFindDivingGear
---`Field Private Instance`
---@field resetPriority System.Boolean|boolean
---`Field Private Instance`
---@field currentSafeHull Barotrauma.Hull
---`Field Private Instance`
---@field previousSafeHull Barotrauma.Hull
---`Field Private Instance`
---@field cannotFindSafeHull System.Boolean|boolean
---`Field Private Instance`
---@field cannotFindDivingGear System.Boolean|boolean
---`Field Private Instance`
---@field findDivingGearAttempts System.Int32|integer
---`Field Private Instance`
---@field retryCounter System.Int32|integer
---`Field Private Instance`
---@field retryResetTime System.Single|number
---`Field Private Instance`
---@field retryTimer System.Single|number
---`Field Private Instance`
---@field hulls System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Private Instance`
---@field hullSearchIndex System.Int32|integer
---`Field Private Instance`
---@field bestHullValue System.Single|number
---`Field Private Instance`
---@field bestHullIsAirlock System.Boolean|boolean
---`Field Private Instance`
---@field potentialBestHull Barotrauma.Hull
---`Field Private Static`
---@field priorityIncrease System.Single|number
---`Field Private Static`
---@field priorityDecrease System.Single|number
---`Field Private Static`
---@field SearchHullInterval System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IgnoreUnsafeHulls System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field ConcurrentObjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AbandonWhenCannotCompleteSubjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsLoop System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanBeCompleted System.Boolean|boolean
_G['AIObjectiveFindSafety'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveFindSafety'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveFindSafety'].GetPriority = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveFindSafety'].Update = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveFindSafety'].Act = function(deltaTime) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveFindSafety'].UpdateSimpleEscape = function(deltaTime) end

---`Method Public Instance`
---@param bestHull Barotrauma.Hull-ref
---@param ignoredHulls? System.Collections.Generic.IEnumerable*1Barotrauma*Hull|(fun():Barotrauma.Hull)
---@param allowChangingSubmarine? System.Boolean|boolean
---@return Barotrauma.AIObjectiveFindSafety.HullSearchStatus
_G['AIObjectiveFindSafety'].FindBestHull = function(bestHull, ignoredHulls, allowChangingSubmarine) end

---`Method Public Instance Virtual`
_G['AIObjectiveFindSafety'].Reset = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveFindSafety
_G['AIObjectiveFindSafety'] = function(character, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveFindSafety
_G['AIObjectiveFindSafety'].__new = function(character, objectiveManager, priorityModifier) end

