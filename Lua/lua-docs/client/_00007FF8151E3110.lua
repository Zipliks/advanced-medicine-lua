---@meta
---@class Barotrauma.AnimController : Barotrauma.Ragdoll
---`Field NonPublic Instance`
---@field rightShoulder Barotrauma.LimbJoint
---`Field NonPublic Instance`
---@field leftShoulder Barotrauma.LimbJoint
---`Field NonPublic Instance`
---@field upperArmLength System.Single|number
---`Field NonPublic Instance`
---@field forearmLength System.Single|number
---`Field NonPublic Instance`
---@field useItemTimer System.Single|number
---`Field NonPublic Instance`
---@field aiming System.Boolean|boolean
---`Field NonPublic Instance`
---@field wasAiming System.Boolean|boolean
---`Field NonPublic Instance`
---@field aimingMelee System.Boolean|boolean
---`Field NonPublic Instance`
---@field wasAimingMelee System.Boolean|boolean
---`Field NonPublic Instance`
---@field deathAnimTimer System.Single|number
---`Field NonPublic Instance`
---@field deathAnimDuration System.Single|number
---`Field Public Instance`
---@field Anim Barotrauma.AnimController.Animation
---`Field Public Instance`
---@field LockFlippingUntil System.Single|number
---`Field Private Instance`
---@field previousDirection Barotrauma.Direction
---`Field Private Instance`
---@field transformedHandlePos Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field RightHandIKPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field LeftHandIKPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field IsAiming System.Boolean|boolean
---`Getter Public Instance`
---@field IsAimingMelee System.Boolean|boolean
---`Getter NonPublic Instance`
---@field Aiming System.Boolean|boolean
---`Getter Public Instance`
---@field ArmLength System.Single|number
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field WalkParams Barotrauma.GroundedMovementParams
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field RunParams Barotrauma.GroundedMovementParams
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field SwimSlowParams Barotrauma.SwimParams
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field SwimFastParams Barotrauma.SwimParams
---`Getter Public Instance`
---@field CurrentAnimationParams Barotrauma.AnimationParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceSelectAnimationType Barotrauma.AnimationType
---`Getter Public Instance`
---@field CurrentGroundedParams Barotrauma.GroundedMovementParams
---`Getter Public Instance`
---@field CurrentSwimParams Barotrauma.SwimParams
---`Getter Public Instance`
---@field CanWalk System.Boolean|boolean
---`Getter Public Instance`
---@field IsMovingBackwards System.Boolean|boolean
---`Getter Public Instance`
---@field IsMovingFast System.Boolean|boolean
---`Getter Public Instance`
---@field AllAnimParams System.Collections.Generic.List*1Barotrauma*AnimationParams|Barotrauma.AnimationParams[]
---`Getter Public Instance`
---@field IsUsingItem System.Boolean|boolean
---`Getter Public Instance`
---@field IsClimbing System.Boolean|boolean
---`Getter Public Instance`
---@field AimSourceWorldPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field AimSourcePos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field AimSourceSimPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field HeadPosition System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---@field TorsoPosition System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---@field HeadAngle System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---@field TorsoAngle System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---@field StepSize System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AnimationTestPose System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field WalkPos System.Single|number
---`Getter Public Instance`
---@field IsAboveFloor System.Boolean|boolean
_G['AnimController'] = {}

---`Method NonPublic Instance`
---@overload fun(p:Barotrauma.AnimationParams, v:System.Nullable*1System*Single|number):System.Nullable*1System*Single|number
---@param p Barotrauma.AnimationParams
---@param v Microsoft.Xna.Framework.Vector2
---@return System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['AnimController'].GetValidOrNull = function(p, v) end

---`Method Public Instance Abstract Virtual`
---@param deltaTime System.Single|number
_G['AnimController'].UpdateAnim = function(deltaTime) end

---`Method Public Instance Abstract Virtual`
---@param target Barotrauma.Character
---@param deltaTime System.Single|number
_G['AnimController'].DragCharacter = function(target, deltaTime) end

---`Method Public Instance Virtual`
---@param type Barotrauma.AnimationType
---@return System.Single|number
_G['AnimController'].GetSpeed = function(type) end

---`Method Public Instance`
---@param useMaxSpeed System.Boolean|boolean
---@return System.Single|number
_G['AnimController'].GetCurrentSpeed = function(useMaxSpeed) end

