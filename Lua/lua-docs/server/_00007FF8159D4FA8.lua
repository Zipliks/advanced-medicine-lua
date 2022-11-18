---@meta
---@class Barotrauma.Networking.NetConfig : System.Object
---`Field Public Static`
---@field DefaultPort System.Int32|integer
---`Field Public Static`
---@field DefaultQueryPort System.Int32|integer
---`Field Public Static`
---@field MaxPlayers System.Int32|integer
---`Field Public Static`
---@field ServerNameMaxLength System.Int32|integer
---`Field Public Static`
---@field ServerMessageMaxLength System.Int32|integer
---`Field Public Static`
---@field MaxPhysicsBodyVelocity System.Single|number
---`Field Public Static`
---@field MaxPhysicsBodyAngularVelocity System.Single|number
---`Field Public Static`
---@field MaxHealthUpdateInterval System.Single|number
---`Field Public Static`
---@field MaxHealthUpdateIntervalDead System.Single|number
---`Field Public Static`
---@field HighPrioCharacterPositionUpdateDistance System.Single|number
---`Field Public Static`
---@field LowPrioCharacterPositionUpdateDistance System.Single|number
---`Field Public Static`
---@field HighPrioCharacterPositionUpdateInterval System.Single|number
---`Field Public Static`
---@field LowPrioCharacterPositionUpdateInterval System.Single|number
---`Field Public Static`
---@field FreezeCharacterIfPositionDataMissingDelay System.Single|number
---`Field Public Static`
---@field DisableCharacterIfPositionDataMissingDelay System.Single|number
---`Field Public Static`
---@field DeleteDisconnectedTime System.Single|number
---`Field Public Static`
---@field ItemConditionUpdateInterval System.Single|number
---`Field Public Static`
---@field LevelObjectUpdateInterval System.Single|number
---`Field Public Static`
---@field HullUpdateInterval System.Single|number
---`Field Public Static`
---@field SparseHullUpdateInterval System.Single|number
---`Field Public Static`
---@field HullUpdateDistance System.Single|number
---`Field Public Static`
---@field MaxEventPacketsPerUpdate System.Int32|integer
---`Field Public Static`
---@field RoundStartSyncDuration System.Single|number
---`Field Public Static`
---@field EventRemovalTime System.Single|number
---`Field Public Static`
---@field OldReceivedEventKickTime System.Single|number
---`Field Public Static`
---@field OldEventKickTime System.Single|number
_G['NetConfig'] = {}

---`Method Public Static`
---@param simPositionError Microsoft.Xna.Framework.Vector2
---@param smoothingFactor? System.Nullable*1System*Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['NetConfig'].InterpolateSimPositionError = function(simPositionError, smoothingFactor) end

---`Method Public Static`
---@param rotationError System.Single|number
---@return System.Single|number
_G['NetConfig'].InterpolateRotationError = function(rotationError) end

---`Method Public Static`
---@param cursorPositionError Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['NetConfig'].InterpolateCursorPositionError = function(cursorPositionError) end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector2, min:System.Single|number, max:System.Single|number, numberOfBits:System.Int32|integer):Microsoft.Xna.Framework.Vector2
---@param value System.Single|number
---@param min System.Single|number
---@param max System.Single|number
---@param numberOfBits System.Int32|integer
---@return System.Single|number
_G['NetConfig'].Quantize = function(value, min, max, numberOfBits) end

