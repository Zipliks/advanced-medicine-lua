---@meta
---@class Barotrauma.Ragdoll : System.Object
---`Field NonPublic Instance`
---@field inversedLimbDrawOrder Barotrauma.Limb-arr|Barotrauma.Limb[]
---`Field Private Instance`
---@field impactQueue System.Collections.Generic.Queue*1Barotrauma*Ragdoll*Impact|(fun():Barotrauma.Ragdoll.Impact)
---`Field NonPublic Instance`
---@field currentHull Barotrauma.Hull
---`Field Private Instance`
---@field accessRemovedCharacterErrorShown System.Boolean|boolean
---`Field Private Instance`
---@field limbs Barotrauma.Limb-arr|Barotrauma.Limb[]
---`Field Private Instance`
---@field frozen System.Boolean|boolean
---`Field Private Instance`
---@field limbDictionary System.Collections.Generic.Dictionary*1Barotrauma*LimbType*1Barotrauma*Limb|{[Barotrauma.LimbType]:Barotrauma.Limb}
---`Field Public Instance`
---@field LimbJoints Barotrauma.LimbJoint-arr|Barotrauma.LimbJoint[]
---`Field Private Instance`
---@field simplePhysicsEnabled System.Boolean|boolean
---`Field NonPublic Instance`
---@field character Barotrauma.Character
---`Field NonPublic Instance`
---@field strongestImpact System.Single|number
---`Field Private Instance`
---@field splashSoundTimer System.Single|number
---`Field Private Instance`
---@field flowForceTolerance System.Single|number
---`Field Private Instance`
---@field flowStunTolerance System.Single|number
---`Field Public Instance`
---@field movement Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field targetMovement Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field overrideTargetMovement Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field floorY System.Single|number
---`Field NonPublic Instance`
---@field standOnFloorY System.Single|number
---`Field NonPublic Instance`
---@field floorFixture FarseerPhysics.Dynamics.Fixture
---`Field NonPublic Instance`
---@field floorNormal Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field surfaceY System.Single|number
---`Field NonPublic Instance`
---@field inWater System.Boolean|boolean
---`Field NonPublic Instance`
---@field headInWater System.Boolean|boolean
---`Field NonPublic Instance`
---@field onGround System.Boolean|boolean
---`Field Private Instance`
---@field lastFloorCheckPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field lastFloorCheckIgnoreStairs System.Boolean|boolean
---`Field Private Instance`
---@field lastFloorCheckIgnorePlatforms System.Boolean|boolean
---`Field Public Instance`
---@field Stairs Barotrauma.Structure
---`Field NonPublic Instance`
---@field dir Barotrauma.Direction
---`Field Public Instance`
---@field TargetDir Barotrauma.Direction
---`Field NonPublic Instance`
---@field collider System.Collections.Generic.List*1Barotrauma*PhysicsBody|Barotrauma.PhysicsBody[]
---`Field NonPublic Instance`
---@field colliderIndex System.Int32|integer
---`Field Private Instance`
---@field prevCollisionCategory FarseerPhysics.Dynamics.Category
---`Field Private Instance`
---@field impactTolerance System.Nullable*1System*Single|number
---`Field Private Instance`
---@field connectedLimbs System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---`Field Private Instance`
---@field checkedJoints System.Collections.Generic.List*1Barotrauma*LimbJoint|Barotrauma.LimbJoint[]
---`Field NonPublic Instance`
---@field levitatingCollider System.Boolean|boolean
---`Field Private Instance`
---@field bodyInRestTimer System.Single|number
---`Field Private Instance`
---@field BodyInRestDelay System.Single|number
---`Field Public Instance`
---@field forceStanding System.Boolean|boolean
---`Field Public Instance`
---@field forceNotStanding System.Boolean|boolean
---`Field Private Instance`
---@field validityResets System.Int32|integer
---`Field Private Instance`
---@field collisionsDisabled System.Boolean|boolean
---`Field Private Static`
---@field list System.Collections.Generic.List*1Barotrauma*Ragdoll|Barotrauma.Ragdoll[]
---`Field Private Static`
---@field ImpactDamageMultiplayer System.Single|number
---`Field Private Static`
---@field MaxImpactDamage System.Single|number
---`Field Public Static`
---@field MAX_SPEED System.Single|number
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field SpriteDeformations System.Collections.Generic.HashSet*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter NonPublic Instance Abstract Virtual`
---@field RagdollParams Barotrauma.RagdollParams
---`Getter Public Instance`
---@field Limbs Barotrauma.Limb-arr|Barotrauma.Limb[]
---`Getter Public Instance`
---@field HasMultipleLimbsOfSameType System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Frozen System.Boolean|boolean
---`Getter Public Instance`
---@field Character Barotrauma.Character
---`Getter Public Instance`
---@field OnGround System.Boolean|boolean
---`Getter Public Instance`
---@field ColliderHeightFromFloor System.Single|number
---`Getter Public Instance`
---@field IsStuck System.Boolean|boolean
---`Getter Public Instance`
---@field Collider Barotrauma.PhysicsBody
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ColliderIndex System.Int32|integer
---`Getter Public Instance`
---@field FloorY System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Mass System.Single|number
---`Getter Public Instance`
---@field MainLimb Barotrauma.Limb
---`Getter Public Instance`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SimplePhysicsEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetMovement Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Abstract Virtual`
---@field HeadPosition System.Nullable*1System*Single|number
---`Getter Public Instance Abstract Virtual`
---@field HeadAngle System.Nullable*1System*Single|number
---`Getter Public Instance Abstract Virtual`
---@field TorsoPosition System.Nullable*1System*Single|number
---`Getter Public Instance Abstract Virtual`
---@field TorsoAngle System.Nullable*1System*Single|number
---`Getter Public Instance`
---@field ImpactTolerance System.Single|number
---`Getter Public Instance`
---@field Draggable System.Boolean|boolean
---`Getter Public Instance`
---@field CanEnterSubmarine System.Boolean|boolean
---`Getter Public Instance`
---@field Dir System.Single|number
---`Getter Public Instance`
---@field Direction Barotrauma.Direction
---`Getter Public Instance`
---@field InWater System.Boolean|boolean
---`Getter Public Instance`
---@field HeadInWater System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CurrentHull Barotrauma.Hull
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnorePlatforms System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsFlipped System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BodyInRest System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Invalid System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field IsHanging System.Boolean|boolean
_G['Ragdoll'] = {}

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Ragdoll'].UpdateHullFlowForces = function(deltaTime) end