---`Method Public Instance`
---@param type Barotrauma.AnimationType
---@return Barotrauma.AnimationParams
_G['AnimController'].GetAnimationParamsFromType = function(type) end

---`Method Public Instance`
---@return System.Single|number
_G['AnimController'].GetHeightFromFloor = function() end

---`Method Public Instance`
---@param allowMovement System.Boolean|boolean
---@param handWorldPos Microsoft.Xna.Framework.Vector2
_G['AnimController'].UpdateUseItem = function(allowMovement, handWorldPos) end

---`Method Public Instance`
---@param rightHandPos Microsoft.Xna.Framework.Vector2
---@param leftHandPos Microsoft.Xna.Framework.Vector2
_G['AnimController'].Grab = function(rightHandPos, leftHandPos) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param item Barotrauma.Item
---@param handlePos Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param holdPos Microsoft.Xna.Framework.Vector2
---@param aimPos Microsoft.Xna.Framework.Vector2
---@param aim System.Boolean|boolean
---@param holdAngle System.Single|number
---@param itemAngleRelativeToHoldAngle? System.Single|number
---@param aimMelee? System.Boolean|boolean
_G['AnimController'].HoldItem = function(deltaTime, item, handlePos, holdPos, aimPos, aim, holdAngle, itemAngleRelativeToHoldAngle, aimMelee) end

---`Method Private Instance`
---@param rightHand Barotrauma.Limb
---@param leftHand Barotrauma.Limb
---@param heldItem Barotrauma.Item
---@return System.Single|number
_G['AnimController'].GetAimWobble = function(rightHand, leftHand, heldItem) end

---`Method Public Instance`
---@param hand Barotrauma.Limb
---@param pos Microsoft.Xna.Framework.Vector2
---@param armTorque? System.Single|number
---@param handTorque? System.Single|number
---@param maxAngularVelocity? System.Single|number
_G['AnimController'].HandIK = function(hand, pos, armTorque, handTorque, maxAngularVelocity) end

---`Method Public Instance`
---@param leftHandPos Microsoft.Xna.Framework.Vector2
---@param rightHandPos Microsoft.Xna.Framework.Vector2
---@param leftFootPos Microsoft.Xna.Framework.Vector2
---@param rightFootPos Microsoft.Xna.Framework.Vector2
---@param footMoveForce? System.Single|number
_G['AnimController'].ApplyPose = function(leftHandPos, rightHandPos, leftFootPos, rightFootPos, footMoveForce) end

---`Method Public Instance`
_G['AnimController'].ApplyTestPose = function() end

---`Method NonPublic Instance`
_G['AnimController'].CalculateArmLengths = function() end

---`Method NonPublic Instance`
---@param limbTypeA Barotrauma.LimbType
---@param limbTypeB Barotrauma.LimbType
---@return Barotrauma.LimbJoint
_G['AnimController'].GetJointBetweenLimbs = function(limbTypeA, limbTypeB) end

---`Method NonPublic Instance`
---@param matchingType Barotrauma.LimbType
---@param ignoredTypes System.Collections.Generic.IEnumerable*1Barotrauma*LimbType|(fun():Barotrauma.LimbType)
---@return Barotrauma.LimbJoint
_G['AnimController'].GetJoint = function(matchingType, ignoredTypes) end

---`Method Public Instance Virtual`
---@param ragdollParams? Barotrauma.RagdollParams
_G['AnimController'].Recreate = function(ragdollParams) end

---`Method Private Instance`
---@param animation Barotrauma.AnimController.Animation
_G['AnimController'].StartAnimation = function(animation) end

---`Method Private Instance`
---@param animation Barotrauma.AnimController.Animation
_G['AnimController'].StopAnimation = function(animation) end

---`Method Public Instance`
_G['AnimController'].StartUsingItem = function() end

---`Method Public Instance`
_G['AnimController'].StartClimbing = function() end

---`Method Public Instance`
_G['AnimController'].StopUsingItem = function() end

---`Method Public Instance`
_G['AnimController'].StopClimbing = function() end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.AnimController
_G['AnimController'] = function(character, seed, ragdollParams) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.RagdollParams
---@return Barotrauma.AnimController
_G['AnimController'].__new = function(character, seed, ragdollParams) end

