---@meta
---@class Barotrauma.EnemyAIController : Barotrauma.AIController
---`Field Private Instance`
---@field _state Barotrauma.AIState
---`Field Public Instance`
---@field TargetOutposts System.Boolean|boolean
---`Field Private Instance`
---@field updateTargetsInterval System.Single|number
---`Field Private Instance`
---@field updateMemoriesInverval System.Single|number
---`Field Private Instance`
---@field attackLimbSelectionInterval System.Single|number
---`Field Private Instance`
---@field outsideSteering Barotrauma.SteeringManager
---`Field Private Instance`
---@field insideSteering Barotrauma.SteeringManager
---`Field Private Instance`
---@field updateTargetsTimer System.Single|number
---`Field Private Instance`
---@field updateMemoriesTimer System.Single|number
---`Field Private Instance`
---@field attackLimbSelectionTimer System.Single|number
---`Field Private Instance`
---@field _attackLimb Barotrauma.Limb
---`Field Private Instance`
---@field _previousAttackLimb Barotrauma.Limb
---`Field Private Instance`
---@field lastAttackUpdateTime System.Double|number
---`Field Private Instance`
---@field _activeAttack Barotrauma.Attack
---`Field Private Instance`
---@field selectedTargetMemory Barotrauma.AITargetMemory
---`Field Private Instance`
---@field targetValue System.Single|number
---`Field Private Instance`
---@field selectedTargetingParams Barotrauma.CharacterParams.TargetParams
---`Field Private Instance`
---@field targetMemories System.Collections.Generic.Dictionary*1Barotrauma*AITarget*1Barotrauma*AITargetMemory|{[Barotrauma.AITarget]:Barotrauma.AITargetMemory}
---`Field Private Instance`
---@field requiredHoleCount System.Int32|integer
---`Field Private Instance`
---@field canAttackWalls System.Boolean|boolean
---`Field Private Instance`
---@field canAttackDoors System.Boolean|boolean
---`Field Private Instance`
---@field canAttackCharacters System.Boolean|boolean
---`Field Private Instance`
---@field priorityFearIncreasement System.Single|number
---`Field Private Instance`
---@field memoryFadeTime System.Single|number
---`Field Private Instance`
---@field avoidTimer System.Single|number
---`Field Private Instance`
---@field observeTimer System.Single|number
---`Field Private Instance`
---@field sweepTimer System.Single|number
---`Field Private Instance`
---@field circleRotation System.Single|number
---`Field Private Instance`
---@field circleDir System.Single|number
---`Field Private Instance`
---@field inverseDir System.Boolean|boolean
---`Field Private Instance`
---@field breakCircling System.Boolean|boolean
---`Field Private Instance`
---@field circleRotationSpeed System.Single|number
---`Field Private Instance`
---@field circleOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field circleFallbackDistance System.Single|number
---`Field Private Instance`
---@field strikeTimer System.Single|number
---`Field Private Instance`
---@field aggressionIntensity System.Single|number
---`Field Private Instance`
---@field CirclePhase Barotrauma.CirclePhase
---`Field Private Instance`
---@field currentAttackIntensity System.Single|number
---`Field Private Instance`
---@field disableTailCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field myBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field reverse System.Boolean|boolean
---`Field Private Instance`
---@field maxSteeringBuffer System.Single|number
---`Field Private Instance`
---@field minSteeringBuffer System.Single|number
---`Field Private Instance`
---@field steeringBufferIncreaseSpeed System.Single|number
---`Field Private Instance`
---@field steeringBuffer System.Single|number
---`Field Private Instance`
---@field _aiParams Barotrauma.CharacterParams.AIParams
---`Field Private Instance`
---@field movementMargin System.Single|number
---`Field Private Instance`
---@field targetHulls System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Private Instance`
---@field hullWeights System.Collections.Generic.List*1System*Single|System.Single|number[]
---`Field Private Instance`
---@field patrolTarget Barotrauma.Hull
---`Field Private Instance`
---@field newPatrolTargetTimer System.Single|number
---`Field Private Instance`
---@field patrolTimerMargin System.Single|number
---`Field Private Instance`
---@field newPatrolTargetIntervalMin System.Single|number
---`Field Private Instance`
---@field newPatrolTargetIntervalMax System.Single|number
---`Field Private Instance`
---@field searchingNewHull System.Boolean|boolean
---`Field Private Instance`
---@field attackWorldPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field attackSimPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field reachTimer System.Single|number
---`Field Private Instance`
---@field attackLimbs System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---`Field Private Instance`
---@field weights System.Collections.Generic.List*1System*Single|System.Single|number[]
---`Field Private Instance`
---@field aimTimer System.Single|number
---`Field Private Instance`
---@field visibilityCheckTimer System.Single|number
---`Field Private Instance`
---@field canSeeTarget System.Boolean|boolean
---`Field Private Instance`
---@field blockCheckInterval System.Single|number
---`Field Private Instance`
---@field blockCheckTimer System.Single|number
---`Field Private Instance`
---@field isBlocked System.Boolean|boolean
---`Field Private Instance`
---@field attackVector System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field wallTarget Barotrauma.EnemyAIController.WallTarget
---`Field Private Instance`
---@field wallHits System.Collections.Generic.List*1System*ValueTuple*2FarseerPhysics*Dynamics*Body*2System*Int32*2Microsoft*Xna*Framework*Vector2|System.ValueTuple*1FarseerPhysics*Dynamics*Body*1System*Int32*1Microsoft*Xna*Framework*Vector2[]
---`Field Private Instance`
---@field removals System.Collections.Generic.List*1Barotrauma*AITarget|Barotrauma.AITarget[]
---`Field Private Instance`
---@field targetIgnoreTime System.Single|number
---`Field Private Instance`
---@field targetIgnoreTimer System.Single|number
---`Field Private Instance`
---@field ignoredTargets System.Collections.Generic.HashSet*1Barotrauma*AITarget|Barotrauma.AITarget[]
---`Field Private Instance`
---@field stateResetCooldown System.Single|number
---`Field Private Instance`
---@field stateResetTimer System.Single|number
---`Field Private Instance`
---@field isStateChanged System.Boolean|boolean
---`Field Private Instance`
---@field activeTriggers System.Collections.Generic.Dictionary*1Barotrauma*AITrigger*1Barotrauma*CharacterParams*TargetParams|{[Barotrauma.AITrigger]:Barotrauma.CharacterParams.TargetParams}
---`Field Private Instance`
---@field inactiveTriggers System.Collections.Generic.HashSet*1Barotrauma*AITrigger|Barotrauma.AITrigger[]
---`Field Private Instance`
---@field modifiedParams System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*CharacterParams*TargetParams|{[Barotrauma.Identifier]:Barotrauma.CharacterParams.TargetParams}
---`Field Private Instance`
---@field tempParams System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*CharacterParams*TargetParams|{[Barotrauma.Identifier]:Barotrauma.CharacterParams.TargetParams}
---`Field Private Instance`
---@field returnDir Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field returnTimer System.Single|number
---`Field Private Instance`
---@field targetLimbs System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---`Field Public Static`
---@field DisableEnemyAI System.Boolean|boolean
---`Field Private Static`
---@field minPriority System.Single|number
---`Field Private Static`
---@field reachTimeOut System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field State Barotrauma.AIState
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PreviousState Barotrauma.AIState
---`Getter Private Instance`
---@field PathSteering Barotrauma.IndoorsSteeringManager
---`Getter Private Instance`
---@field IsAttackRunning System.Boolean|boolean
---`Getter Private Instance`
---@field IsCoolDownRunning System.Boolean|boolean
---`Getter Public Instance`
---@field CombatStrength System.Single|number
---`Getter Private Instance`
---@field Sight System.Single|number
---`Getter Private Instance`
---@field Hearing System.Single|number
---`Getter Private Instance`
---@field FleeHealthThreshold System.Single|number
---`Getter Private Instance`
---@field IsAggressiveBoarder System.Boolean|boolean
---`Getter Private Instance`
---@field FishAnimController Barotrauma.FishAnimController
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AttackLimb Barotrauma.Limb
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ActiveAttack Barotrauma.Attack
---`Getter Public Instance`
---@field SelectedTargetMemory Barotrauma.AITargetMemory
---`Getter Public Instance`
---@field CanAttackDoors System.Boolean|boolean
---`Getter Public Instance`
---@field PriorityFearIncrement System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LatchOntoAI Barotrauma.LatchOntoAI
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SwarmBehavior Barotrauma.SwarmBehavior
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PetBehavior Barotrauma.PetBehavior
---`Getter Public Instance`
---@field SelectedTargetingParams Barotrauma.CharacterParams.TargetParams
---`Getter Public Instance`
---@field AttackHumans System.Boolean|boolean
---`Getter Public Instance`
---@field AttackRooms System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanEnterSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field CanFlip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UnattackableSubmarines System.Collections.Generic.HashSet*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Getter Public Instance`
---@field IsTargetingPlayerTeam System.Boolean|boolean
---`Getter Private Instance`
---@field IsBeingChased System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Reverse System.Boolean|boolean
---`Getter Public Instance`
---@field AIParams Barotrauma.CharacterParams.AIParams
---`Getter Private Instance`
---@field IsLatchedOnSub System.Boolean|boolean
_G['EnemyAIController'] = {}