---`Method Public Instance`
_G['Ragdoll'].ForceRefreshFloorY = function() end

---`Method Private Instance`
---@param refLimb? Barotrauma.Limb
---@param ignoreStairs? System.Boolean|boolean
_G['Ragdoll'].RefreshFloorY = function(refLimb, ignoreStairs) end

---`Method Private Instance`
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param ignoreStairs? System.Boolean|boolean
---@return System.Single|number
_G['Ragdoll'].GetFloorY = function(simPosition, ignoreStairs) end

---`Method Public Instance`
---@return System.Single|number
_G['Ragdoll'].GetSurfaceY = function() end

---`Method Public Instance`
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param lerp? System.Boolean|boolean
---@param ignorePlatforms? System.Boolean|boolean
---@param forceMainLimbToCollider? System.Boolean|boolean
---@param detachProjectiles? System.Boolean|boolean
_G['Ragdoll'].SetPosition = function(simPosition, lerp, ignorePlatforms, forceMainLimbToCollider, detachProjectiles) end

---`Method Public Instance`
_G['Ragdoll'].Hang = function() end

---`Method NonPublic Instance`
---@param limb Barotrauma.Limb
---@param original Microsoft.Xna.Framework.Vector2
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param rotation System.Single|number
---@param lerp? System.Boolean|boolean
---@param ignorePlatforms? System.Boolean|boolean
_G['Ragdoll'].TrySetLimbPosition = function(limb, original, simPosition, rotation, lerp, ignorePlatforms) end

