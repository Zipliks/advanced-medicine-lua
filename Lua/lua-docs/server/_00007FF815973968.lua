---@meta
---@class Barotrauma.AIObjectiveFindDivingGear : Barotrauma.AIObjective
---`Field Private Instance`
---@field gearTag Barotrauma.Identifier
---`Field Private Instance`
---@field getDivingGear Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field getOxygen Barotrauma.AIObjectiveContainItem
---`Field Private Instance`
---@field targetItem Barotrauma.Item
---`Field Public Static`
---@field HEAVY_DIVING_GEAR Barotrauma.Identifier
---`Field Public Static`
---@field LIGHT_DIVING_GEAR Barotrauma.Identifier
---`Field Public Static`
---@field DIVING_GEAR_WEARABLE_INDOORS Barotrauma.Identifier
---`Field Public Static`
---@field OXYGEN_SOURCE Barotrauma.Identifier
---`Field Public Static`
---@field MIN_OXYGEN System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field DebugTag System.String|string
---`Getter Public Instance Virtual`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AbandonWhenCannotCompleteSubjectives System.Boolean|boolean
_G['AIObjectiveFindDivingGear'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveFindDivingGear'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveFindDivingGear'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectiveFindDivingGear'].Reset = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@return System.Single|number
_G['AIObjectiveFindDivingGear'].GetMinOxygen = function(character) end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, needsDivingSuit:System.Boolean|boolean, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveFindDivingGear
---@return Barotrauma.AIObjectiveFindDivingGear
_G['AIObjectiveFindDivingGear'] = function() end

---`Constructor Public Instance`
---@overload fun(character:Barotrauma.Character, needsDivingSuit:System.Boolean|boolean, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveFindDivingGear
---@return Barotrauma.AIObjectiveFindDivingGear
_G['AIObjectiveFindDivingGear'].__new = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, needsDivingSuit:System.Boolean|boolean, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveFindDivingGear
---@return Barotrauma.AIObjectiveFindDivingGear
_G['AIObjectiveFindDivingGear'] = function() end

---`Constructor Private Static`
---@overload fun(character:Barotrauma.Character, needsDivingSuit:System.Boolean|boolean, objectiveManager:Barotrauma.AIObjectiveManager, priorityModifier?:System.Single|number):Barotrauma.AIObjectiveFindDivingGear
---@return Barotrauma.AIObjectiveFindDivingGear
_G['AIObjectiveFindDivingGear'].__new = function() end

