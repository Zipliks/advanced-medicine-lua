---@meta
---@class Barotrauma.FishAnimController : Barotrauma.AnimController
---`Field Private Instance`
---@field _ragdollParams Barotrauma.FishRagdollParams
---`Field Private Instance`
---@field _fishWalkParams Barotrauma.FishWalkParams
---`Field Private Instance`
---@field _fishRunParams Barotrauma.FishRunParams
---`Field Private Instance`
---@field _fishSwimSlowParams Barotrauma.FishSwimSlowParams
---`Field Private Instance`
---@field _fishSwimFastParams Barotrauma.FishSwimFastParams
---`Field Private Instance`
---@field flipTimer System.Single|number
---`Field Private Instance`
---@field flipCooldown System.Single|number
---`Field Private Instance`
---@field eatTimer System.Single|number
---`Field Public Instance`
---@field reverse System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance Virtual`
---@field RagdollParams Barotrauma.RagdollParams
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field FishRagdollParams Barotrauma.FishRagdollParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FishWalkParams Barotrauma.FishWalkParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FishRunParams Barotrauma.FishRunParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FishSwimSlowParams Barotrauma.FishSwimSlowParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FishSwimFastParams Barotrauma.FishSwimFastParams
---`Getter Public Instance`
---@field CurrentFishAnimation Barotrauma.IFishAnimation
---`Getter Public Instance`
---@field CurrentGroundedParams Barotrauma.FishGroundedParams
---`Getter Public Instance`
---@field CurrentSwimParams Barotrauma.FishSwimParams
---`Getter Public Instance`
---@field TailAngle System.Nullable*1System*Single|number
---`Getter Public Instance`
---@field FootTorque System.Single|number
---`Getter Public Instance`
---@field HeadTorque System.Single|number
---`Getter Public Instance`
---@field TorsoTorque System.Single|number
---`Getter Public Instance`
---@field TailTorque System.Single|number
---`Getter Public Instance`
---@field HeadMoveForce System.Single|number
---`Getter Public Instance`
---@field TorsoMoveForce System.Single|number
---`Getter Public Instance`
---@field FootMoveForce System.Single|number
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
_G['FishAnimController'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['FishAnimController'].UpdateAnim = function(deltaTime) end

---`Method Private Instance`
---@param target Barotrauma.Character
---@return System.Boolean|boolean
_G['FishAnimController'].CanDrag = function(target) end

---`Method Public Instance Virtual`
---@param target Barotrauma.Character
---@param deltaTime System.Single|number
_G['FishAnimController'].DragCharacter = function(target, deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FishAnimController'].UpdateSineAnim = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FishAnimController'].UpdateWalkAnim = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FishAnimController'].UpdateDying = function(deltaTime) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param angle System.Single|number
---@param referenceLimb Barotrauma.Limb
---@param torque System.Single|number
_G['FishAnimController'].SmoothRotateWithoutWrapping = function(limb, angle, referenceLimb, torque) end

---`Method Public Instance Virtual`
_G['FishAnimController'].Flip = function() end

---`Method Public Instance`
---@param lerp? System.Boolean|boolean
_G['FishAnimController'].Mirror = function(lerp) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.FishRagdollParams
---@return Barotrauma.FishAnimController
_G['FishAnimController'] = function(character, seed, ragdollParams) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param seed System.String|string
---@param ragdollParams? Barotrauma.FishRagdollParams
---@return Barotrauma.FishAnimController
_G['FishAnimController'].__new = function(character, seed, ragdollParams) end

