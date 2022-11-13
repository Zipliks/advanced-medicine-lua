---@meta
---@class Barotrauma.AIObjectiveRescue : Barotrauma.AIObjective
---`Field Private Instance`
---@field targetCharacter Barotrauma.Character
---`Field Private Instance`
---@field goToObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field replaceOxygenObjective Barotrauma.AIObjectiveContainItem
---`Field Private Instance`
---@field getItemObjective Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field treatmentTimer System.Single|number
---`Field Private Instance`
---@field safeHull Barotrauma.Hull
---`Field Private Instance`
---@field findHullTimer System.Single|number
---`Field Private Instance`
---@field ignoreOxygen System.Boolean|boolean
---`Field Private Instance`
---@field findHullInterval System.Single|number
---`Field Private Instance`
---@field performedCpr System.Boolean|boolean
---`Field Private Instance`
---@field suitableItemIdentifiers System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field itemNameList System.Collections.Generic.List*1Barotrauma*LocalizedString|Barotrauma.LocalizedString[]
---`Field Private Instance`
---@field currentTreatmentSuitabilities System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Private Static`
---@field TreatmentDelay System.Single|number
---`Field Private Static`
---@field CloseEnoughToTreat System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
_G['AIObjectiveRescue'] = {}

---`Method NonPublic Instance Virtual`
_G['AIObjectiveRescue'].OnAbandon = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveRescue'].OnCompleted = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveRescue'].Act = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveRescue'].GiveTreatment = function(deltaTime) end

---`Method Private Instance`
---@param affliction Barotrauma.Affliction
---@param item Barotrauma.Item
_G['AIObjectiveRescue'].ApplyTreatment = function(affliction, item) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveRescue'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveRescue'].GetPriority = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@param excludeBuffs? System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
_G['AIObjectiveRescue'].GetSortedAfflictions = function(character, excludeBuffs) end

---`Method Public Static`
---@param character Barotrauma.Character
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
_G['AIObjectiveRescue'].GetTreatableAfflictions = function(character) end

---`Method Public Instance Virtual`
_G['AIObjectiveRescue'].Reset = function() end

---`Method Public Instance Virtual`
_G['AIObjectiveRescue'].OnDeselected = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param targetCharacter Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveRescue
_G['AIObjectiveRescue'] = function(character, targetCharacter, objectiveManager, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param targetCharacter Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveRescue
_G['AIObjectiveRescue'].__new = function(character, targetCharacter, objectiveManager, priorityModifier) end

