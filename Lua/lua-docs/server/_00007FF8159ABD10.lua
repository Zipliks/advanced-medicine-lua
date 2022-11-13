---@meta
---@class Barotrauma.Items.Components.Projectile : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field launchRot System.Single|number
---`Field Private Instance`
---@field impactQueue System.Collections.Generic.Queue*1Barotrauma*Items*Components*Projectile*Impact|(fun():Barotrauma.Items.Components.Projectile.Impact)
---`Field Private Instance`
---@field removePending System.Boolean|boolean
---`Field Private Instance`
---@field stickJoint FarseerPhysics.Dynamics.Joints.Joint
---`Field Private Instance`
---@field jointAxis Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field launchPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field hits System.Collections.Generic.HashSet*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Public Instance`
---@field IgnoredBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Public Instance`
---@field Launcher Barotrauma.Item
---`Field Private Instance`
---@field stickTargetCharacter Barotrauma.Character
---`Field Private Instance`
---@field _user Barotrauma.Character
---`Field Private Instance`
---@field deactivationTimer System.Single|number
---`Field Private Instance`
---@field stickTimer System.Single|number
---`Field Private Instance`
---@field maxJointTranslationInSimUnits System.Single|number
---`Field Private Instance`
---@field originalCollisionCategories FarseerPhysics.Dynamics.Category
---`Field Private Instance`
---@field originalCollisionTargets FarseerPhysics.Dynamics.Category
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field lastTarget FarseerPhysics.Dynamics.Fixture
---`Field Private Static`
---@field ContinuousCollisionThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Attack Barotrauma.Attack
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field User Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Attacker Barotrauma.Character
---`Getter Public Instance`
---@field Hits System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LaunchImpulse System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ImpulseSpread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LaunchRotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LaunchRotationRadians System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DoesStick System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickToCharacters System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickToStructures System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickToItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickToDeflective System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickToLightTargets System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hitscan System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HitScanCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxTargetsToHit System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RemoveOnHit System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Spread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StaticSpread System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FriendlyFire System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeactivationTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StickDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxJointTranslation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Prismatic System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreProjectilesWhileActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StickTarget FarseerPhysics.Dynamics.Body
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageDoors System.Boolean|boolean
---`Getter Public Instance`
---@field IsStuckToTarget System.Boolean|boolean
_G['Components']['Projectile'] = {}

---`Method Public Instance Virtual`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean|boolean
_G['Components']['Projectile'].ValidateEventData = function(data) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Projectile'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
_G['Components']['Projectile'].OnItemLoaded = function() end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param rotation System.Single|number
---@param damageMultiplier? System.Single|number
---@param launchImpulseModifier? System.Single|number
_G['Components']['Projectile'].Launch = function(user, simPosition, rotation, damageMultiplier, launchImpulseModifier) end

---`Method Public Instance`
---@param user Barotrauma.Character
---@param weaponPos Microsoft.Xna.Framework.Vector2
---@param spawnPos Microsoft.Xna.Framework.Vector2
---@param rotation System.Single|number
---@param ignoredBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---@param createNetworkEvent System.Boolean|boolean
---@param damageMultiplier? System.Single|number
---@param launchImpulseModifier? System.Single|number
_G['Components']['Projectile'].Shoot = function(user, weaponPos, spawnPos, rotation, ignoredBodies, createNetworkEvent, damageMultiplier, launchImpulseModifier) end

---`Method Public Instance`
---@param character? Barotrauma.Character
---@param launchImpulseModifier? System.Single|number
---@return System.Boolean|boolean
_G['Components']['Projectile'].Use = function(character, launchImpulseModifier) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Projectile'].Use = function(deltaTime, character) end

---`Method Private Instance`
---@param impulse Microsoft.Xna.Framework.Vector2
_G['Components']['Projectile'].DoLaunch = function(impulse) end

---`Method Private Instance`
---@param dir Microsoft.Xna.Framework.Vector2
_G['Components']['Projectile'].DoHitscan = function(dir) end

---`Method Private Instance`
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param submarine Barotrauma.Submarine
---@return System.Collections.Generic.List*1Barotrauma*Items*Components*Projectile*HitscanResult|Barotrauma.Items.Components.Projectile.HitscanResult[]
_G['Components']['Projectile'].DoRayCast = function(rayStart, rayEnd, submarine) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Projectile'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Projectile'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['Projectile'].StickTargetRemoved = function() end

---`Method Private Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param target FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Components']['Projectile'].OnProjectileCollision = function(f1, target, contact) end

---`Method Public Instance`
---@param target FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Components']['Projectile'].ShouldIgnoreSubmarineCollision = function(target, contact) end

---`Method Private Instance`
---@param target FarseerPhysics.Dynamics.Fixture-ref
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Components']['Projectile'].ShouldIgnoreSubmarineCollision = function(target, contact) end

---`Method Private Instance`
---@param target FarseerPhysics.Dynamics.Fixture
---@param collisionNormal Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Components']['Projectile'].HandleProjectileCollision = function(target, collisionNormal, velocity) end

---`Method Private Instance`
_G['Components']['Projectile'].DisableProjectileCollisions = function() end

---`Method Private Instance`
---@param targetBody FarseerPhysics.Dynamics.Body
---@param axis Microsoft.Xna.Framework.Vector2
_G['Components']['Projectile'].StickToTarget = function(targetBody, axis) end

---`Method Public Instance`
_G['Components']['Projectile'].Unstick = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Projectile'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Projectile
_G['Components']['Projectile'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Projectile
_G['Components']['Projectile'].__new = function(item, element) end

