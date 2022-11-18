---@meta
---@class Barotrauma.Limb : System.Object
---`Field Public Instance`
---@field LastAttackSoundTime System.Single|number
---`Field Public Instance`
---@field LastImpactSoundTime System.Single|number
---`Field Private Instance`
---@field wetTimer System.Single|number
---`Field Private Instance`
---@field dripParticleTimer System.Single|number
---`Field Private Instance`
---@field deadTimer System.Single|number
---`Field Private Instance`
---@field randomColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Private Instance`
---@field tintEffectParams Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams
---`Field Private Instance`
---@field huskSpriteParams Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams
---`Field NonPublic Instance`
---@field _deformSprite Barotrauma.DeformableSprite
---`Field Private Instance`
---@field spriteAnimState System.Collections.Generic.Dictionary*1Barotrauma*DecorativeSprite*1Barotrauma*Limb*SpriteState|{[Barotrauma.DecorativeSprite]:Barotrauma.Limb.SpriteState}
---`Field Private Instance`
---@field DecorativeSpriteGroups System.Collections.Generic.Dictionary*1System*Int32*1System*Collections*Generic*List*2Barotrauma*DecorativeSprite|{[System.Int32|integer]:System.Collections.Generic.List*1Barotrauma*DecorativeSprite|Barotrauma.DecorativeSprite[]}
---`Field Private Instance`
---@field damageOverlayStrength System.Single|number
---`Field Private Instance`
---@field burnOverLayStrength System.Single|number
---`Field Private Instance`
---@field wearableTypeHidingSprites System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Field Private Instance`
---@field wearableTypesToHide System.Collections.Generic.HashSet*1Barotrauma*WearableType|Barotrauma.WearableType[]
---`Field Private Instance`
---@field enableHuskSprite System.Boolean|boolean
---`Field Private Instance`
---@field _texturePath System.String|string
---`Field Private Instance`
---@field _damagedTexturePath System.String|string
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
---`Field Public Static`
---@field SoundInterval System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Deformations System.Collections.Generic.List*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field NonConditionalDeformations System.Collections.Generic.List*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ConditionalDeformations System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*ConditionalSprite*2System*Collections*Generic*IEnumerable*3Barotrauma*SpriteDeformations*SpriteDeformation|System.ValueTuple*1Barotrauma*ConditionalSprite*1System*Collections*Generic*IEnumerable*2Barotrauma*SpriteDeformations*SpriteDeformation[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ActiveDeformations System.Collections.Generic.List*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field TintMask Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field HuskMask Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field TintHighlightThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field TintHighlightMultiplier System.Single|number
---`Getter Public Instance`
---@field DeformSprite Barotrauma.DeformableSprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DecorativeSprites System.Collections.Generic.List*1Barotrauma*DecorativeSprite|Barotrauma.DecorativeSprite[]
---`Getter Public Instance`
---@field ActiveSprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DefaultSpriteDepth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HairWithHatSprite Barotrauma.WearableSprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HuskSprite Barotrauma.WearableSprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HerpesSprite Barotrauma.WearableSprite
---`Getter Public Instance`
---@field TextureScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedSprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hide System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ConditionalSprites System.Collections.Generic.List*1Barotrauma*ConditionalSprite|Barotrauma.ConditionalSprite[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InitialLightSourceColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InitialLightSpriteAlpha System.Nullable*1System*Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LightSource Barotrauma.Lights.LightSource
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageOverlayStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BurnOverlayStrength System.Single|number
---`Getter Public Instance`
---@field HitSoundTag System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableHuskSprite System.Boolean|boolean
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

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Limb'].InitProjSpecific = function(element) end

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

---`Method Private Instance`
---@param playSound System.Boolean|boolean
---@param result Barotrauma.AttackResult
_G['Limb'].AddDamageProjSpecific = function(playSound, result) end

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

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Limb'].UpdateProjSpecific = function(deltaTime) end

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

---`Method Private Instance`
_G['Limb'].RemoveProjSpecific = function() end

---`Method Public Instance`
_G['Limb'].LoadParams = function() end

---`Method Private Instance`
_G['Limb'].LoadParamsProjSpecific = function() end

---`Method Public Instance`
---@param excludeConditionalSprites? System.Boolean|boolean
---@return Barotrauma.Sprite
_G['Limb'].GetActiveSprite = function(excludeConditionalSprites) end

---`Method Public Instance`
_G['Limb'].LoadHuskSprite = function() end

---`Method Public Instance`
_G['Limb'].LoadHerpesSprite = function() end

---`Method Private Instance`
_G['Limb'].RefreshDeformations = function() end

---`Method Public Instance`
_G['Limb'].RecreateSprites = function() end

---`Method Private Instance`
---@param sprite Barotrauma.Sprite
_G['Limb'].CalculateHeadPosition = function(sprite) end

---`Method Private Instance`
---@overload fun(element:Barotrauma.ContentXElement, spriteParams:Barotrauma.RagdollParams.SpriteParams, path:System.String-ref):System.String|string
---@param texturePath Barotrauma.ContentPath
---@return System.String|string
_G['Limb'].GetSpritePath = function(texturePath) end

---`Method Public Static`
---@param texturePath Barotrauma.ContentPath
---@param characterInfo Barotrauma.CharacterInfo
---@return System.String|string
_G['Limb'].GetSpritePath = function(texturePath, characterInfo) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param overrideColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param disableDeformations? System.Boolean|boolean
_G['Limb'].Draw = function(spriteBatch, cam, overrideColor, disableDeformations) end

---`Method Public Instance`
_G['Limb'].UpdateWearableTypesToHide = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Limb'].UpdateSpriteStates = function(deltaTime) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param startPos Microsoft.Xna.Framework.Vector2
---@param isScreenSpace System.Boolean|boolean
_G['Limb'].DrawDamageModifiers = function(spriteBatch, cam, startPos, isScreenSpace) end

---`Method Private Instance`
---@param wearable Barotrauma.WearableSprite
---@param depthStep System.Single|number
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param color Microsoft.Xna.Framework.Color
---@param alpha System.Single|number
---@param spriteEffect Microsoft.Xna.Framework.Graphics.SpriteEffects
_G['Limb'].DrawWearable = function(wearable, depthStep, spriteBatch, color, alpha, spriteEffect) end

---`Method Private Instance`
---@param type Barotrauma.WearableType
---@return Barotrauma.WearableSprite
_G['Limb'].GetWearableSprite = function(type) end

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

