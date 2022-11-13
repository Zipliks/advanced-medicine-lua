---@meta
---@class Barotrauma.Explosion : System.Object
---`Field Public Instance`
---@field Attack Barotrauma.Attack
---`Field Private Instance`
---@field force System.Single|number
---`Field Private Instance`
---@field cameraShake System.Single|number
---`Field Private Instance`
---@field cameraShakeRange System.Single|number
---`Field Private Instance`
---@field screenColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field screenColorRange System.Single|number
---`Field Private Instance`
---@field screenColorDuration System.Single|number
---`Field Private Instance`
---@field sparks System.Boolean|boolean
---`Field Private Instance`
---@field shockwave System.Boolean|boolean
---`Field Private Instance`
---@field flames System.Boolean|boolean
---`Field Private Instance`
---@field smoke System.Boolean|boolean
---`Field Private Instance`
---@field flash System.Boolean|boolean
---`Field Private Instance`
---@field underwaterBubble System.Boolean|boolean
---`Field Private Instance`
---@field flashColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field playTinnitus System.Boolean|boolean
---`Field Private Instance`
---@field applyFireEffects System.Boolean|boolean
---`Field Private Instance`
---@field ignoreFireEffectsForTags System.String-arr|System.String|string[]
---`Field Private Instance`
---@field ignoreCover System.Boolean|boolean
---`Field Private Instance`
---@field onlyInside System.Boolean|boolean
---`Field Private Instance`
---@field onlyOutside System.Boolean|boolean
---`Field Private Instance`
---@field flashDuration System.Single|number
---`Field Private Instance`
---@field flashRange System.Nullable*1System*Single|number
---`Field Private Instance`
---@field decal System.String|string
---`Field Private Instance`
---@field decalSize System.Single|number
---`Field Private Instance`
---@field applyToSelf System.Boolean|boolean
---`Field Private Instance`
---@field itemRepairStrength System.Single|number
---`Field Public Instance`
---@field IgnoredSubmarines System.Collections.Generic.HashSet*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Field Private Static`
---@field damagedStructureList System.Collections.Generic.List*1Barotrauma*Structure|Barotrauma.Structure[]
---`Field Private Static`
---@field damagedStructures System.Collections.Generic.Dictionary*1Barotrauma*Structure*1System*Single|{[Barotrauma.Structure]:System.Single|number}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EmpStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BallastFloraDamage System.Single|number
_G['Explosion'] = {}

---`Method Public Instance`
_G['Explosion'].DisableParticles = function() end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param damageSource Barotrauma.Entity
---@param attacker? Barotrauma.Character
_G['Explosion'].Explode = function(worldPosition, damageSource, attacker) end

---`Method Private Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param attack Barotrauma.Attack
---@param force System.Single|number
---@param damageSource Barotrauma.Entity
---@param attacker Barotrauma.Character
---@param applyToSelf System.Boolean|boolean
_G['Explosion'].DamageCharacters = function(worldPosition, attack, force, damageSource, attacker, applyToSelf) end

---`Method Public Static`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param worldRange System.Single|number
---@param damage System.Single|number
---@param levelWallDamage System.Single|number
---@param attacker? Barotrauma.Character
---@param ignoredSubmarines? System.Collections.Generic.IEnumerable*1Barotrauma*Submarine|(fun():Barotrauma.Submarine)
---@param emitWallDamageParticles? System.Boolean|boolean
---@return System.Collections.Generic.Dictionary*1Barotrauma*Structure*1System*Single|{[Barotrauma.Structure]:System.Single|number}
_G['Explosion'].RangedStructureDamage = function(worldPosition, worldRange, damage, levelWallDamage, attacker, ignoredSubmarines, emitWallDamageParticles) end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param worldRange System.Single|number
---@param damage System.Single|number
---@param attacker? Barotrauma.Character
_G['Explosion'].RangedBallastFloraDamage = function(worldPosition, worldRange, damage, attacker) end

---`Method Private Static`
---@param explosionSimPos Microsoft.Xna.Framework.Vector2
---@param explosionWorldPos Microsoft.Xna.Framework.Vector2
---@param targetSimPos Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['Explosion'].GetObstacleDamageMultiplier = function(explosionSimPos, explosionWorldPos, targetSimPos) end

---`Constructor Public Instance`
---@overload fun(range:System.Single|number, force:System.Single|number, damage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, empStrength?:System.Single|number, ballastFloraStrength?:System.Single|number):Barotrauma.Explosion
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.Explosion
---@return Barotrauma.Explosion
_G['Explosion'] = function() end

---`Constructor Public Instance`
---@overload fun(range:System.Single|number, force:System.Single|number, damage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, empStrength?:System.Single|number, ballastFloraStrength?:System.Single|number):Barotrauma.Explosion
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.Explosion
---@return Barotrauma.Explosion
_G['Explosion'].__new = function() end

---`Constructor Private Static`
---@overload fun(range:System.Single|number, force:System.Single|number, damage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, empStrength?:System.Single|number, ballastFloraStrength?:System.Single|number):Barotrauma.Explosion
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.Explosion
---@return Barotrauma.Explosion
_G['Explosion'] = function() end

---`Constructor Private Static`
---@overload fun(range:System.Single|number, force:System.Single|number, damage:System.Single|number, structureDamage:System.Single|number, itemDamage:System.Single|number, empStrength?:System.Single|number, ballastFloraStrength?:System.Single|number):Barotrauma.Explosion
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.Explosion
---@return Barotrauma.Explosion
_G['Explosion'].__new = function() end

