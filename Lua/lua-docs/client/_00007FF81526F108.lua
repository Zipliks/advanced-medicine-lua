---@meta
---@class Barotrauma.Networking.RespawnManager : Barotrauma.Entity
---`Field Private Instance`
---@field lastShuttleLeavingWarningTime System.DateTime
---`Field Private Instance`
---@field respawnPromptCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field networkMember Barotrauma.Networking.NetworkMember
---`Field Private Instance`
---@field shuttleSteering Barotrauma.Items.Components.Steering
---`Field Private Instance`
---@field shuttleDoors System.Collections.Generic.List*1Barotrauma*Items*Components*Door|Barotrauma.Items.Components.Door[]
---`Field Private Instance`
---@field respawnContainer Barotrauma.Items.Components.ItemContainer
---`Field Private Instance`
---@field respawnItems System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Field Private Instance`
---@field respawnedCharacters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field maxTransportTime System.Single|number
---`Field Private Instance`
---@field updateReturnTimer System.Single|number
---`Field Private Static`
---@field SkillReductionOnDeath System.Single|number
---`Field Private Static`
---@field RespawnContainerTag System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PendingRespawnCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RequiredRespawnCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ForceSpawnInMainSub System.Boolean|boolean
---`Getter Public Instance`
---@field UsingShuttle System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RespawnTime System.DateTime
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ReturnTime System.DateTime
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RespawnCountdownStarted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ReturnCountdownStarted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentState Barotrauma.Networking.RespawnManager.State
---`Getter Public Instance`
---@field UseRespawnPrompt System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RespawnShuttle Barotrauma.Submarine
_G['RespawnManager'] = {}

---`Method Public Instance`
---@param delay? System.Single|number
_G['RespawnManager'].ShowRespawnPromptIfNeeded = function(delay) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['RespawnManager'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['RespawnManager'].OnShuttleCollision = function(sender, other, contact) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['RespawnManager'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['RespawnManager'].UpdateTransporting = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['RespawnManager'].UpdateTransportingProjSpecific = function(deltaTime) end

---`Method Public Instance`
_G['RespawnManager'].ForceRespawn = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['RespawnManager'].UpdateReturning = function(deltaTime) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param speed System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['RespawnManager'].ForceShuttleToPos = function(position, speed) end

---`Method Private Instance`
_G['RespawnManager'].ResetShuttle = function() end

---`Method Public Instance`
---@param shuttlePos System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['RespawnManager'].RespawnCharacters = function(shuttlePos) end

---`Method Public Static`
---@return Barotrauma.AfflictionPrefab
_G['RespawnManager'].GetRespawnPenaltyAfflictionPrefab = function() end

---`Method Public Static`
---@return Barotrauma.Affliction
_G['RespawnManager'].GetRespawnPenaltyAffliction = function() end

---`Method Public Static`
---@param character Barotrauma.Character
_G['RespawnManager'].GiveRespawnPenaltyAffliction = function(character) end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['RespawnManager'].FindSpawnPos = function() end

---`Constructor Public Instance`
---@param networkMember Barotrauma.Networking.NetworkMember
---@param shuttleInfo Barotrauma.SubmarineInfo
---@return Barotrauma.Networking.RespawnManager
_G['RespawnManager'] = function(networkMember, shuttleInfo) end

---`Constructor Public Instance`
---@param networkMember Barotrauma.Networking.NetworkMember
---@param shuttleInfo Barotrauma.SubmarineInfo
---@return Barotrauma.Networking.RespawnManager
_G['RespawnManager'].__new = function(networkMember, shuttleInfo) end

