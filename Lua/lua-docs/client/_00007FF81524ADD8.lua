---@meta
---@class Barotrauma.Particles.ParticleManager : System.Object
---`Field Private Instance`
---@field particleCount System.Int32|integer
---`Field Private Instance`
---@field maxParticles System.Int32|integer
---`Field Private Instance`
---@field particles Barotrauma.Particles.Particle-arr|Barotrauma.Particles.Particle[]
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Static`
---@field MaxOutOfViewDist System.Int32|integer
---`Getter Public Instance`
---@field ParticleCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxParticles System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Camera Barotrauma.Camera
_G['ParticleManager'] = {}

---`Method Public Instance`
---@overload fun(prefabName:System.String|string, position:Microsoft.Xna.Framework.Vector2, angle:System.Single|number, speed:System.Single|number, hullGuess?:Barotrauma.Hull, collisionIgnoreTimer?:System.Single|number, tracerPoints?:System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2):Barotrauma.Particles.Particle
---@overload fun(prefabName:System.String|string, position:Microsoft.Xna.Framework.Vector2, velocity:Microsoft.Xna.Framework.Vector2, rotation?:System.Single|number, hullGuess?:Barotrauma.Hull, collisionIgnoreTimer?:System.Single|number, tracerPoints?:System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2):Barotrauma.Particles.Particle
---@param prefab Barotrauma.Particles.ParticlePrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param hullGuess? Barotrauma.Hull
---@param drawOnTop? System.Boolean|boolean
---@param collisionIgnoreTimer? System.Single|number
---@param lifeTimeMultiplier? System.Single|number
---@param tracerPoints? System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2
---@return Barotrauma.Particles.Particle
_G['ParticleManager'].CreateParticle = function(prefab, position, velocity, rotation, hullGuess, drawOnTop, collisionIgnoreTimer, lifeTimeMultiplier, tracerPoints) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Barotrauma*Particles*ParticlePrefab|Barotrauma.Particles.ParticlePrefab[]
_G['ParticleManager'].GetPrefabList = function() end

---`Method Public Instance`
---@param prefabName System.String|string
---@return Barotrauma.Particles.ParticlePrefab
_G['ParticleManager'].FindPrefab = function(prefabName) end

---`Method Private Instance`
---@param index System.Int32|integer
_G['ParticleManager'].RemoveParticle = function(index) end

---`Method Public Instance`
---@param particle Barotrauma.Particles.Particle
_G['ParticleManager'].RemoveParticle = function(particle) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['ParticleManager'].Update = function(deltaTime) end

---`Method Public Instance`
_G['ParticleManager'].UpdateTransforms = function() end

---`Method Public Instance`
---@return System.Collections.Generic.Dictionary*1Barotrauma*Particles*ParticlePrefab*1System*Int32|{[Barotrauma.Particles.ParticlePrefab]:System.Int32|integer}
_G['ParticleManager'].CountActiveParticles = function() end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param inWater System.Boolean|boolean
---@param inSub System.Nullable*1System*Boolean|boolean
---@param blendState Barotrauma.Particles.ParticleBlendState
_G['ParticleManager'].Draw = function(spriteBatch, inWater, inSub, blendState) end

---`Method Public Instance`
_G['ParticleManager'].ClearParticles = function() end

---`Method Public Instance`
---@param prefab Barotrauma.Particles.ParticlePrefab
_G['ParticleManager'].RemoveByPrefab = function(prefab) end

---`Constructor Public Instance`
---@param cam Barotrauma.Camera
---@return Barotrauma.Particles.ParticleManager
_G['ParticleManager'] = function(cam) end

---`Constructor Public Instance`
---@param cam Barotrauma.Camera
---@return Barotrauma.Particles.ParticleManager
_G['ParticleManager'].__new = function(cam) end