---`Method NonPublic Instance`
_G['Ragdoll'].CheckDistFromCollider = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param lowestSubPos System.Single|number
_G['Ragdoll'].UpdateNetPlayerPositionProjSpecific = function(deltaTime, lowestSubPos) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Ragdoll'].UpdateNetPlayerPosition = function(deltaTime) end

---`Method Public Instance`
---@param limbType Barotrauma.LimbType
---@param excludeSevered? System.Boolean|boolean
---@return Barotrauma.Limb
_G['Ragdoll'].GetLimb = function(limbType, excludeSevered) end

---`Method Public Instance`
---@return System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['Ragdoll'].GetMouthPosition = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Ragdoll'].GetColliderBottom = function() end

---`Method Public Instance`
---@return Barotrauma.Limb
_G['Ragdoll'].FindLowestLimb = function() end

---`Method Public Instance`
_G['Ragdoll'].ReleaseStuckLimbs = function() end

---`Method Public Instance`
---@param limbType Barotrauma.LimbType
---@param duration? System.Single|number
---@param ignoreCollisions? System.Boolean|boolean
_G['Ragdoll'].HideAndDisable = function(limbType, duration, ignoreCollisions) end

---`Method Public Instance`
_G['Ragdoll'].RestoreTemporarilyDisabled = function() end

---`Method Public Instance`
_G['Ragdoll'].Remove = function() end

---`Method Public Static`
_G['Ragdoll'].RemoveAll = function() end

---`Method Public Instance`
---@param limb Barotrauma.Limb
_G['Ragdoll'].PlayImpactSound = function(limb) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
_G['Ragdoll'].Draw = function(spriteBatch, cam) end

---`Method Public Instance`
---@return System.Single|number
_G['Ragdoll'].GetDepthOffset = function() end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Ragdoll'].DebugDraw = function(spriteBatch) end

---`Method Public Instance`
---@param limb Barotrauma.Limb
_G['Ragdoll'].SubtractMass = function(limb) end

---`Method Public Instance Virtual`
---@param ragdollParams? Barotrauma.RagdollParams
_G['Ragdoll'].Recreate = function(ragdollParams) end

---`Method NonPublic Instance`
_G['Ragdoll'].CreateColliders = function() end

---`Method NonPublic Instance`
_G['Ragdoll'].CreateJoints = function() end

---`Method Private Instance`
_G['Ragdoll'].SetInitialLimbPositions = function() end

---`Method NonPublic Instance`
_G['Ragdoll'].CreateLimbs = function() end

---`Method Private Instance`
_G['Ragdoll'].SetupDrawOrder = function() end

---`Method Public Instance`
---@param fileNameWithoutExtension? System.String|string
_G['Ragdoll'].SaveRagdoll = function(fileNameWithoutExtension) end

---`Method Public Instance`
---@param forceReload? System.Boolean|boolean
_G['Ragdoll'].ResetRagdoll = function(forceReload) end

---`Method Public Instance`
_G['Ragdoll'].ResetJoints = function() end

---`Method Public Instance`
_G['Ragdoll'].ResetLimbs = function() end

---`Method Public Instance`
---@param jointParams Barotrauma.RagdollParams.JointParams
_G['Ragdoll'].AddJoint = function(jointParams) end

---`Method NonPublic Instance`
---@param limbParams Barotrauma.RagdollParams.LimbParams
_G['Ragdoll'].AddLimb = function(limbParams) end

---`Method Public Instance`
---@param limb Barotrauma.Limb
_G['Ragdoll'].AddLimb = function(limb) end

---`Method Public Instance`
---@param limb Barotrauma.Limb
_G['Ragdoll'].RemoveLimb = function(limb) end

