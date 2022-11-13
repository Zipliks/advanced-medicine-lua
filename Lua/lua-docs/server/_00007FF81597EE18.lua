---@meta
---@class Barotrauma.HumanoidAnimController : Barotrauma.AnimController
---`Field Private Instance`
---@field _ragdollParams Barotrauma.HumanRagdollParams
---`Field Private Instance`
---@field _humanWalkParams Barotrauma.HumanWalkParams
---`Field Private Instance`
---@field _humanRunParams Barotrauma.HumanRunParams
---`Field Private Instance`
---@field _humanCrouchParams Barotrauma.HumanCrouchParams
---`Field Private Instance`
---@field _humanSwimSlowParams Barotrauma.HumanSwimSlowParams
---`Field Private Instance`
---@field _humanSwimFastParams Barotrauma.HumanSwimFastParams
---`Field Public Instance`
---@field Crouching System.Boolean|boolean
---`Field Private Instance`
---@field upperLegLength System.Single|number
---`Field Private Instance`
---@field lowerLegLength System.Single|number
---`Field Private Instance`
---@field movementLerp System.Single|number
---`Field Private Instance`
---@field cprAnimTimer System.Single|number
---`Field Private Instance`
---@field cprPump System.Single|number
---`Field Private Instance`
---@field swimming System.Boolean|boolean
---`Field Private Instance`
---@field swimmingStateLockTimer System.Single|number
---`Field Private Instance`
---@field handCyclePos System.Single|number
---`Field Private Instance`
---@field legCyclePos System.Single|number
---`Field Private Instance`
---@field prevFootPos System.Single|number
---`Field Private Instance`
---@field lastReviveTime System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance Virtual`
---@field RagdollParams Barotrauma.RagdollParams
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field HumanRagdollParams Barotrauma.HumanRagdollParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanWalkParams Barotrauma.HumanWalkParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanRunParams Barotrauma.HumanRunParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanCrouchParams Barotrauma.HumanCrouchParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanSwimSlowParams Barotrauma.HumanSwimSlowParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HumanSwimFastParams Barotrauma.HumanSwimFastParams
---`Getter Public Instance`
---@field CurrentGroundedParams Barotrauma.HumanGroundedParams
---`Getter Public Instance`
---@field CurrentSwimParams Barotrauma.HumanSwimParams
---`Getter Public Instance`
---@field CurrentHumanAnimParams Barotrauma.IHumanAnimation
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field WalkParams Barotrauma.GroundedMovementParams
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field RunParams Barotrauma.GroundedMovementParams
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field SwimSlowParams Barotrauma.SwimParams
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field SwimFastParams Barotrauma.SwimParams
---`Getter Public Instance`
---@field HeadLeanAmount System.Single|number
---`Getter Public Instance`
---@field TorsoLeanAmount System.Single|number
---`Getter Public Instance`
---@field FootMoveOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field LegBendTorque System.Single|number
---`Getter Public Instance`
---@field HandMoveOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field AimSourceSimPos Microsoft.Xna.Framework.Vector2
_G['HumanoidAnimController'] = {}

---`Method Public Instance Virtual`
---@param ragdollParams? Barotrauma.RagdollParams
_G['HumanoidAnimController'].Recreate = function(ragdollParams) end

---`Method Private Instance`
_G['HumanoidAnimController'].CalculateLegLengths = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['HumanoidAnimController'].UpdateAnim = function(deltaTime) end

---`Method Private Instance`
_G['HumanoidAnimController'].UpdateStanding = function() end

---`Method Private Instance`
_G['HumanoidAnimController'].UpdateStandingSimple = function() end

---`Method Private Instance`
_G['HumanoidAnimController'].UpdateSwimming = function() end

---`Method Private Instance`
_G['HumanoidAnimController'].UpdateClimbing = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['HumanoidAnimController'].UpdateDying = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['HumanoidAnimController'].UpdateCPR = function(deltaTime) end

---`Method Public Instance Virtual`
---@param target Barotrauma.Character
---@param deltaTime System.Single|number
_G['HumanoidAnimController'].DragCharacter = function(target, deltaTime) end

---`Method Private Instance`
---@param head Barotrauma.Limb
_G['HumanoidAnimController'].RotateHead = function(head) end

---`Method Private Instance`
---@param foot Barotrauma.Limb
---@param pos Microsoft.Xna.Framework.Vector2
---@param legTorque System.Single|number
---@param footTorque System.Single|number
---@param footAngle System.Single|number
_G['HumanoidAnimController'].FootIK = function(foot, pos, legTorque, footTorque, footAngle) end

---`Method Public Instance Virtual`
_G['HumanoidAnimController'].Flip = function() end

---`Method Public Instance Virtual`
---@param type Barotrauma.AnimationType
---@return System.Single|number
_G['HumanoidAnimController'].GetSpeed = function(type) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.HumanRagdollParams
---@return Barotrauma.HumanoidAnimController
_G['HumanoidAnimController'] = function(character, seed, ragdollParams) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.HumanRagdollParams
---@return Barotrauma.HumanoidAnimController
_G['HumanoidAnimController'].__new = function(character, seed, ragdollParams) end

