---@meta
---@class Barotrauma.AIObjectiveGoTo : Barotrauma.AIObjective
---`Field Private Instance`
---@field findDivingGear Barotrauma.AIObjectiveFindDivingGear
---`Field Private Instance`
---@field repeat System.Boolean|boolean
---`Field Private Instance`
---@field waitUntilPathUnreachable System.Single|number
---`Field Private Instance`
---@field getDivingGearIfNeeded System.Boolean|boolean
---`Field Public Instance`
---@field requiredCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Field Public Instance`
---@field endNodeFilter System.Func*1Barotrauma*PathNode*1System*Boolean|(fun(arg:Barotrauma.PathNode):System.Boolean|boolean)
---`Field Public Instance`
---@field PriorityGetter System.Func*1System*Single|(fun():System.Single|number)
---`Field Public Instance`
---@field IsFollowOrderObjective System.Boolean|boolean
---`Field Public Instance`
---@field Mimic System.Boolean|boolean
---`Field Public Instance`
---@field ExtraDistanceWhileSwimming System.Single|number
---`Field Public Instance`
---@field ExtraDistanceOutsideSub System.Single|number
---`Field Private Instance`
---@field _closeEnoughMultiplier System.Single|number
---`Field Private Instance`
---@field _closeEnough System.Single|number
---`Field Private Instance`
---@field minDistance System.Single|number
---`Field Private Instance`
---@field seekGapsInterval System.Single|number
---`Field Private Instance`
---@field seekGapsTimer System.Single|number
---`Field Public Instance`
---@field OverridePriority System.Nullable*1System*Single|number
---`Field Private Instance`
---@field avoidLookAheadDistance System.Single|number
---`Field Private Instance`
---@field pathWaitingTime System.Single|number
---`Field Private Instance`
---@field useScooter System.Boolean|boolean
---`Field Private Instance`
---@field checkScooterTimer System.Single|number
---`Field Private Instance`
---@field checkScooterTime System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpeakIfFails System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DebugLogWhenFails System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UsePathingOutside System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CloseEnoughMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CloseEnough System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreIfTargetDead System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowGoingOutside System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AlwaysUseEuclideanDistance System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseDistanceRelativeToAimSourcePos System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AbandonWhenCannotCompleteSubjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DialogueIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetName Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Target Barotrauma.ISpatialEntity
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpeakCannotReachCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetGap Barotrauma.Gap
---`Getter Public Instance`
---@field IsCloseEnough System.Boolean|boolean
_G['AIObjectiveGoTo'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveGoTo'].GetPriority = function() end

---`Method Private Instance`
_G['AIObjectiveGoTo'].SpeakCannotReach = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveGoTo'].ForceAct = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveGoTo'].Act = function(deltaTime) end

---`Method Public Instance`
---@return Barotrauma.Hull
_G['AIObjectiveGoTo'].GetTargetHull = function() end

---`Method Public Static`
---@param target Barotrauma.ISpatialEntity
---@return Barotrauma.Hull
_G['AIObjectiveGoTo'].GetTargetHull = function(target) end

---`Method Private Instance`
---@param maxDistance System.Single|number
_G['AIObjectiveGoTo'].SeekGaps = function(maxDistance) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveGoTo'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveGoTo'].OnAbandon = function() end

---`Method Private Instance`
_G['AIObjectiveGoTo'].StopMovement = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveGoTo'].OnCompleted = function() end

---`Method Public Instance Virtual`
_G['AIObjectiveGoTo'].Reset = function() end

---`Constructor Public Instance`
---@param target Barotrauma.ISpatialEntity
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param luaKey__repeat? System.Boolean|boolean
---@param getDivingGearIfNeeded? System.Boolean|boolean
---@param priorityModifier? System.Single|number
---@param closeEnough? System.Single|number
---@return Barotrauma.AIObjectiveGoTo
_G['AIObjectiveGoTo'] = function(target, character, objectiveManager, luaKey__repeat, getDivingGearIfNeeded, priorityModifier, closeEnough) end

---`Constructor Public Instance`
---@param target Barotrauma.ISpatialEntity
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param luaKey__repeat? System.Boolean|boolean
---@param getDivingGearIfNeeded? System.Boolean|boolean
---@param priorityModifier? System.Single|number
---@param closeEnough? System.Single|number
---@return Barotrauma.AIObjectiveGoTo
_G['AIObjectiveGoTo'].__new = function(target, character, objectiveManager, luaKey__repeat, getDivingGearIfNeeded, priorityModifier, closeEnough) end