---`Method NonPublic Instance Virtual`
---@param previousTarget Barotrauma.AITarget
---@param newTarget Barotrauma.AITarget
_G['EnemyAIController'].OnTargetChanged = function(previousTarget, newTarget) end

---`Method NonPublic Instance Virtual`
---@param from Barotrauma.AIState
---@param to Barotrauma.AIState
_G['EnemyAIController'].OnStateChanged = function(from, to) end

---`Method Private Instance`
_G['EnemyAIController'].SetStateResetTimer = function() end

---`Method Private Instance`
---@param target Barotrauma.AITarget
---@return System.Single|number
_G['EnemyAIController'].GetPerceivingRange = function(target) end

---`Method Private Instance`
---@param target Barotrauma.AITarget
---@param dist? System.Single|number
---@param distSquared? System.Single|number
---@param checkVisibility? System.Boolean|boolean
---@return System.Boolean|boolean
_G['EnemyAIController'].CanPerceive = function(target, dist, distSquared, checkVisibility) end

---`Method Public Instance`
_G['EnemyAIController'].ReevaluateAttacks = function() end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
---@param targetDir Microsoft.Xna.Framework.Vector2-ref
---@return System.Boolean|boolean
_G['EnemyAIController'].IsPositionInsideAllowedZone = function(pos, targetDir) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].SteerInsideLevel = function(deltaTime) end

