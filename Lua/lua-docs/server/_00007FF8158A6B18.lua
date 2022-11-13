---@meta
---@class Barotrauma.DummyFireSource : Barotrauma.FireSource
---`Field Private Instance`
---@field maxSize Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field CausedByPsychosis System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field DamageRange System.Single|number
_G['DummyFireSource'] = {}

---`Method NonPublic Instance Virtual`
_G['DummyFireSource'].LimitSize = function() end

---`Method NonPublic Instance Virtual`
---@param growModifier System.Single|number
---@param deltaTime System.Single|number
_G['DummyFireSource'].AdjustXPos = function(growModifier, deltaTime) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['DummyFireSource'].ReduceOxygen = function(deltaTime) end

---`Constructor Public Instance`
---@param maxSize Microsoft.Xna.Framework.Vector2
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param spawningHull? Barotrauma.Hull
---@param isNetworkMessage? System.Boolean|boolean
---@return Barotrauma.DummyFireSource
_G['DummyFireSource'] = function(maxSize, worldPosition, spawningHull, isNetworkMessage) end

---`Constructor Public Instance`
---@param maxSize Microsoft.Xna.Framework.Vector2
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param spawningHull? Barotrauma.Hull
---@param isNetworkMessage? System.Boolean|boolean
---@return Barotrauma.DummyFireSource
_G['DummyFireSource'].__new = function(maxSize, worldPosition, spawningHull, isNetworkMessage) end