---`Method Public Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Ragdoll'].OnLimbCollision = function(f1, f2, contact) end

---`Method Private Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param localNormal Microsoft.Xna.Framework.Vector2
---@param impactPos Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
_G['Ragdoll'].ApplyImpact = function(f1, f2, localNormal, impactPos, velocity) end

---`Method Public Instance`
---@param limbJoint Barotrauma.LimbJoint
---@return System.Boolean|boolean
_G['Ragdoll'].SeverLimbJoint = function(limbJoint) end

---`Method Private Instance`
---@param limbJoint Barotrauma.LimbJoint
---@param playSound System.Boolean|boolean
_G['Ragdoll'].SeverLimbJointProjSpecific = function(limbJoint, playSound) end

---`Method NonPublic Instance`
---@param limb Barotrauma.Limb
---@return System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
_G['Ragdoll'].GetConnectedLimbs = function(limb) end

---`Method Private Instance`
---@param connectedLimbs System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---@param checkedJoints System.Collections.Generic.List*1Barotrauma*LimbJoint|Barotrauma.LimbJoint[]
---@param limb Barotrauma.Limb
_G['Ragdoll'].GetConnectedLimbs = function(connectedLimbs, checkedJoints, limb) end

---`Method Private Instance`
---@param impact System.Single|number
---@param body FarseerPhysics.Dynamics.Body
_G['Ragdoll'].ImpactProjSpecific = function(impact, body) end

---`Method Public Instance Virtual`
_G['Ragdoll'].Flip = function() end

---`Method Private Instance`
_G['Ragdoll'].FlipProjSpecific = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Ragdoll'].GetCenterOfMass = function() end

---`Method Public Instance`
---@param limb Barotrauma.Limb
---@param pos Microsoft.Xna.Framework.Vector2
---@param amount System.Single|number
---@param pullFromCenter? System.Boolean|boolean
_G['Ragdoll'].MoveLimb = function(limb, pos, amount, pullFromCenter) end

---`Method Public Instance`
---@param condition? System.Func*1Barotrauma*Limb*1System*Boolean|(fun(arg:Barotrauma.Limb):System.Boolean|boolean)
_G['Ragdoll'].ResetPullJoints = function(condition) end

---`Method Public Static`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Ragdoll'].UpdateAll = function(deltaTime, cam) end

---`Method Public Instance`
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param setSubmarine? System.Boolean|boolean
_G['Ragdoll'].FindHull = function(worldPosition, setSubmarine) end

---`Method Private Instance`
_G['Ragdoll'].PreventOutsideCollision = function() end

---`Method Public Instance`
---@param moveAmount Microsoft.Xna.Framework.Vector2
---@param velocityChange Microsoft.Xna.Framework.Vector2
---@param detachProjectiles? System.Boolean|boolean
_G['Ragdoll'].Teleport = function(moveAmount, velocityChange, detachProjectiles) end

---`Method Private Instance`
_G['Ragdoll'].UpdateCollisionCategories = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Ragdoll'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Ragdoll'].CheckBodyInRest = function(deltaTime) end

---`Method Private Instance`
---@overload fun():System.Boolean|boolean
---@param body Barotrauma.PhysicsBody
---@return System.Boolean|boolean
_G['Ragdoll'].CheckValidity = function(body) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Ragdoll'].UpdateProjSpecific = function(deltaTime, cam) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param limbHull Barotrauma.Hull
_G['Ragdoll'].Splash = function(limb, limbHull) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Ragdoll
_G['Ragdoll'] = function(character, seed, ragdollParams) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Ragdoll
_G['Ragdoll'].__new = function(character, seed, ragdollParams) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Ragdoll
_G['Ragdoll'] = function(character, seed, ragdollParams) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Ragdoll
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.Ragdoll
_G['Ragdoll'].__new = function(character, seed, ragdollParams) end