---`Method Public Instance Virtual`
---@overload fun(wall:Barotrauma.Structure, section:Barotrauma.WallSection, targetWorldPos:Microsoft.Xna.Framework.Vector2, deltaTime:System.Single|number):System.Boolean|boolean
---@param gap Barotrauma.Gap
---@param targetWorldPos Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param maxDistance? System.Single|number
---@return System.Boolean|boolean
_G['EnemyAIController'].SteerThroughGap = function(gap, targetWorldPos, deltaTime, maxDistance) end

---`Method Public Instance`
---@param wall Barotrauma.Structure
---@param sectionIndex System.Int32|integer
---@return System.Boolean|boolean
_G['EnemyAIController'].CanPassThroughHole = function(wall, sectionIndex) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@return System.Boolean|boolean
_G['EnemyAIController'].Escape = function(deltaTime) end

---`Method Public Instance`
---@param attackLimb Barotrauma.Limb
---@param target Barotrauma.Character
---@param targetLimbType? Barotrauma.LimbType
---@return Barotrauma.Limb
_G['EnemyAIController'].GetTargetLimb = function(attackLimb, target, targetLimbType) end

---`Method Private Instance`
---@param item Barotrauma.Item
---@return Barotrauma.Character
_G['EnemyAIController'].GetOwner = function(item) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
_G['EnemyAIController'].ServerWrite = function(msg) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
_G['EnemyAIController'].ClientRead = function(msg) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['EnemyAIController'].IsTargetBeingChasedBy = function(target, character) end

