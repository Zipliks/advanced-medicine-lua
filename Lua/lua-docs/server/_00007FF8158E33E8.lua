---@meta
---@class Barotrauma.AIController : System.Object
---`Field Public Instance`
---@field Enabled System.Boolean|boolean
---`Field Public Instance`
---@field Character Barotrauma.Character
---`Field NonPublic Instance`
---@field _lastAiTarget Barotrauma.AITarget
---`Field NonPublic Instance`
---@field _previousAiTarget Barotrauma.AITarget
---`Field NonPublic Instance`
---@field _selectedAiTarget Barotrauma.AITarget
---`Field NonPublic Instance`
---@field steeringManager Barotrauma.SteeringManager
---`Field Private Instance`
---@field visibleHulls System.Collections.Generic.IEnumerable*1Barotrauma*Hull|(fun():Barotrauma.Hull)
---`Field Private Instance`
---@field hullVisibilityTimer System.Single|number
---`Field NonPublic Instance`
---@field colliderWidth System.Single|number
---`Field NonPublic Instance`
---@field minGapSize System.Single|number
---`Field NonPublic Instance`
---@field colliderLength System.Single|number
---`Field NonPublic Instance`
---@field avoidLookAheadDistance System.Single|number
---`Field Private Instance`
---@field unequippedItems System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Field Private Instance`
---@field escapeTargetSeekInterval System.Single|number
---`Field Private Instance`
---@field escapeTimer System.Single|number
---`Field NonPublic Instance`
---@field allGapsSearched System.Boolean|boolean
---`Field NonPublic Instance`
---@field unreachableGaps System.Collections.Generic.HashSet*1Barotrauma*Gap|Barotrauma.Gap[]
---`Field Private Static`
---@field hullVisibilityInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field SelectedAiTarget Barotrauma.AITarget
---`Getter Public Instance`
---@field SteeringManager Barotrauma.SteeringManager
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Steering Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Velocity Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field CanEnterSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanFlip System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IsMentallyUnstable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VisibleHulls System.Collections.Generic.IEnumerable*1Barotrauma*Hull|(fun():Barotrauma.Hull)
---`Getter Public Instance`
---@field IsCurrentPathNullOrUnreachable System.Boolean|boolean
---`Getter Public Instance`
---@field IsCurrentPathUnreachable System.Boolean|boolean
---`Getter Public Instance`
---@field IsCurrentPathFinished System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field IsSteeringThroughGap System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EscapeTarget Barotrauma.Gap
_G['AIController'] = {}

---`Method Public Instance`
---@param requireNonDirty? System.Boolean|boolean
---@param requireUnfinished? System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIController'].HasValidPath = function(requireNonDirty, requireUnfinished) end

---`Method Public Instance Virtual`
---@param healer Barotrauma.Character
---@param healAmount System.Single|number
_G['AIController'].OnHealed = function(healer, healAmount) end

---`Method Public Instance Virtual`
---@param attacker Barotrauma.Character
---@param attackResult Barotrauma.AttackResult
_G['AIController'].OnAttacked = function(attacker, attackResult) end

---`Method Public Instance Virtual`
---@param target Barotrauma.AITarget
_G['AIController'].SelectTarget = function(target) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['AIController'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
_G['AIController'].Reset = function() end

---`Method NonPublic Instance`
_G['AIController'].ResetAITarget = function() end

---`Method Public Instance`
---@param target Barotrauma.ISpatialEntity
_G['AIController'].FaceTarget = function(target) end

---`Method Public Instance Virtual`
---@overload fun(wall:Barotrauma.Structure, section:Barotrauma.WallSection, targetWorldPos:Microsoft.Xna.Framework.Vector2, deltaTime:System.Single|number):System.Boolean|boolean
---@param gap Barotrauma.Gap
---@param targetWorldPos Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param maxDistance? System.Single|number
---@return System.Boolean|boolean
_G['AIController'].SteerThroughGap = function(gap, targetWorldPos, deltaTime, maxDistance) end

---`Method Public Instance`
---@param wall Barotrauma.Structure
---@param sectionIndex System.Int32|integer
---@param requiredHoleCount System.Int32|integer
---@return System.Boolean|boolean
_G['AIController'].CanPassThroughHole = function(wall, sectionIndex, requiredHoleCount) end

---`Method NonPublic Instance`
---@param wall Barotrauma.Structure
---@return System.Boolean|boolean
_G['AIController'].IsWallDisabled = function(wall) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param targetInventory Barotrauma.CharacterInventory
---@param equip System.Boolean|boolean
---@param wear? System.Boolean|boolean
---@param dropOtherIfCannotMove? System.Boolean|boolean
---@param allowSwapping? System.Boolean|boolean
---@param storeUnequipped? System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIController'].TakeItem = function(item, targetInventory, equip, wear, dropOtherIfCannotMove, allowSwapping, storeUnequipped) end

---`Method Public Instance`
---@param parentItem Barotrauma.Item
---@param avoidDroppingInSea? System.Boolean|boolean
_G['AIController'].UnequipEmptyItems = function(parentItem, avoidDroppingInSea) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param parentItem Barotrauma.Item
---@param avoidDroppingInSea? System.Boolean|boolean
_G['AIController'].UnequipEmptyItems = function(character, parentItem, avoidDroppingInSea) end

---`Method Public Instance`
---@param parentItem Barotrauma.Item
---@param predicate? System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---@param avoidDroppingInSea? System.Boolean|boolean
---@param unequipMax? System.Nullable*1System*Int32|integer
_G['AIController'].UnequipContainedItems = function(parentItem, predicate, avoidDroppingInSea, unequipMax) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param parentItem Barotrauma.Item
---@param predicate System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---@param avoidDroppingInSea? System.Boolean|boolean
---@param unequipMax? System.Nullable*1System*Int32|integer
_G['AIController'].UnequipContainedItems = function(character, parentItem, predicate, avoidDroppingInSea, unequipMax) end

---`Method Public Instance`
_G['AIController'].ReequipUnequipped = function() end

---`Method Public Instance Abstract Virtual`
---@param deltaTime System.Single|number
---@return System.Boolean|boolean
_G['AIController'].Escape = function(deltaTime) end

---`Method NonPublic Instance`
---@param deltaTime System.Single|number
---@param canAttackDoors System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIController'].UpdateEscape = function(deltaTime, canAttackDoors) end

---`Method Public Instance`
_G['AIController'].ResetEscape = function() end

---`Method NonPublic Instance Virtual`
---@param from Barotrauma.AIState
---@param to Barotrauma.AIState
_G['AIController'].OnStateChanged = function(from, to) end

---`Method NonPublic Instance Virtual`
---@param previousTarget Barotrauma.AITarget
---@param newTarget Barotrauma.AITarget
_G['AIController'].OnTargetChanged = function(previousTarget, newTarget) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
_G['AIController'].ClientRead = function(msg) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
_G['AIController'].ServerWrite = function(msg) end

---`Constructor Public Instance`
---@param c Barotrauma.Character
---@return Barotrauma.AIController
_G['AIController'] = function(c) end

---`Constructor Public Instance`
---@param c Barotrauma.Character
---@return Barotrauma.AIController
_G['AIController'].__new = function(c) end

