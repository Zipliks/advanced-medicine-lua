---@meta
---@class Barotrauma.AIObjectiveOperateItem : Barotrauma.AIObjective
---`Field Private Instance`
---@field component Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field controller Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field operateTarget Barotrauma.Entity
---`Field Private Instance`
---@field requireEquip System.Boolean|boolean
---`Field Private Instance`
---@field useController System.Boolean|boolean
---`Field Private Instance`
---@field goToObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field getItemObjective Barotrauma.AIObjectiveGetItem
---`Field Public Instance`
---@field completionCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Field Private Instance`
---@field isDoneOperating System.Boolean|boolean
---`Field Public Instance`
---@field OverridePriority System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field DebugTag System.String|string
---`Getter Public Instance Virtual`
---@field AllowAutomaticItemUnequipping System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowMultipleInstances System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field PrioritizeIfSubObjectivesActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Override System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanBeCompleted System.Boolean|boolean
---`Getter Public Instance`
---@field OperateTarget Barotrauma.Entity
---`Getter Public Instance`
---@field Component Barotrauma.Items.Components.ItemComponent
_G['AIObjectiveOperateItem'] = {}

---`Method Public Instance Virtual`
---@param otherObjective Barotrauma.AIObjectiveOperateItem.T
---@return System.Boolean|boolean
_G['AIObjectiveOperateItem'].IsDuplicate = function(otherObjective) end

---`Method Public Instance`
---@return Barotrauma.Items.Components.ItemComponent
_G['AIObjectiveOperateItem'].GetTarget = function() end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveOperateItem'].GetPriority = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveOperateItem'].Act = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveOperateItem'].CheckObjectiveSpecific = function() end

---`Method Public Instance Virtual`
_G['AIObjectiveOperateItem'].Reset = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Items.Components.ItemComponent
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param requireEquip System.Boolean|boolean
---@param operateTarget? Barotrauma.Entity
---@param useController? System.Boolean|boolean
---@param controller? Barotrauma.Items.Components.ItemComponent
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveOperateItem
_G['AIObjectiveOperateItem'] = function(item, character, objectiveManager, option, requireEquip, operateTarget, useController, controller, priorityModifier) end

---`Constructor Public Instance`
---@param item Barotrauma.Items.Components.ItemComponent
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param option Barotrauma.Identifier
---@param requireEquip System.Boolean|boolean
---@param operateTarget? Barotrauma.Entity
---@param useController? System.Boolean|boolean
---@param controller? Barotrauma.Items.Components.ItemComponent
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveOperateItem
_G['AIObjectiveOperateItem'].__new = function(item, character, objectiveManager, option, requireEquip, operateTarget, useController, controller, priorityModifier) end

