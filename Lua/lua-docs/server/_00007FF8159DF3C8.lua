---@meta
---@class Barotrauma.Networking.RespawnManager : Barotrauma.Entity
---`Field Private Instance`
---@field despawnTime System.DateTime
---`Field Private Instance`
---@field shuttleEmptyTimer System.Single|number
---`Field Private Instance`
---@field pendingRespawnCount System.Int32|integer
---`Field Private Instance`
---@field requiredRespawnCount System.Int32|integer
---`Field Private Instance`
---@field prevPendingRespawnCount System.Int32|integer
---`Field Private Instance`
---@field prevRequiredRespawnCount System.Int32|integer
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

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Networking*Client|(fun():Barotrauma.Networking.Client)
_G['RespawnManager'].GetClientsToRespawn = function() end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['RespawnManager'].IsRespawnPromptPendingForClient = function(c) end

---`Method Private Instance`
---@return System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
_G['RespawnManager'].GetBotsToRespawn = function() end

---`Method Private Instance`
---@overload fun():System.Boolean|boolean
---@param characterToRespawnCount System.Int32|integer
---@return System.Boolean|boolean
_G['RespawnManager'].ShouldStartRespawnCountdown = function(characterToRespawnCount) end

---`Method Private Instance`
---@return System.Int32|integer
_G['RespawnManager'].GetMinCharactersToRespawn = function() end

---`Method Public Instance`
_G['RespawnManager'].DispatchShuttle = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@return System.Boolean|boolean
_G['RespawnManager'].CheckShuttleEmpty = function(deltaTime) end

---`Method Public Static`
---@param characterInfo Barotrauma.CharacterInfo
_G['RespawnManager'].ReduceCharacterSkills = function(characterInfo) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['RespawnManager'].ServerEventWrite = function(msg, c, extraData) end

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
_G['RespawnManager'].UpdateWaiting = function(deltaTime) end

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
---@param deltaTime System.Single|number
_G['RespawnManager'].UpdateReturningProjSpecific = function(deltaTime) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param speed System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['RespawnManager'].ForceShuttleToPos = function(position, speed) end

---`Method Private Instance`
_G['RespawnManager'].ResetShuttle = function() end

---`Method Private Instance`
---@param shuttlePos System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['RespawnManager'].RespawnCharactersProjSpecific = function(shuttlePos) end

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

