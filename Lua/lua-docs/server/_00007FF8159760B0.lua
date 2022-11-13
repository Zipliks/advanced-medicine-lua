---@meta
---@class Barotrauma.AIObjectiveGetItems : Barotrauma.AIObjective
---`Field Private Instance`
---@field gearTags System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field ignoredTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field subObjectivesCreated System.Boolean|boolean
---`Field Public Instance`
---@field achievedItems System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field DebugTag System.String|string
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowMultipleInstances System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowStealing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TakeWholeStack System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowVariants System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Equip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Wear System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CheckInventory System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EvaluateCombatPriority System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CheckPathForEachItem System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireLoaded System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireAllItems System.Boolean|boolean
_G['AIObjectiveGetItems'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveGetItems'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveGetItems'].Act = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIObjectiveGetItems'].Reset = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param identifiersOrTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveGetItems
_G['AIObjectiveGetItems'] = function(character, objectiveManager, identifiersOrTags, priorityModifier) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param identifiersOrTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param priorityModifier? System.Single|number
---@return Barotrauma.AIObjectiveGetItems
_G['AIObjectiveGetItems'].__new = function(character, objectiveManager, identifiersOrTags, priorityModifier) end

