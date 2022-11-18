---@meta
---@class Barotrauma.FireSource : System.Object
---`Field Private Instance`
---@field lightSource Barotrauma.Lights.LightSource
---`Field NonPublic Instance`
---@field hull Barotrauma.Hull
---`Field NonPublic Instance`
---@field position Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field size Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field submarine Barotrauma.Submarine
---`Field NonPublic Instance`
---@field removed System.Boolean|boolean
---`Field Private Instance`
---@field burnDecals System.Collections.Generic.List*1Barotrauma*Decal|Barotrauma.Decal[]
---`Field Private Static`
---@field OxygenConsumption System.Single|number
---`Field Private Static`
---@field GrowSpeed System.Single|number
---`Field Private Static`
---@field MaxDamageRange System.Single|number
---`Getter Public Instance Virtual`
---@field Submarine Barotrauma.Submarine
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field DamageRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamagesItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamagesCharacters System.Boolean|boolean
---`Getter Public Instance`
---@field Removed System.Boolean|boolean
---`Getter Public Instance`
---@field Hull Barotrauma.Hull
_G['FireSource'] = {}

---`Method Public Static`
---@param size Microsoft.Xna.Framework.Vector2
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param growModifier System.Single|number
---@param onChangeHull? Barotrauma.Particles.Particle.OnChangeHullHandler|(fun(position:Microsoft.Xna.Framework.Vector2, currentHull:Barotrauma.Hull))
_G['FireSource'].EmitParticles = function(size, worldPosition, hull, growModifier, onChangeHull) end

---`Method NonPublic Instance Virtual`
_G['FireSource'].LimitSize = function() end

---`Method Public Static`
---@overload fun(fireSources:System.Collections.Generic.List*1Barotrauma*FireSource|Barotrauma.FireSource[], deltaTime:System.Single|number)
---@param fireSources System.Collections.Generic.List*1Barotrauma*DummyFireSource|Barotrauma.DummyFireSource[]
---@param deltaTime System.Single|number
_G['FireSource'].UpdateAll = function(fireSources, deltaTime) end

---`Method Private Instance`
---@param fireSource Barotrauma.FireSource
---@return System.Boolean|boolean
_G['FireSource'].CheckOverLap = function(fireSource) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['FireSource'].Update = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['FireSource'].ReduceOxygen = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param growModifier System.Single|number
---@param deltaTime System.Single|number
_G['FireSource'].AdjustXPos = function(growModifier, deltaTime) end

---`Method Private Instance`
---@param growModifier System.Single|number
_G['FireSource'].UpdateProjSpecific = function(growModifier) end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
---@param particleHull Barotrauma.Hull
_G['FireSource'].OnChangeHull = function(pos, particleHull) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FireSource'].DamageCharacters = function(deltaTime) end

---`Method Public Instance`
---@overload fun(c:Barotrauma.Character, damageRange:System.Single|number):System.Boolean|boolean
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param damageRange System.Single|number
---@return System.Boolean|boolean
_G['FireSource'].IsInDamageRange = function(worldPosition, damageRange) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FireSource'].DamageItems = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['FireSource'].HullWaterExtinguish = function(deltaTime) end

---`Method Public Instance`
---@overload fun(deltaTime:System.Single|number, amount:System.Single|number)
---@param deltaTime System.Single|number
---@param amount System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
_G['FireSource'].Extinguish = function(deltaTime, amount, worldPosition) end

---`Method Public Instance`
_G['FireSource'].Remove = function() end

---`Constructor Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param spawningHull? Barotrauma.Hull
---@param isNetworkMessage? System.Boolean|boolean
---@return Barotrauma.FireSource
_G['FireSource'] = function(worldPosition, spawningHull, isNetworkMessage) end

---`Constructor Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param spawningHull? Barotrauma.Hull
---@param isNetworkMessage? System.Boolean|boolean
---@return Barotrauma.FireSource
_G['FireSource'].__new = function(worldPosition, spawningHull, isNetworkMessage) end

