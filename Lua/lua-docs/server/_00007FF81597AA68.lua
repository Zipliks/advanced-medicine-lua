---@meta
---@class Barotrauma.Limb : System.Object
---`Field Public Instance`
---@field character Barotrauma.Character
---`Field Public Instance`
---@field ragdoll Barotrauma.Ragdoll
---`Field Public Instance`
---@field Params Barotrauma.RagdollParams.LimbParams
---`Field Public Instance`
---@field body Barotrauma.PhysicsBody
---`Field Public Instance`
---@field Hull Barotrauma.Hull
---`Field Private Instance`
---@field pullJoint FarseerPhysics.Dynamics.Joints.FixedMouseJoint
---`Field Public Instance`
---@field type Barotrauma.LimbType
---`Field Private Instance`
---@field ignoreCollisions System.Boolean|boolean
---`Field Private Instance`
---@field isSevered System.Boolean|boolean
---`Field Private Instance`
---@field severedFadeOutTimer System.Single|number
---`Field Private Instance`
---@field mouthPos System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Public Instance`
---@field attack Barotrauma.Attack
---`Field Private Instance`
---@field dir Barotrauma.Direction
---`Field Public Instance`
---@field DebugTargetPos Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field DebugRefPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field wearingItems System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Field Private Instance`
---@field statusEffects System.Collections.Generic.Dictionary*1Barotrauma*ActionType*1System*Collections*Generic*List*2Barotrauma*StatusEffect|{[Barotrauma.ActionType]:System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]}
---`Field Private Instance`
---@field appliedDamageModifiers System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---`Field Private Instance`
---@field tempModifiers System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---`Field Private Instance`
---@field afflictionsCopy System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Field Private Instance`
---@field temporarilyDisabled System.Boolean|boolean
---`Field Private Instance`
---@field reEnableTimer System.Single|number
---`Field Private Instance`
---@field contactBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field attachJoint FarseerPhysics.Dynamics.Joints.WeldJoint
---`Field Private Instance`
---@field colliderJoint FarseerPhysics.Dynamics.Joints.WeldJoint
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field blinkTimer System.Single|number
---`Field Private Instance`
---@field blinkPhase System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SeveredFadeOutTime System.Single|number
---`Getter Public Instance`
---@field StepOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InWater System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreCollisions System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MouthPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamageModifiers System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---`Getter Public Instance`
---@field HealthIndex System.Int32|integer
---`Getter Public Instance`
---@field Scale System.Single|number
---`Getter Public Instance`
---@field AttackPriority System.Single|number
---`Getter Public Instance`
---@field DoesFlip System.Boolean|boolean
---`Getter Public Instance`
---@field SteerForce System.Single|number
---`Getter Public Instance`
---@field IsLowerBody System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsSevered System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Submarine Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hidden System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AnimTargetPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Mass System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Disabled System.Boolean|boolean
---`Getter Public Instance`
---@field LinearVelocity Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Dir System.Single|number
---`Getter Public Instance`
---@field RefJointIndex System.Int32|integer
---`Getter Public Instance`
---@field WearingItems System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OtherWearables System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PullJointEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PullJointMaxForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PullJointWorldAnchorA Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PullJointWorldAnchorB Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field PullJointLocalAnchorA Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Removed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AttachedRope Barotrauma.Items.Components.Rope
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---@field IsDead System.Boolean|boolean
---`Getter Public Instance`
---@field Health System.Single|number
---`Getter Public Instance`
---@field HealthPercentage System.Single|number
---`Getter Public Instance`
---@field AIState Barotrauma.AIState
---`Getter Public Instance`
---@field CanBeSeveredAlive System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---@field StatusEffects System.Collections.Generic.Dictionary*1Barotrauma*ActionType*1System*Collections*Generic*List*2Barotrauma*StatusEffect|{[Barotrauma.ActionType]:System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]}
---`Getter Public Instance`
---@field IsStuck System.Boolean|boolean
---`Getter Private Instance`
---@field TotalBlinkDurationOut System.Single|number
_G['Limb'] = {}

---`Method Public Instance`
---@param pos Microsoft.Xna.Framework.Vector2
---@param force System.Single|number
---@param pullFromCenter? System.Boolean|boolean
_G['Limb'].MoveToPos = function(pos, force, pullFromCenter) end

---`Method Public Instance`
_G['Limb'].MirrorPullJoint = function() end

---`Method Public Instance`
---@overload fun(simPosition:Microsoft.Xna.Framework.Vector2, damage:System.Single|number, bleedingDamage:System.Single|number, burnDamage:System.Single|number, playSound:System.Boolean|boolean):Barotrauma.AttackResult
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param afflictions System.Collections.Generic.IEnumerable*1Barotrauma*Affliction|(fun():Barotrauma.Affliction)
---@param playSound System.Boolean|boolean
---@param damageMultiplier? System.Single|number
---@param penetration? System.Single|number
---@param attacker? Barotrauma.Character
---@return Barotrauma.AttackResult
_G['Limb'].AddDamage = function(simPosition, afflictions, playSound, damageMultiplier, penetration, attacker) end

---`Method Public Instance`
---@param armorSector Microsoft.Xna.Framework.Vector2
---@param simPosition Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Limb'].SectorHit = function(armorSector, simPosition) end

---`Method NonPublic Instance`
---@param armorSector Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['Limb'].GetArmorSectorSize = function(armorSector) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Limb'].Update = function(deltaTime) end

---`Method Public Instance`
---@param duration? System.Single|number
---@param ignoreCollisions? System.Boolean|boolean
_G['Limb'].HideAndDisable = function(duration, ignoreCollisions) end

---`Method Public Instance`
_G['Limb'].ReEnable = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param attackSimPos Microsoft.Xna.Framework.Vector2
---@param damageTarget Barotrauma.IDamageable
---@param attackResult Barotrauma.AttackResult-ref
---@param distance? System.Single|number
---@param targetLimb? Barotrauma.Limb
---@return System.Boolean|boolean
_G['Limb'].UpdateAttack = function(deltaTime, attackSimPos, damageTarget, attackResult, distance, targetLimb) end

---`Method Public Instance`
---@param damageTarget Barotrauma.IDamageable
---@param targetLimb Barotrauma.Limb
---@param attackResult Barotrauma.AttackResult-ref
_G['Limb'].ExecuteAttack = function(damageTarget, targetLimb, attackResult) end

---`Method Private Instance`
---@param target FarseerPhysics.Dynamics.Body
---@param from Microsoft.Xna.Framework.Vector2
---@param to Microsoft.Xna.Framework.Vector2
_G['Limb'].StickTo = function(target, from, to) end

---`Method Public Instance`
_G['Limb'].Release = function() end

---`Method Public Instance`
---@param actionType Barotrauma.ActionType
---@param deltaTime System.Single|number
_G['Limb'].ApplyStatusEffects = function(actionType, deltaTime) end

---`Method Public Instance`
_G['Limb'].Blink = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param referenceRotation System.Single|number
_G['Limb'].UpdateBlink = function(deltaTime, referenceRotation) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*LimbJoint|(fun():Barotrauma.LimbJoint)
_G['Limb'].GetConnectedJoints = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Limb|(fun():Barotrauma.Limb)
_G['Limb'].GetConnectedLimbs = function() end

---`Method Public Instance`
_G['Limb'].Remove = function() end

---`Method Public Instance`
_G['Limb'].LoadParams = function() end

---`Constructor Public Instance`
---@param ragdoll Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param limbParams Barotrauma.RagdollParams.LimbParams
---@return Barotrauma.Limb
_G['Limb'] = function(ragdoll, character, limbParams) end

---`Constructor Public Instance`
---@param ragdoll Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param limbParams Barotrauma.RagdollParams.LimbParams
---@return Barotrauma.Limb
_G['Limb'].__new = function(ragdoll, character, limbParams) end

