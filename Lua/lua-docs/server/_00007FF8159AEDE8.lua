---@meta
---@class Barotrauma.Items.Components.Turret : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field barrelSprite Barotrauma.Sprite
---`Field Private Instance`
---@field railSprite Barotrauma.Sprite
---`Field Private Instance`
---@field chargeSprites System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Sprite*2Microsoft*Xna*Framework*Vector2|System.ValueTuple*1Barotrauma*Sprite*1Microsoft*Xna*Framework*Vector2[]
---`Field Private Instance`
---@field spinningBarrelSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field barrelPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field transformedBarrelPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field rotation System.Single|number
---`Field Private Instance`
---@field targetRotation System.Single|number
---`Field Private Instance`
---@field reload System.Single|number
---`Field Private Instance`
---@field reloadTime System.Single|number
---`Field Private Instance`
---@field delayBetweenBurst System.Single|number
---`Field Private Instance`
---@field shotsPerBurst System.Int32|integer
---`Field Private Instance`
---@field shotCounter System.Int32|integer
---`Field Private Instance`
---@field minRotation System.Single|number
---`Field Private Instance`
---@field maxRotation System.Single|number
---`Field Private Instance`
---@field launchImpulse System.Single|number
---`Field Private Instance`
---@field damageMultiplier System.Single|number
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Instance`
---@field angularVelocity System.Single|number
---`Field Private Instance`
---@field failedLaunchAttempts System.Int32|integer
---`Field Private Instance`
---@field currentChargeTime System.Single|number
---`Field Private Instance`
---@field tryingToCharge System.Boolean|boolean
---`Field Private Instance`
---@field currentChargingState Barotrauma.Items.Components.Turret.ChargingState
---`Field Private Instance`
---@field activeProjectiles System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Private Instance`
---@field resetUserTimer System.Single|number
---`Field Private Instance`
---@field aiTargetingGraceTimer System.Single|number
---`Field Private Instance`
---@field aiFindTargetTimer System.Single|number
---`Field Private Instance`
---@field currentTarget Barotrauma.Character
---`Field Private Instance`
---@field currentLoaderIndex System.Int32|integer
---`Field Public Instance`
---@field ActiveUser Barotrauma.Character
---`Field Private Instance`
---@field resetActiveUserTimer System.Single|number
---`Field Private Instance`
---@field lightComponents System.Collections.Generic.List*1Barotrauma*Items*Components*LightComponent|Barotrauma.Items.Components.LightComponent[]
---`Field Public Instance`
---@field flipFiringOffset System.Boolean|boolean
---`Field Private Instance`
---@field prevScale System.Single|number
---`Field Private Instance`
---@field prevBaseRotation System.Single|number
---`Field Private Instance`
---@field waitTimer System.Single|number
---`Field Private Instance`
---@field disorderTimer System.Single|number
---`Field Private Instance`
---@field prevTargetRotation System.Single|number
---`Field Private Instance`
---@field updateTimer System.Single|number
---`Field Private Instance`
---@field updatePending System.Boolean|boolean
---`Field Private Instance`
---@field loadedRotationLimits System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field loadedBaseRotation System.Nullable*1System*Single|number
---`Field Private Static`
---@field aiFindTargetInterval System.Single|number
---`Field Private Static`
---@field TinkeringPowerCostReduction System.Single|number
---`Field Private Static`
---@field TinkeringDamageIncrease System.Single|number
---`Field Private Static`
---@field TinkeringReloadDecrease System.Single|number
---`Getter Public Instance`
---@field ActiveProjectiles System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---`Getter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarrelPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FiringOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AlternatingFiringOffset System.Boolean|boolean
---`Getter Public Instance`
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LaunchImpulse System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Reload System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShotsPerBurst System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DelayBetweenBursts System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RetractionDurationMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RecoilTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RetractionDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ProjectileCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LaunchWithoutProjectile System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RotationLimits Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Spread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpringStiffnessLowSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpringStiffnessHighSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpringDampingLowSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpringDampingHighSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RotationSpeedLowSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RotationSpeedHighSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FiringRotationSpeedModifier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SingleChargedShot System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseRotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AIRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxActiveProjectiles System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxChargeTime System.Single|number
_G['Components']['Turret'] = {}

---`Method Private Instance`
_G['Components']['Turret'].UpdateTransformedBarrelPos = function() end

---`Method Public Instance Virtual`
_G['Components']['Turret'].OnMapLoaded = function() end

---`Method Private Instance`
_G['Components']['Turret'].FindLightComponents = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Turret'].Update = function(deltaTime, cam) end

---`Method Public Instance`
_G['Components']['Turret'].UpdateLightComponents = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Turret'].Use = function(deltaTime, character) end

---`Method Public Instance`
---@return System.Single|number
_G['Components']['Turret'].GetPowerRequiredToShoot = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['Turret'].HasPowerToShoot = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@param ignorePower? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['Turret'].TryLaunch = function(deltaTime, character, ignorePower) end

---`Method Private Instance`
---@param projectile Barotrauma.Item
---@param user? Barotrauma.Character
---@param launchRotation? System.Nullable*1System*Single|number
---@param tinkeringStrength? System.Single|number
_G['Components']['Turret'].Launch = function(projectile, user, launchRotation, tinkeringStrength) end

---`Method Private Instance`
---@param container Barotrauma.Items.Components.ItemContainer
_G['Components']['Turret'].ShiftItemsInProjectileContainer = function(container) end

---`Method Public Instance`
---@param ai Barotrauma.WreckAI
---@param deltaTime System.Single|number
---@param targetHumans System.Boolean|boolean
---@param targetOtherCreatures System.Boolean|boolean
---@param targetSubmarines System.Boolean|boolean
---@param ignoreDelay System.Boolean|boolean
_G['Components']['Turret'].ThalamusOperate = function(ai, deltaTime, targetHumans, targetOtherCreatures, targetSubmarines, ignoreDelay) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['Turret'].AIOperate = function(deltaTime, character, objective) end

---`Method Public Instance Virtual`
---@param conn? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Turret'].GetCurrentPowerConsumption = function(conn) end

---`Method Private Instance`
---@param targetBody FarseerPhysics.Dynamics.Body
---@param user? Barotrauma.Character
---@param ai? Barotrauma.WreckAI
---@param targetSubmarines? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['Turret'].CanShoot = function(targetBody, user, ai, targetSubmarines) end

---`Method Private Instance`
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@return FarseerPhysics.Dynamics.Body
_G['Components']['Turret'].CheckLineOfSight = function(start, luaKey__end) end

---`Method Private Instance`
---@param useOffset? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Turret'].GetRelativeFiringPosition = function(useOffset) end

---`Method Private Instance`
---@overload fun(angle:System.Single|number):System.Boolean|boolean
---@param target Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Components']['Turret'].CheckTurretAngle = function(target) end

---`Method NonPublic Instance Virtual`
_G['Components']['Turret'].RemoveComponentSpecific = function() end

---`Method Private Instance`
---@return System.Collections.Generic.List*1Barotrauma*Items*Components*Projectile|Barotrauma.Items.Components.Projectile[]
_G['Components']['Turret'].GetLoadedProjectiles = function() end

---`Method Private Instance`
---@param projectileContainer Barotrauma.Item
---@param projectiles System.Collections.Generic.List*1Barotrauma*Items*Components*Projectile|Barotrauma.Items.Components.Projectile[]
---@param stopSearching System.Boolean-ref
_G['Components']['Turret'].CheckProjectileContainer = function(projectileContainer, projectiles, stopSearching) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Turret'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Turret'].FlipY = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Turret'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Turret'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
_G['Components']['Turret'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Turret'].ServerEventWrite = function(msg, c, extraData) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Turret
_G['Components']['Turret'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Turret
_G['Components']['Turret'].__new = function(item, element) end

