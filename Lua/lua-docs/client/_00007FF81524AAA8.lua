---@meta
---@class Barotrauma.Particles.ParticleEmitter : System.Object
---`Field Private Instance`
---@field emitTimer System.Single|number
---`Field Private Instance`
---@field burstEmitTimer System.Single|number
---`Field Private Instance`
---@field initialDelay System.Single|number
---`Field Public Instance`
---@field Prefab Barotrauma.Particles.ParticleEmitterPrefab
_G['ParticleEmitter'] = {}

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param position Microsoft.Xna.Framework.Vector2
---@param hullGuess? Barotrauma.Hull
---@param angle? System.Single|number
---@param particleRotation? System.Single|number
---@param velocityMultiplier? System.Single|number
---@param sizeMultiplier? System.Single|number
---@param amountMultiplier? System.Single|number
---@param colorMultiplier? System.Nullable*1Microsoft*Xna*Framework*Color
---@param overrideParticle? Barotrauma.Particles.ParticlePrefab
---@param mirrorAngle? System.Boolean|boolean
---@param tracerPoints? System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2
_G['ParticleEmitter'].Emit = function(deltaTime, position, hullGuess, angle, particleRotation, velocityMultiplier, sizeMultiplier, amountMultiplier, colorMultiplier, overrideParticle, mirrorAngle, tracerPoints) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param hullGuess Barotrauma.Hull
---@param angle System.Single|number
---@param particleRotation System.Single|number
---@param velocityMultiplier System.Single|number
---@param sizeMultiplier System.Single|number
---@param colorMultiplier? System.Nullable*1Microsoft*Xna*Framework*Color
---@param overrideParticle? Barotrauma.Particles.ParticlePrefab
---@param mirrorAngle? System.Boolean|boolean
---@param tracerPoints? System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2
_G['ParticleEmitter'].Emit = function(position, hullGuess, angle, particleRotation, velocityMultiplier, sizeMultiplier, colorMultiplier, overrideParticle, mirrorAngle, tracerPoints) end

---`Method Public Instance`
---@param startPosition Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
_G['ParticleEmitter'].CalculateParticleBounds = function(startPosition) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement):Barotrauma.Particles.ParticleEmitter
---@param prefab Barotrauma.Particles.ParticleEmitterPrefab
---@return Barotrauma.Particles.ParticleEmitter
_G['ParticleEmitter'] = function(prefab) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement):Barotrauma.Particles.ParticleEmitter
---@param prefab Barotrauma.Particles.ParticleEmitterPrefab
---@return Barotrauma.Particles.ParticleEmitter
_G['ParticleEmitter'].__new = function(prefab) end

