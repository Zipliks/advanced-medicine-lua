---@meta
---@class Barotrauma.Attack : System.Object
---`Field Private Instance`
---@field _range System.Single|number
---`Field Private Instance`
---@field _damageRange System.Single|number
---`Field Private Instance`
---@field _structureDamage System.Single|number
---`Field Private Instance`
---@field _itemDamage System.Single|number
---`Field Public Instance`
---@field ForceOnLimbIndices System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---`Field Public Instance`
---@field Afflictions System.Collections.Generic.Dictionary*1Barotrauma*Affliction*1System*Xml*Linq*XElement|{[Barotrauma.Affliction]:System.Xml.Linq.XElement}
---`Field Private Instance`
---@field statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Context Barotrauma.AttackContext
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetType Barotrauma.AttackTarget
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetLimbType Barotrauma.LimbType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HitDetectionType Barotrauma.HitDetection
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AfterAttack Barotrauma.AIBehaviorAfterAttack
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AfterAttackDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Reverse System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SnapRopeOnNewAttack System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Retreat System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Duration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CoolDown System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SecondaryCoolDown System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CoolDownRandomFactor System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FullSpeedAfterAttack System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StructureDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EmitStructureDamageParticles System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Penetration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RangeMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ImpactMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelWallDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Ranged System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvoidFriendlyFire System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequiredAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Stun System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OnlyHumans System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ApplyForceOnLimbs System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Force System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RootForceWorldStart Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RootForceWorldMiddle Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RootForceWorldEnd Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RootTransitionEasing Barotrauma.TransitionMode
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Torque System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ApplyForcesOnlyOnce System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetImpulse System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetImpulseWorld Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetForceWorld Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SubmarineImpactMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SeverLimbsProbability System.Single|number
---`Getter Public Instance`
---@field StickChance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Priority System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Blink System.Boolean|boolean
---`Getter Public Instance`
---@field StatusEffects System.Collections.Generic.IEnumerable*1Barotrauma*StatusEffect|(fun():Barotrauma.StatusEffect)
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Conditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SourceItem Barotrauma.Item
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AttackTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CoolDownTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentRandomCoolDown System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SecondaryCoolDownTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsRunning System.Boolean|boolean
_G['Attack'] = {}

---`Method Public Instance`
---@param user Barotrauma.Character
_G['Attack'].SetUser = function(user) end

---`Method Public Instance`
---@param multiplier System.Single|number
---@return System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
_G['Attack'].GetMultipliedAfflictions = function(multiplier) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@return System.Single|number
_G['Attack'].GetStructureDamage = function(deltaTime) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@return System.Single|number
_G['Attack'].GetLevelWallDamage = function(deltaTime) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@return System.Single|number
_G['Attack'].GetItemDamage = function(deltaTime) end

---`Method Public Instance`
---@param includeStructureDamage? System.Boolean|boolean
---@return System.Single|number
_G['Attack'].GetTotalDamage = function(includeStructureDamage) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@param parentDebugName System.String|string
_G['Attack'].ReloadAfflictions = function(element, parentDebugName) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Attack'].Serialize = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@param parentDebugName System.String|string
_G['Attack'].Deserialize = function(element, parentDebugName) end

---`Method Public Instance`
---@param attacker Barotrauma.Character
---@param target Barotrauma.IDamageable
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@param sourceBody? Barotrauma.PhysicsBody
---@param sourceLimb? Barotrauma.Limb
---@return Barotrauma.AttackResult
_G['Attack'].DoDamage = function(attacker, target, worldPosition, deltaTime, playSound, sourceBody, sourceLimb) end

---`Method Public Instance`
---@param attacker Barotrauma.Character
---@param targetLimb Barotrauma.Limb
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@param sourceBody? Barotrauma.PhysicsBody
---@param sourceLimb? Barotrauma.Limb
---@return Barotrauma.AttackResult
_G['Attack'].DoDamageToLimb = function(attacker, targetLimb, worldPosition, deltaTime, playSound, sourceBody, sourceLimb) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Attack'].UpdateCoolDown = function(deltaTime) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
_G['Attack'].UpdateAttackTimer = function(deltaTime, character) end

---`Method Public Instance`
_G['Attack'].ResetAttackTimer = function() end

---`Method Public Instance`
---@param applyRandom System.Boolean|boolean
_G['Attack'].SetCoolDown = function(applyRandom) end

---`Method Public Instance`
_G['Attack'].ResetCoolDown = function() end

---`Method Public Instance`
---@overload fun(context:Barotrauma.AttackContext):System.Boolean|boolean
---@param contexts System.Collections.Generic.IEnumerable*1Barotrauma*AttackContext|(fun():Barotrauma.AttackContext)
---@return System.Boolean|boolean
_G['Attack'].IsValidContext = function(contexts) end

---`Method Public Instance`
---@overload fun(targetType:Barotrauma.AttackTarget):System.Boolean|boolean
---@param target Barotrauma.Entity
---@return System.Boolean|boolean
_G['Attack'].IsValidTarget = function(target) end

---`Method Public Instance`
---@param easing? Barotrauma.TransitionMode
---@return Microsoft.Xna.Framework.Vector2
_G['Attack'].CalculateAttackPhase = function(easing) end

---`Constructor Public Instance`
---@overload fun(damage:System.Single|number, bleedingDamage:System.Single|number, burnDamage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, range?:System.Single|number):Barotrauma.Attack
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string, sourceItem:Barotrauma.Item):Barotrauma.Attack
---@param element Barotrauma.ContentXElement
---@param parentDebugName System.String|string
---@return Barotrauma.Attack
_G['Attack'] = function(element, parentDebugName) end

---`Constructor Public Instance`
---@overload fun(damage:System.Single|number, bleedingDamage:System.Single|number, burnDamage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, range?:System.Single|number):Barotrauma.Attack
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string, sourceItem:Barotrauma.Item):Barotrauma.Attack
---@param element Barotrauma.ContentXElement
---@param parentDebugName System.String|string
---@return Barotrauma.Attack
_G['Attack'].__new = function(element, parentDebugName) end