---`Method Public Instance`
---@param c Barotrauma.Character
---@return System.Boolean|boolean
_G['EnemyAIController'].IsBeingChasedBy = function(c) end

---`Method Private Instance`
---@param target Barotrauma.AITarget
---@return System.Boolean|boolean
_G['EnemyAIController'].IsTargetInPlayerTeam = function(target) end

---`Method Private Instance`
---@overload fun(targetTag:System.String|string):Barotrauma.CharacterParams.TargetParams
---@overload fun(targetTag:Barotrauma.Identifier):Barotrauma.CharacterParams.TargetParams
---@param aiTarget Barotrauma.AITarget
---@return Barotrauma.CharacterParams.TargetParams
_G['EnemyAIController'].GetTargetParams = function(aiTarget) end

---`Method Private Instance`
---@param aiTarget Barotrauma.AITarget
---@return Barotrauma.Identifier
_G['EnemyAIController'].GetTargetingTag = function(aiTarget) end

---`Method Public Instance Virtual`
---@param target Barotrauma.AITarget
_G['EnemyAIController'].SelectTarget = function(target) end

---`Method Public Instance`
---@param target Barotrauma.AITarget
---@param priority System.Single|number
_G['EnemyAIController'].SelectTarget = function(target, priority) end

---`Method Private Instance`
_G['EnemyAIController'].ReleaseDragTargets = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['EnemyAIController'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param followLastTarget? System.Boolean|boolean
_G['EnemyAIController'].UpdateIdle = function(deltaTime, followLastTarget) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param followLastTarget? System.Boolean|boolean
_G['EnemyAIController'].UpdatePatrol = function(deltaTime, followLastTarget) end

---`Method Private Instance`
_G['EnemyAIController'].FindTargetHulls = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].UpdateAttack = function(deltaTime) end

---`Method Private Instance`
---@param attackingLimb Barotrauma.Limb
---@param currentContexts System.Collections.Generic.IEnumerable*1Barotrauma*AttackContext|(fun():Barotrauma.AttackContext)
---@param target Barotrauma.Entity
---@return System.Boolean|boolean
_G['EnemyAIController'].IsValidAttack = function(attackingLimb, currentContexts, target) end

---`Method Private Instance`
---@param attackWorldPos Microsoft.Xna.Framework.Vector2
---@param ignoredLimb? Barotrauma.Limb
---@return Barotrauma.Limb
_G['EnemyAIController'].GetAttackLimb = function(attackWorldPos, ignoredLimb) end

---`Method Public Instance Virtual`
---@param attacker Barotrauma.Character
---@param attackResult Barotrauma.AttackResult
_G['EnemyAIController'].OnAttacked = function(attacker, attackResult) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@return Barotrauma.Item
_G['EnemyAIController'].GetEquippedItem = function(limb) end

---`Method Private Instance`
---@param dmg System.Single|number
---@param vitality System.Single|number
---@return System.Single|number
_G['EnemyAIController'].GetRelativeDamage = function(dmg, vitality) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param attackingLimb Barotrauma.Limb
---@param attackSimPos Microsoft.Xna.Framework.Vector2
---@param distance? System.Single|number
---@param targetLimb? Barotrauma.Limb
---@return System.Boolean|boolean
_G['EnemyAIController'].UpdateLimbAttack = function(deltaTime, attackingLimb, attackSimPos, distance, targetLimb) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param target Barotrauma.ISpatialEntity
---@param weapon Barotrauma.Item
---@return System.Boolean|boolean
_G['EnemyAIController'].Aim = function(deltaTime, target, weapon) end

