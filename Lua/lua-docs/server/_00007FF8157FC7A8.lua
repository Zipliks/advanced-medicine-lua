---@meta
---@class Barotrauma.Character : Barotrauma.Entity
---`Field Public Instance`
---@field OwnerClientAddress Barotrauma.Networking.Address
---`Field Public Instance`
---@field OwnerClientName System.String|string
---`Field Public Instance`
---@field ClientDisconnected System.Boolean|boolean
---`Field Public Instance`
---@field KillDisconnectedTimer System.Single|number
---`Field Private Instance`
---@field networkUpdateSent System.Boolean|boolean
---`Field Private Instance`
---@field LastInputTime System.Double|number
---`Field Public Instance`
---@field HealthUpdatePending System.Boolean|boolean
---`Field Private Instance`
---@field severedJointIndices System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---`Field Private Instance`
---@field enabled System.Boolean|boolean
---`Field Private Instance`
---@field disabledByEvent System.Boolean|boolean
---`Field Public Instance`
---@field PreviousHull Barotrauma.Hull
---`Field Public Instance`
---@field CurrentHull Barotrauma.Hull
---`Field Public Instance`
---@field Properties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Field NonPublic Instance`
---@field keys Barotrauma.Key-arr|Barotrauma.Key[]
---`Field Private Instance`
---@field humanPrefab Barotrauma.HumanPrefab
---`Field Private Instance`
---@field teamID Barotrauma.CharacterTeamType
---`Field Private Instance`
---@field wallet Barotrauma.Wallet
---`Field Public Instance`
---@field Latchers System.Collections.Generic.HashSet*1Barotrauma*LatchOntoAI|Barotrauma.LatchOntoAI[]
---`Field Public Instance`
---@field AttachedProjectiles System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Projectile|Barotrauma.Items.Components.Projectile[]
---`Field NonPublic Instance`
---@field activeTeamChanges System.Collections.Generic.Dictionary*1System*String*1Barotrauma*ActiveTeamChange|{[System.String|string]:Barotrauma.ActiveTeamChange}
---`Field NonPublic Instance`
---@field currentTeamChange Barotrauma.ActiveTeamChange
---`Field Public Instance`
---@field CombatAction Barotrauma.CombatAction
---`Field Public Instance`
---@field AnimController Barotrauma.AnimController
---`Field Private Instance`
---@field cursorPosition Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field oxygenAvailable System.Single|number
---`Field Public Instance`
---@field Seed System.String|string
---`Field NonPublic Instance`
---@field focusedItem Barotrauma.Item
---`Field Private Instance`
---@field selectedCharacter Barotrauma.Character
---`Field Private Instance`
---@field selectedBy Barotrauma.Character
---`Field Private Instance`
---@field lastAttackers System.Collections.Generic.List*1Barotrauma*Character*Attacker|Barotrauma.Character.Attacker[]
---`Field Public Instance`
---@field LastDamageSource Barotrauma.Entity
---`Field Public Instance`
---@field LastDamage Barotrauma.AttackResult
---`Field Private Instance`
---@field itemSelectedDurations System.Collections.Generic.Dictionary*1Barotrauma*ItemPrefab*1System*Double|{[Barotrauma.ItemPrefab]:System.Double|number}
---`Field Private Instance`
---@field itemSelectedTime System.Double|number
---`Field Public Instance`
---@field InvisibleTimer System.Single|number
---`Field Public Instance`
---@field Prefab Barotrauma.CharacterPrefab
---`Field Public Instance`
---@field Params Barotrauma.CharacterParams
---`Field Public Instance`
---@field TraitorCurrentObjective Barotrauma.LocalizedString
---`Field Private Instance`
---@field attackCoolDown System.Single|number
---`Field Private Instance`
---@field statusEffects System.Collections.Generic.Dictionary*1Barotrauma*ActionType*1System*Collections*Generic*List*2Barotrauma*StatusEffect|{[Barotrauma.ActionType]:System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]}
---`Field Private Instance`
---@field info Barotrauma.CharacterInfo
---`Field Private Instance`
---@field hideFaceTimer System.Single|number
---`Field Private Instance`
---@field speechBubbleColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field speechBubbleTimer System.Single|number
---`Field Public Instance`
---@field ResetInteract System.Boolean|boolean
---`Field Private Instance`
---@field onCustomInteract System.Action*1Barotrauma*Character*1Barotrauma*Character|(fun(arg1:Barotrauma.Character, arg2:Barotrauma.Character))
---`Field Public Instance`
---@field ActiveConversation Barotrauma.ConversationAction
---`Field Public Instance`
---@field RequireConsciousnessForCustomInteract System.Boolean|boolean
---`Field Private Instance`
---@field lockHandsTimer System.Single|number
---`Field Private Instance`
---@field lowPassMultiplier System.Single|number
---`Field Private Instance`
---@field obstructVisionAmount System.Single|number
---`Field Private Instance`
---@field pressureProtectionLastSet System.Double|number
---`Field Private Instance`
---@field pressureProtection System.Single|number
---`Field Public Instance`
---@field KnockbackCooldownTimer System.Single|number
---`Field Private Instance`
---@field ragdollingLockTimer System.Single|number
---`Field Public Instance`
---@field IsRagdolled System.Boolean|boolean
---`Field Public Instance`
---@field IsForceRagdolled System.Boolean|boolean
---`Field Public Instance`
---@field dontFollowCursor System.Boolean|boolean
---`Field Public Instance`
---@field DisableHealthWindow System.Boolean|boolean
---`Field Private Instance`
---@field speechImpedimentSet System.Boolean|boolean
---`Field Private Instance`
---@field speechImpediment System.Single|number
---`Field Private Instance`
---@field _selectedItem Barotrauma.Item
---`Field Private Instance`
---@field isDead System.Boolean|boolean
---`Field Private Instance`
---@field canBeDragged System.Boolean|boolean
---`Field Private Instance`
---@field canInventoryBeAccessed System.Boolean|boolean
---`Field Public Instance`
---@field GodMode System.Boolean|boolean
---`Field Public Instance`
---@field CampaignInteractionType Barotrauma.CampaignMode.InteractionType
---`Field Public Instance`
---@field MerchantIdentifier Barotrauma.Identifier
---`Field Private Instance`
---@field accessRemovedCharacterErrorShown System.Boolean|boolean
---`Field Public Instance`
---@field OnDeath Barotrauma.Character.OnDeathHandler|(fun(character:Barotrauma.Character, causeOfDeath:Barotrauma.CauseOfDeath))
---`Field Public Instance`
---@field OnAttacked Barotrauma.Character.OnAttackedHandler|(fun(attacker:Barotrauma.Character, attackResult:Barotrauma.AttackResult))
---`Field Private Instance`
---@field greatestNegativeSpeedMultiplier System.Single|number
---`Field Private Instance`
---@field greatestPositiveSpeedMultiplier System.Single|number
---`Field Private Instance`
---@field propulsionSpeedMultiplierLastSet System.Double|number
---`Field Private Instance`
---@field propulsionSpeedMultiplier System.Single|number
---`Field Private Instance`
---@field greatestNegativeHealthMultiplier System.Single|number
---`Field Private Instance`
---@field greatestPositiveHealthMultiplier System.Single|number
---`Field Private Instance`
---@field currentAttackTarget Barotrauma.Character.AttackTargetData
---`Field Private Instance`
---@field _selectedItemPriority System.Single|number
---`Field Private Instance`
---@field _foundItem Barotrauma.Item
---`Field Private Instance`
---@field despawnTimer System.Single|number
---`Field Private Instance`
---@field maxAIRange System.Single|number
---`Field Private Instance`
---@field aiTargetChangeSpeed System.Single|number
---`Field Private Instance`
---@field aiChatMessageQueue System.Collections.Generic.List*1Barotrauma*AIChatMessage|Barotrauma.AIChatMessage[]
---`Field Private Instance`
---@field prevAiChatMessages System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field currentContexts System.Collections.Generic.HashSet*1Barotrauma*AttackContext|Barotrauma.AttackContext[]
---`Field Private Instance`
---@field visibleHulls System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Private Instance`
---@field tempList System.Collections.Generic.HashSet*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Private Instance`
---@field characterTalents System.Collections.Generic.List*1Barotrauma*CharacterTalent|Barotrauma.CharacterTalent[]
---`Field Private Instance`
---@field statValues System.Collections.Generic.Dictionary*1Barotrauma*StatTypes*1System*Single|{[Barotrauma.StatTypes]:System.Single|number}
---`Field Private Instance`
---@field wearableStatValues System.Collections.Generic.Dictionary*1Barotrauma*StatTypes*1System*Single|{[Barotrauma.StatTypes]:System.Single|number}
---`Field Private Instance`
---@field abilityFlags Barotrauma.AbilityFlags
---`Field Private Instance`
---@field abilityResistances System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Private Instance`
---@field dequeuedInput Barotrauma.Character.InputNetFlags
---`Field Private Instance`
---@field prevDequeuedInput Barotrauma.Character.InputNetFlags
---`Field Public Instance`
---@field LastNetworkUpdateID System.UInt16|integer
---`Field Public Instance`
---@field LastProcessedID System.UInt16|integer
---`Field Private Instance`
---@field memInput System.Collections.Generic.List*1Barotrauma*Character*NetInputMem|Barotrauma.Character.NetInputMem[]
---`Field Private Instance`
---@field memState System.Collections.Generic.List*1Barotrauma*CharacterStateInfo|Barotrauma.CharacterStateInfo[]
---`Field Private Instance`
---@field memLocalState System.Collections.Generic.List*1Barotrauma*CharacterStateInfo|Barotrauma.CharacterStateInfo[]
---`Field Public Instance`
---@field healthUpdateTimer System.Single|number
---`Field Private Instance`
---@field healthUpdateInterval System.Single|number
---`Field Public Instance`
---@field isSynced System.Boolean|boolean
---`Field Public Static`
---@field CharacterList System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Public Static`
---@field CharacterUpdateInterval System.Int32|integer
---`Field Private Static`
---@field characterUpdateTick System.Int32|integer
---`Field Private Static`
---@field OriginalTeamIdentifier System.String|string
---`Field Private Static`
---@field maxLastAttackerCount System.Int32|integer
---`Field Public Static`
---@field KnockbackCooldown System.Single|number
---`Field Private Static`
---@field cursorFollowMargin System.Single|number
---`Getter Public Static`
---@field Controlled Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisabledByEvent System.Boolean|boolean
---`Getter Public Instance`
---@field IsRemotelyControlled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsRemotePlayer System.Boolean|boolean
---`Getter Public Instance`
---@field IsLocalPlayer System.Boolean|boolean
---`Getter Public Instance`
---@field IsPlayer System.Boolean|boolean
---`Getter Public Instance`
---@field IsCommanding System.Boolean|boolean
---`Getter Public Instance`
---@field IsBot System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsEscorted System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---@field Keys Barotrauma.Key-arr|Barotrauma.Key[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanPrefab Barotrauma.HumanPrefab
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Wallet Barotrauma.Wallet
---`Getter Public Instance`
---@field IsOnPlayerTeam System.Boolean|boolean
---`Getter Public Instance`
---@field IsInstigator System.Boolean|boolean
---`Getter Public Instance`
---@field LastAttackers System.Collections.Generic.IEnumerable*1Barotrauma*Character*Attacker|(fun():Barotrauma.Character.Attacker)
---`Getter Public Instance`
---@field LastAttacker Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastOrderedCharacter Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SecondLastOrderedCharacter Barotrauma.Character
---`Getter Public Instance`
---@field ItemSelectedDurations System.Collections.Generic.Dictionary*1Barotrauma*ItemPrefab*1System*Double|{[Barotrauma.ItemPrefab]:System.Double|number}
---`Getter Public Instance`
---@field SpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---@field Group Barotrauma.Identifier
---`Getter Public Instance`
---@field IsHumanoid System.Boolean|boolean
---`Getter Public Instance`
---@field IsHusk System.Boolean|boolean
---`Getter Public Instance`
---@field IsMale System.Boolean|boolean
---`Getter Public Instance`
---@field IsFemale System.Boolean|boolean
---`Getter Public Instance`
---@field BloodDecalName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanSpeak System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsAir System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsWater System.Boolean|boolean
---`Getter Public Instance`
---@field NeedsOxygen System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Noise System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Visibility System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsTraitor System.Boolean|boolean
---`Getter Public Instance`
---@field IsHuman System.Boolean|boolean
---`Getter Public Instance`
---@field CurrentOrders System.Collections.Generic.List*1Barotrauma*Order|Barotrauma.Order[]
---`Getter Public Instance`
---@field IsDismissed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ViewTarget Barotrauma.Entity
---`Getter Public Instance`
---@field AimRefPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Info Barotrauma.CharacterInfo
---`Getter Public Instance`
---@field VariantOf Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---@field DisplayName System.String|string
---`Getter Public Instance`
---@field LogName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideFace System.Boolean|boolean
---`Getter Public Instance`
---@field ConfigPath System.String|string
---`Getter Public Instance`
---@field Mass System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Inventory Barotrauma.CharacterInventory
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CustomInteractHUDText Barotrauma.LocalizedString
---`Getter Public Instance`
---@field AllowCustomInteract System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LockHands System.Boolean|boolean
---`Getter Public Instance`
---@field AllowInput System.Boolean|boolean
---`Getter Public Instance`
---@field CanMove System.Boolean|boolean
---`Getter Public Instance`
---@field CanInteract System.Boolean|boolean
---`Getter Public Instance`
---@field CanEat System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CursorPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SmoothedCursorPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field CursorWorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FocusedCharacter Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedCharacter Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedBy Barotrauma.Character
---`Getter Public Instance`
---@field HeldItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LowPassMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ObstructVision System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PressureProtection System.Single|number
---`Getter Public Instance`
---@field InPressure System.Boolean|boolean
---`Getter Public Instance`
---@field Anim Barotrauma.AnimController.Animation
---`Getter Public Instance`
---@field IsIncapacitated System.Boolean|boolean
---`Getter Public Instance`
---@field IsUnconscious System.Boolean|boolean
---`Getter Public Instance`
---@field IsArrested System.Boolean|boolean
---`Getter Public Instance`
---@field IsPet System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Oxygen System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OxygenAvailable System.Single|number
---`Getter Public Instance`
---@field HullOxygenPercentage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseHullOxygen System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Stun System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CharacterHealth Barotrauma.CharacterHealth
---`Getter Public Instance`
---@field Vitality System.Single|number
---`Getter Public Instance Virtual`
---@field Health System.Single|number
---`Getter Public Instance`
---@field HealthPercentage System.Single|number
---`Getter Public Instance`
---@field MaxVitality System.Single|number
---`Getter Public Instance`
---@field MaxHealth System.Single|number
---`Getter Public Instance`
---@field AIState Barotrauma.AIState
---`Getter Public Instance`
---@field IsLatched System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Bloodloss System.Single|number
---`Getter Public Instance`
---@field Bleeding System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpeechImpediment System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PressureTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisableImpactDamageTimer System.Single|number
---`Getter Public Instance`
---@field CurrentSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedItem Barotrauma.Item
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedSecondaryItem Barotrauma.Item
---`Getter Public Instance`
---@field HasSelectedAnyItem System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FocusedItem Barotrauma.Item
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PickingItem Barotrauma.Item
---`Getter Public Instance Virtual`
---@field AIController Barotrauma.AIController
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsDead System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableDespawn System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CauseOfDeath Barotrauma.CauseOfDeath
---`Getter Public Instance`
---@field CanBeSelected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanBeDragged System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanInventoryBeAccessed System.Boolean|boolean
---`Getter Public Instance`
---@field CanAim System.Boolean|boolean
---`Getter Public Instance`
---@field InWater System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field DrawPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field IsInFriendlySub System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OverrideMovement System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceRun System.Boolean|boolean
---`Getter Public Instance`
---@field IsClimbing System.Boolean|boolean
---`Getter Public Instance`
---@field CanRun System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpeedMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PropulsionSpeedMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HealthMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HumanPrefabHealthMultiplier System.Single|number
---`Getter Public Instance`
---@field IsKnockedDown System.Boolean|boolean
---`Getter Public Instance`
---@field IsCaptain System.Boolean|boolean
---`Getter Public Instance`
---@field IsEngineer System.Boolean|boolean
---`Getter Public Instance`
---@field IsMechanic System.Boolean|boolean
---`Getter Public Instance`
---@field IsMedic System.Boolean|boolean
---`Getter Public Instance`
---@field IsSecurity System.Boolean|boolean
---`Getter Public Instance`
---@field IsAssistant System.Boolean|boolean
---`Getter Public Instance`
---@field IsWatchman System.Boolean|boolean
---`Getter Public Instance`
---@field IsVip System.Boolean|boolean
---`Getter Public Instance`
---@field IsPrisoner System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UniqueNameColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HealthUpdateInterval System.Single|number
---`Getter Public Instance`
---@field MemState System.Collections.Generic.List*1Barotrauma*CharacterStateInfo|Barotrauma.CharacterStateInfo[]
---`Getter Public Instance`
---@field MemLocalState System.Collections.Generic.List*1Barotrauma*CharacterStateInfo|Barotrauma.CharacterStateInfo[]
_G['Character'] = {}

---`Method Private Instance`
---@param predicate System.Func*1Barotrauma*Order*1System*Boolean|(fun(arg:Barotrauma.Order):System.Boolean|boolean)
---@return Barotrauma.Order
_G['Character'].GetCurrentOrder = function(predicate) end

---`Method Public Instance`
---@param order Barotrauma.Order
---@return Barotrauma.Order
_G['Character'].GetCurrentOrder = function(order) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier)
---@param identifier System.String|string
_G['Character'].DisableLine = function(identifier) end

---`Method Public Instance`
---@param message System.String|string
---@param messageType? System.Nullable*1Barotrauma*Networking*ChatMessageType
---@param delay? System.Single|number
---@param identifier? Barotrauma.Identifier
---@param minDurationBetweenSimilar? System.Single|number
_G['Character'].Speak = function(message, messageType, delay, identifier, minDurationBetweenSimilar) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Character'].UpdateAIChatMessages = function(deltaTime) end

---`Method Public Instance`
---@param duration System.Single|number
---@param color Microsoft.Xna.Framework.Color
_G['Character'].ShowSpeechBubble = function(duration, color) end

---`Method Public Instance`
---@param damageAmount System.Single|number
---@param bleedingDamageAmount System.Single|number
---@param burnDamageAmount System.Single|number
_G['Character'].SetAllDamage = function(damageAmount, bleedingDamageAmount, burnDamageAmount) end

---`Method Public Instance Virtual`
---@param attacker Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param attack Barotrauma.Attack
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@return Barotrauma.AttackResult
_G['Character'].AddDamage = function(attacker, worldPosition, attack, deltaTime, playSound) end

---`Method Public Instance`
---@overload fun(worldPosition:Microsoft.Xna.Framework.Vector2, afflictions:System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction), stun:System.Single|number, playSound:System.Boolean|boolean, attackImpulse?:System.Single|number, attacker?:Barotrauma.Character, damageMultiplier?:System.Single|number):Barotrauma.AttackResult
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param afflictions System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@param stun System.Single|number
---@param playSound System.Boolean|boolean
---@param attackImpulse System.Single|number
---@param hitLimb Barotrauma.Limb-ref
---@param attacker? Barotrauma.Character
---@param damageMultiplier? System.Single|number
---@return Barotrauma.AttackResult
_G['Character'].AddDamage = function(worldPosition, afflictions, stun, playSound, attackImpulse, hitLimb, attacker, damageMultiplier) end

---`Method Public Instance`
---@param attacker Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param attack Barotrauma.Attack
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@param targetLimb? Barotrauma.Limb
---@param penetration? System.Single|number
---@return Barotrauma.AttackResult
_G['Character'].ApplyAttack = function(attacker, worldPosition, attack, deltaTime, playSound, targetLimb, penetration) end

---`Method Public Instance`
---@param targetLimb Barotrauma.Limb
---@param severLimbsProbability System.Single|number
---@param damage System.Single|number
---@param allowBeheading System.Boolean|boolean
---@param attacker? Barotrauma.Character
_G['Character'].TrySeverLimbJoints = function(targetLimb, severLimbsProbability, damage, allowBeheading, attacker) end

---`Method Public Instance`
---@param target Barotrauma.Character
_G['Character'].RecordKill = function(target) end

---`Method Public Instance`
---@param other Barotrauma.Character
_G['Character'].AddEncounter = function(other) end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hitLimb Barotrauma.Limb
---@param afflictions System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@param stun System.Single|number
---@param playSound System.Boolean|boolean
---@param attackImpulse System.Single|number
---@param attacker? Barotrauma.Character
---@param damageMultiplier? System.Single|number
---@param allowStacking? System.Boolean|boolean
---@param penetration? System.Single|number
---@param shouldImplode? System.Boolean|boolean
---@return Barotrauma.AttackResult
_G['Character'].DamageLimb = function(worldPosition, hitLimb, afflictions, stun, playSound, attackImpulse, attacker, damageMultiplier, allowStacking, penetration, shouldImplode) end

---`Method Private Instance`
---@param attacker Barotrauma.Character
---@param attackResult Barotrauma.AttackResult
---@param stun System.Single|number
_G['Character'].OnAttackedProjSpecific = function(attacker, attackResult, stun) end

---`Method Public Instance`
---@param attacker Barotrauma.Character
---@param healthChange System.Single|number
_G['Character'].TryAdjustAttackerSkill = function(attacker, healthChange) end

---`Method Public Instance`
---@param newStun System.Single|number
---@param allowStunDecrease? System.Boolean|boolean
---@param isNetworkMessage? System.Boolean|boolean
_G['Character'].SetStun = function(newStun, allowStunDecrease, isNetworkMessage) end

---`Method Public Instance`
---@param actionType Barotrauma.ActionType
---@param deltaTime System.Single|number
_G['Character'].ApplyStatusEffects = function(actionType, deltaTime) end

---`Method Private Instance`
---@param isNetworkMessage? System.Boolean|boolean
_G['Character'].Implode = function(isNetworkMessage) end

---`Method Public Instance`
_G['Character'].BreakJoints = function() end

---`Method Public Instance`
---@param causeOfDeath Barotrauma.CauseOfDeathType
---@param causeOfDeathAffliction Barotrauma.Affliction
---@param isNetworkMessage? System.Boolean|boolean
---@param log? System.Boolean|boolean
_G['Character'].Kill = function(causeOfDeath, causeOfDeathAffliction, isNetworkMessage, log) end

---`Method Private Instance`
---@param causeOfDeath Barotrauma.CauseOfDeathType
---@param causeOfDeathAffliction Barotrauma.Affliction
---@param log System.Boolean|boolean
_G['Character'].KillProjSpecific = function(causeOfDeath, causeOfDeathAffliction, log) end

---`Method Public Instance`
---@param removeAllAfflictions? System.Boolean|boolean
_G['Character'].Revive = function(removeAllAfflictions) end

---`Method Public Instance Virtual`
_G['Character'].Remove = function() end

---`Method Public Instance`
---@param worldPos Microsoft.Xna.Framework.Vector2
_G['Character'].TeleportTo = function(worldPos) end

---`Method Public Static`
---@param inventory Barotrauma.Inventory
---@param parentElement System.Xml.Linq.XElement
_G['Character'].SaveInventory = function(inventory, parentElement) end

---`Method Public Instance`
_G['Character'].SaveInventory = function() end

---`Method Public Instance`
---@param inventory Barotrauma.Inventory
---@param itemData Barotrauma.ContentXElement
_G['Character'].SpawnInventoryItems = function(inventory, itemData) end

---`Method Private Instance`
---@param inventory Barotrauma.Inventory
---@param element Barotrauma.ContentXElement
---@param extraDuffelBags System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['Character'].SpawnInventoryItemsRecursive = function(inventory, element, extraDuffelBags) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*AttackContext|(fun():Barotrauma.AttackContext)
_G['Character'].GetAttackContexts = function() end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
_G['Character'].GetVisibleHulls = function() end

---`Method Public Instance`
---@param target Barotrauma.ISpatialEntity
---@param worldPos? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Character'].GetRelativeSimPosition = function(target, worldPos) end

---`Method Public Instance`
---@param identifier System.String|string
---@return System.Boolean|boolean
_G['Character'].HasJob = function(identifier) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Character'].IsProtectedFromPressure = function() end

---`Method Public Instance`
_G['Character'].LoadTalents = function() end

---`Method Public Instance`
---@overload fun(talentIdentifier:Barotrauma.Identifier, addingFirstTime?:System.Boolean|boolean):System.Boolean|boolean
---@overload fun(talentIdentifier:System.UInt32|integer, addingFirstTime?:System.Boolean|boolean):System.Boolean|boolean
---@param talentPrefab Barotrauma.TalentPrefab
---@param addingFirstTime? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Character'].GiveTalent = function(talentPrefab, addingFirstTime) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Character'].HasTalent = function(identifier) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Character'].HasUnlockedAllTalents = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['Character'].GetFriendlyCrew = function(character) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Character'].HasTalents = function() end

---`Method Public Instance`
---@overload fun(abilityEffectType:Barotrauma.AbilityEffectType, abilityObject:Barotrauma.Abilities.AbilityObject)
---@param abilityEffectType Barotrauma.AbilityEffectType
_G['Character'].CheckTalents = function(abilityEffectType) end

---`Method Public Instance`
---@param recipeIdentifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Character'].HasRecipeForItem = function(recipeIdentifier) end

---`Method Public Instance`
---@param amount System.Int32|integer
_G['Character'].GiveMoney = function(amount) end

---`Method Private Instance`
---@param prevAmount System.Int32|integer
---@param newAmount System.Int32|integer
_G['Character'].OnMoneyChanged = function(prevAmount, newAmount) end

---`Method Private Instance`
---@param talentPrefab Barotrauma.TalentPrefab
_G['Character'].OnTalentGiven = function(talentPrefab) end

---`Method Public Instance`
---@param statType Barotrauma.StatTypes
---@return System.Single|number
_G['Character'].GetStatValue = function(statType) end

---`Method Public Instance`
_G['Character'].OnWearablesChanged = function() end

---`Method Public Instance`
---@param statType Barotrauma.StatTypes
---@param value System.Single|number
_G['Character'].ChangeStat = function(statType, value) end

---`Method Private Static`
---@param skillIdentifier Barotrauma.Identifier
---@return Barotrauma.StatTypes
_G['Character'].GetSkillStatType = function(skillIdentifier) end

---`Method Public Instance`
---@param abilityFlag Barotrauma.AbilityFlags
_G['Character'].AddAbilityFlag = function(abilityFlag) end

---`Method Public Instance`
---@param abilityFlag Barotrauma.AbilityFlags
_G['Character'].RemoveAbilityFlag = function(abilityFlag) end

---`Method Public Instance`
---@param abilityFlag Barotrauma.AbilityFlags
---@return System.Boolean|boolean
_G['Character'].HasAbilityFlag = function(abilityFlag) end

---`Method Public Instance`
---@param affliction Barotrauma.AfflictionPrefab
---@return System.Single|number
_G['Character'].GetAbilityResistance = function(affliction) end

---`Method Public Instance`
---@param resistanceId Barotrauma.Identifier
---@param value System.Single|number
_G['Character'].ChangeAbilityResistance = function(resistanceId, value) end

---`Method Public Instance`
---@param other Barotrauma.Character
---@return System.Boolean|boolean
_G['Character'].IsFriendly = function(other) end

---`Method Public Static`
---@param me Barotrauma.Character
---@param other Barotrauma.Character
---@return System.Boolean|boolean
_G['Character'].IsFriendly = function(me, other) end

---`Method Public Instance`
_G['Character'].StopClimbing = function() end

---`Method Public Instance`
_G['Character'].ResetNetState = function() end

---`Method Private Instance`
_G['Character'].UpdateNetInput = function() end

---`Method Public Static`
---@overload fun(speciesName:System.String|string, position:Microsoft.Xna.Framework.Vector2, seed:System.String|string, characterInfo?:Barotrauma.CharacterInfo, id?:System.UInt16|integer, isRemotePlayer?:System.Boolean|boolean, hasAi?:System.Boolean|boolean, createNetworkEvent?:System.Boolean|boolean, ragdoll?:Barotrauma.RagdollParams, throwErrorIfNotFound?:System.Boolean|boolean):Barotrauma.Character
---@overload fun(speciesName:Barotrauma.Identifier, position:Microsoft.Xna.Framework.Vector2, seed:System.String|string, characterInfo?:Barotrauma.CharacterInfo, id?:System.UInt16|integer, isRemotePlayer?:System.Boolean|boolean, hasAi?:System.Boolean|boolean, createNetworkEvent?:System.Boolean|boolean, ragdoll?:Barotrauma.RagdollParams, throwErrorIfNotFound?:System.Boolean|boolean):Barotrauma.Character
---@overload fun(prefab:Barotrauma.CharacterPrefab, position:Microsoft.Xna.Framework.Vector2, seed:System.String|string, characterInfo?:Barotrauma.CharacterInfo, id?:System.UInt16|integer, isRemotePlayer?:System.Boolean|boolean, hasAi?:System.Boolean|boolean, createNetworkEvent?:System.Boolean|boolean, ragdoll?:Barotrauma.RagdollParams):Barotrauma.Character
---@param characterInfo Barotrauma.CharacterInfo
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param hasAi? System.Boolean|boolean
---@param ragdoll? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'].Create = function(characterInfo, position, seed, id, isRemotePlayer, hasAi, ragdoll) end

---`Method Public Instance`
---@param headId? System.Nullable*1System*Int32|integer
---@param hairIndex? System.Int32|integer
---@param beardIndex? System.Int32|integer
---@param moustacheIndex? System.Int32|integer
---@param faceAttachmentIndex? System.Int32|integer
_G['Character'].ReloadHead = function(headId, hairIndex, beardIndex, moustacheIndex, faceAttachmentIndex) end

---`Method Public Instance`
_G['Character'].LoadHeadAttachments = function() end

---`Method Public Instance`
---@param inputType Barotrauma.InputType
---@return System.Boolean|boolean
_G['Character'].IsKeyHit = function(inputType) end

---`Method Public Instance`
---@param inputType Barotrauma.InputType
---@return System.Boolean|boolean
_G['Character'].IsKeyDown = function(inputType) end

---`Method Public Instance`
---@param inputType Barotrauma.InputType
---@param hit System.Boolean|boolean
---@param held System.Boolean|boolean
_G['Character'].SetInput = function(inputType, hit, held) end

---`Method Public Instance`
---@param inputType Barotrauma.InputType
_G['Character'].ClearInput = function(inputType) end

---`Method Public Instance`
_G['Character'].ClearInputs = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Character'].ToString = function() end

---`Method Public Instance`
---@param spawnPoint? Barotrauma.WayPoint
_G['Character'].GiveJobItems = function(spawnPoint) end

---`Method Public Instance`
---@param spawnPoint Barotrauma.WayPoint
---@param createNetworkEvent? System.Boolean|boolean
_G['Character'].GiveIdCardTags = function(spawnPoint, createNetworkEvent) end

---`Method Public Instance`
---@overload fun(skillIdentifier:System.String|string):System.Single|number
---@param skillIdentifier Barotrauma.Identifier
---@return System.Single|number
_G['Character'].GetSkillLevel = function(skillIdentifier) end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Character'].GetTargetMovement = function() end

---`Method Public Instance`
---@param targetMovement Microsoft.Xna.Framework.Vector2
---@param currentSpeed System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['Character'].ApplyMovementLimits = function(targetMovement, currentSpeed) end

---`Method Public Instance`
---@param val System.Single|number
_G['Character'].StackSpeedMultiplier = function(val) end

---`Method Public Instance`
_G['Character'].ResetSpeedMultiplier = function() end

---`Method Public Instance`
---@param val System.Single|number
_G['Character'].StackHealthMultiplier = function(val) end

---`Method Private Instance`
_G['Character'].CalculateHealthMultiplier = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Character'].GetTemporarySpeedReduction = function() end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param sum System.Single|number
---@param max? System.Single|number
---@return System.Single|number
_G['Character'].CalculateMovementPenalty = function(limb, sum, max) end

---`Method Public Instance`
---@return System.Single|number
_G['Character'].GetRightHandPenalty = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Character'].GetLeftHandPenalty = function() end

---`Method Public Instance`
---@param startSum? System.Single|number
---@return System.Single|number
_G['Character'].GetLegPenalty = function(startSum) end

---`Method Public Instance`
---@param speed System.Single|number
---@return System.Single|number
_G['Character'].ApplyTemporarySpeedLimits = function(speed) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Character'].Control = function(deltaTime, cam) end

---`Method Public Instance`
---@param attackLimb Barotrauma.Limb
---@param damageTarget Barotrauma.IDamageable
---@param attackPos Microsoft.Xna.Framework.Vector2
_G['Character'].SetAttackTarget = function(attackLimb, damageTarget, attackPos) end

---`Method Public Instance`
---@param target Barotrauma.Character
---@return System.Boolean|boolean
_G['Character'].CanSeeCharacter = function(target) end

---`Method Private Instance`
---@return Barotrauma.Limb
_G['Character'].GetSeeingLimb = function() end

---`Method Public Instance`
---@param target Barotrauma.ISpatialEntity
---@param seeingEntity? Barotrauma.ISpatialEntity
---@return System.Boolean|boolean
_G['Character'].CanSeeTarget = function(target, seeingEntity) end

---`Method Public Instance`
---@param targetWorldPos Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Character'].IsFacing = function(targetWorldPos) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param requireEquipped? System.Boolean|boolean
---@param slotType? System.Nullable*1Barotrauma*InvSlotType
---@return System.Boolean|boolean
_G['Character'].HasItem = function(item, requireEquipped, slotType) end

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item, slotType?:System.Nullable*1Barotrauma*InvSlotType, predicate?:System.Func*1Barotrauma*InvSlotType*1System*Boolean|(fun(arg:Barotrauma.InvSlotType):System.Boolean|boolean)):System.Boolean|boolean
---@overload fun(tagOrIdentifier:System.String|string, allowBroken?:System.Boolean|boolean, slotType?:System.Nullable*1Barotrauma*InvSlotType):System.Boolean|boolean
---@param tagOrIdentifier Barotrauma.Identifier
---@param allowBroken? System.Boolean|boolean
---@param slotType? System.Nullable*1Barotrauma*InvSlotType
---@return System.Boolean|boolean
_G['Character'].HasEquippedItem = function(tagOrIdentifier, allowBroken, slotType) end

---`Method Public Instance`
---@param tagOrIdentifier? System.String|string
---@param slotType? System.Nullable*1Barotrauma*InvSlotType
---@return Barotrauma.Item
_G['Character'].GetEquippedItem = function(tagOrIdentifier, slotType) end

---`Method Public Instance`
---@param inventory Barotrauma.Inventory
---@return System.Boolean|boolean
_G['Character'].CanAccessInventory = function(inventory) end

---`Method Public Instance`
---@param itemIndex System.Int32-ref
---@param targetItem Barotrauma.Item-ref
---@param identifiers? System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param ignoreBroken? System.Boolean|boolean
---@param ignoredItems? System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@param ignoredContainerIdentifiers? System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param customPredicate? System.Func*1Barotrauma*Item*1System*Boolean|(fun(arg:Barotrauma.Item):System.Boolean|boolean)
---@param customPriorityFunction? System.Func*1Barotrauma*Item*1System*Single|(fun(arg:Barotrauma.Item):System.Single|number)
---@param maxItemDistance? System.Single|number
---@param positionalReference? Barotrauma.ISpatialEntity
---@return System.Boolean|boolean
_G['Character'].FindItem = function(itemIndex, targetItem, identifiers, ignoreBroken, ignoredItems, ignoredContainerIdentifiers, customPredicate, customPriorityFunction, maxItemDistance, positionalReference) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Character'].IsItemTakenBySomeoneElse = function(item) end

---`Method Public Instance`
---@overload fun(c:Barotrauma.Character, maxDist?:System.Single|number, checkVisibility?:System.Boolean|boolean, skipDistanceCheck?:System.Boolean|boolean):System.Boolean|boolean
---@overload fun(item:Barotrauma.Item, checkLinked?:System.Boolean|boolean):System.Boolean|boolean
---@param item Barotrauma.Item
---@param distanceToItem System.Single-ref
---@param checkLinked System.Boolean|boolean
---@return System.Boolean|boolean
_G['Character'].CanInteractWith = function(item, distanceToItem, checkLinked) end

---`Method Public Instance`
---@param onCustomInteract System.Action*1Barotrauma*Character*1Barotrauma*Character|(fun(arg1:Barotrauma.Character, arg2:Barotrauma.Character))
---@param hudText Barotrauma.LocalizedString
_G['Character'].SetCustomInteract = function(onCustomInteract, hudText) end

---`Method Private Instance`
_G['Character'].TransformCursorPos = function() end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['Character'].SelectCharacter = function(character) end

---`Method Public Instance`
_G['Character'].DeselectCharacter = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param mouseSimPos Microsoft.Xna.Framework.Vector2
_G['Character'].DoInteractionUpdate = function(deltaTime, mouseSimPos) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['Character'].UpdateAnimAll = function(deltaTime) end

---`Method Public Static`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Character'].UpdateAll = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Character'].Update = function(deltaTime, cam) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param damage System.Single|number
_G['Character'].AddAttacker = function(character, damage) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['Character'].ForgiveAttacker = function(character) end

---`Method Public Instance`
---@param otherCharacter Barotrauma.Character
---@return System.Single|number
_G['Character'].GetDamageDoneByAttacker = function(otherCharacter) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Character'].UpdateAttackers = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Character'].UpdateOxygen = function(deltaTime) end

---`Method NonPublic Instance`
---@return System.Single|number
_G['Character'].GetDistanceToClosestPlayer = function() end

---`Method NonPublic Instance`
---@return System.Single|number
_G['Character'].GetDistanceSqrToClosestPlayer = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param ignoreThresholds? System.Boolean|boolean
---@param createNetworkEvents? System.Boolean|boolean
_G['Character'].UpdateDespawn = function(deltaTime, ignoreThresholds, createNetworkEvents) end

---`Method Public Instance`
---@param createNetworkEvents? System.Boolean|boolean
_G['Character'].DespawnNow = function(createNetworkEvents) end

---`Method Public Static`
---@param prefab Barotrauma.CharacterPrefab
_G['Character'].RemoveByPrefab = function(prefab) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Character'].UpdateSightRange = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Character'].UpdateSoundRange = function(deltaTime) end

---`Method Public Instance`
---@param speaker Barotrauma.Character
---@return System.Boolean|boolean
_G['Character'].CanHearCharacter = function(speaker) end

---`Method Public Instance`
---@param order Barotrauma.Order
---@param isNewOrder System.Boolean|boolean
---@param speak? System.Boolean|boolean
---@param force? System.Boolean|boolean
_G['Character'].SetOrder = function(order, isNewOrder, speak, force) end

---`Method Private Instance`
---@param newOrder Barotrauma.Order
_G['Character'].AddCurrentOrder = function(newOrder) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@return System.Boolean|boolean
_G['Character'].RemoveDuplicateOrders = function(order) end

---`Method Public Instance`
---@return Barotrauma.Order
_G['Character'].GetCurrentOrderWithTopPriority = function() end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Character'].IsAnySelectedItem = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Character'].HasSelectedAnotherSecondaryItem = function(item) end

---`Method Public Instance`
---@param recipient Barotrauma.Networking.Client
---@return System.Single|number
_G['Character'].GetPositionUpdateInterval = function(recipient) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Character'].ServerReadInput = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Character'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['Character'].ServerWritePosition = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Character'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param forceAfflictionData? System.Boolean|boolean
_G['Character'].WriteStatus = function(msg, forceAfflictionData) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param entityId System.UInt16|integer
---@param restrictMessageSize System.Boolean|boolean
_G['Character'].WriteSpawnData = function(msg, entityId, restrictMessageSize) end

---`Method Private Instance`
_G['Character'].ThrowIfAccessingWalletsInSingleplayer = function() end

---`Method Public Instance`
---@param newTeam Barotrauma.CharacterTeamType
_G['Character'].SetOriginalTeam = function(newTeam) end

---`Method NonPublic Instance`
---@param newTeam Barotrauma.CharacterTeamType
_G['Character'].ChangeTeam = function(newTeam) end

---`Method Public Instance`
---@param identifier System.String|string
---@return System.Boolean|boolean
_G['Character'].HasTeamChange = function(identifier) end

---`Method Public Instance`
---@param identifier System.String|string
---@param newTeamChange Barotrauma.ActiveTeamChange
---@return System.Boolean|boolean
_G['Character'].TryAddNewTeamChange = function(identifier, newTeamChange) end

---`Method Public Instance`
---@param identifier System.String|string
---@return System.Boolean|boolean
_G['Character'].TryRemoveTeamChange = function(identifier) end

---`Method Public Instance`
_G['Character'].UpdateTeam = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'] = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'].__new = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

---`Constructor Private Instance`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'] = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

---`Constructor Private Instance`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'].__new = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'] = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.Character
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Character
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isRemotePlayer? System.Boolean|boolean
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['Character'].__new = function(prefab, position, seed, characterInfo, id, isRemotePlayer, ragdollParams) end

