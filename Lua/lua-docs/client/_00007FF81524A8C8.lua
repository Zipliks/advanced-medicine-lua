---@meta
---@class Barotrauma.Particles.Particle : System.Object
---`Field Private Instance`
---@field prefab Barotrauma.Particles.ParticlePrefab
---`Field Private Instance`
---@field debugName System.String|string
---`Field Public Instance`
---@field OnChangeHull Barotrauma.Particles.Particle.OnChangeHullHandler|(fun(position:Microsoft.Xna.Framework.Vector2, currentHull:Barotrauma.Hull))
---`Field Public Instance`
---@field OnCollision Barotrauma.Particles.Particle.OnChangeHullHandler|(fun(position:Microsoft.Xna.Framework.Vector2, currentHull:Barotrauma.Hull))
---`Field Private Instance`
---@field position Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field prevPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field velocity Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field rotation System.Single|number
---`Field Private Instance`
---@field prevRotation System.Single|number
---`Field Private Instance`
---@field angularVelocity System.Single|number
---`Field Private Instance`
---@field collisionIgnoreTimer System.Single|number
---`Field Private Instance`
---@field size Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field sizeChange Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field color Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field changeColor System.Boolean|boolean
---`Field Private Instance`
---@field UseMiddleColor System.Boolean|boolean
---`Field Private Instance`
---@field spriteIndex System.Int32|integer
---`Field Private Instance`
---@field totalLifeTime System.Single|number
---`Field Private Instance`
---@field lifeTime System.Single|number
---`Field Private Instance`
---@field startDelay System.Single|number
---`Field Private Instance`
---@field velocityChange Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field velocityChangeWater Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field drawPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field drawRotation System.Single|number
---`Field Private Instance`
---@field currentHull Barotrauma.Hull
---`Field Private Instance`
---@field hullGaps System.Collections.Generic.List*1Barotrauma*Gap|Barotrauma.Gap[]
---`Field Private Instance`
---@field hasSubEmitters System.Boolean|boolean
---`Field Private Instance`
---@field subEmitters System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Private Instance`
---@field animState System.Single|number
---`Field Private Instance`
---@field animFrame System.Int32|integer
---`Field Private Instance`
---@field collisionUpdateTimer System.Single|number
---`Field Public Instance`
---@field HighQualityCollisionDetection System.Boolean|boolean
---`Field Public Instance`
---@field ColorMultiplier Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DrawOnTop System.Boolean|boolean
---`Getter Public Instance`
---@field DrawTarget Barotrauma.Particles.ParticlePrefab.DrawTargetType
---`Getter Public Instance`
---@field BlendState Barotrauma.Particles.ParticleBlendState
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StartDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field CurrentHull Barotrauma.Hull
---`Getter Public Instance`
---@field Prefab Barotrauma.Particles.ParticlePrefab
_G['Particle'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['Particle'].ToString = function() end

---`Method Public Instance`
---@param prefab Barotrauma.Particles.ParticlePrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param speed Microsoft.Xna.Framework.Vector2
---@param rotation System.Single|number
---@param hullGuess? Barotrauma.Hull
---@param drawOnTop? System.Boolean|boolean
---@param collisionIgnoreTimer? System.Single|number
---@param lifeTimeMultiplier? System.Single|number
---@param tracerPoints? System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2
_G['Particle'].Init = function(prefab, position, speed, rotation, hullGuess, drawOnTop, collisionIgnoreTimer, lifeTimeMultiplier, tracerPoints) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@return Barotrauma.Particles.Particle.UpdateResult
_G['Particle'].Update = function(deltaTime) end

---`Method Private Instance`
---@return Barotrauma.Particles.Particle.UpdateResult
_G['Particle'].CollisionUpdate = function() end

---`Method Private Instance`
---@param dragCoefficient System.Single|number
---@param deltaTime System.Single|number
_G['Particle'].ApplyDrag = function(dragCoefficient, deltaTime) end

---`Method Private Instance`
---@param prevHull Barotrauma.Hull
---@param collisionNormal Microsoft.Xna.Framework.Vector2
_G['Particle'].OnWallCollisionInside = function(prevHull, collisionNormal) end

---`Method Private Instance`
---@param collisionHull Barotrauma.Hull
_G['Particle'].OnWallCollisionOutside = function(collisionHull) end

---`Method Public Instance`
_G['Particle'].UpdateDrawPos = function() end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Particle'].Draw = function(spriteBatch) end

---`Constructor Public Instance`
---@return Barotrauma.Particles.Particle
_G['Particle'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Particles.Particle
_G['Particle'].__new = function() end