---`Method Private Instance`
---@param timer? System.Single|number
_G['EnemyAIController'].SetAimTimer = function(timer) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param steerPos Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@return System.Boolean|boolean
_G['EnemyAIController'].IsBlocked = function(deltaTime, steerPos, collisionCategory) end

---`Method Private Instance`
---@param attackWorldPos Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param followThrough System.Boolean|boolean
---@param checkBlocking? System.Boolean|boolean
---@return System.Boolean|boolean
_G['EnemyAIController'].UpdateFallBack = function(attackWorldPos, deltaTime, followThrough, checkBlocking) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].UpdateEating = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].UpdateFollow = function(deltaTime) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['EnemyAIController'].IsLatchedTo = function(target, character) end

---`Method Public Static`
---@param target Barotrauma.Character
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['EnemyAIController'].IsLatchedToSomeoneElse = function(target, character) end

---`Method Public Instance`
---@param targetingParams Barotrauma.TargetParams-ref
---@return Barotrauma.AITarget
_G['EnemyAIController'].UpdateTargets = function(targetingParams) end

---`Method Private Instance`
---@param requiredHoleCount System.Int32|integer
_G['EnemyAIController'].UpdateWallTarget = function(requiredHoleCount) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@return System.Boolean|boolean
_G['EnemyAIController'].TrySteerThroughGaps = function(deltaTime) end

---`Method Private Instance`
---@param target Barotrauma.AITarget
---@param addIfNotFound System.Boolean|boolean
---@return Barotrauma.AITargetMemory
_G['EnemyAIController'].GetTargetMemory = function(target, addIfNotFound) end

---`Method Private Instance`
_G['EnemyAIController'].UpdateCurrentMemoryLocation = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].FadeMemories = function(deltaTime) end

---`Method Public Instance`
---@param target Barotrauma.AITarget
_G['EnemyAIController'].IgnoreTarget = function(target) end

---`Method Public Instance`
---@param trigger Barotrauma.AITrigger
_G['EnemyAIController'].LaunchTrigger = function(trigger) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EnemyAIController'].UpdateTriggers = function(deltaTime) end

---`Method Private Instance`
---@overload fun(tag:System.String|string):System.Boolean|boolean
---@param tag Barotrauma.Identifier
---@return System.Boolean|boolean
_G['EnemyAIController'].TryResetOriginalState = function(tag) end

---`Method Private Instance`
---@overload fun(targetParams:Barotrauma.CharacterParams.TargetParams, state:Barotrauma.AIState, priority?:System.Nullable*1System*Single|number)
---@overload fun(tag:System.String|string, state:Barotrauma.AIState, priority?:System.Nullable*1System*Single|number, onlyExisting?:System.Boolean|boolean)
---@param tag Barotrauma.Identifier
---@param state Barotrauma.AIState
---@param priority? System.Nullable*1System*Single|number
---@param onlyExisting? System.Boolean|boolean
_G['EnemyAIController'].ChangeParams = function(tag, state, priority, onlyExisting) end

---`Method Private Instance`
---@param targetParams Barotrauma.CharacterParams.TargetParams
_G['EnemyAIController'].ResetParams = function(targetParams) end

---`Method Private Instance`
---@overload fun(tag:System.String|string, state:Barotrauma.AIState, priority?:System.Nullable*1System*Single|number)
---@param target Barotrauma.Character
---@param state Barotrauma.AIState
---@param priority? System.Nullable*1System*Single|number
_G['EnemyAIController'].ChangeTargetState = function(target, state, priority) end

---`Method Private Instance`
_G['EnemyAIController'].ResetOriginalState = function() end

---`Constructor Public Instance`
---@param c Barotrauma.Character
---@param seed System.String|string
---@return Barotrauma.EnemyAIController
_G['EnemyAIController'] = function(c, seed) end

---`Constructor Public Instance`
---@param c Barotrauma.Character
---@param seed System.String|string
---@return Barotrauma.EnemyAIController
_G['EnemyAIController'].__new = function(c, seed) end

