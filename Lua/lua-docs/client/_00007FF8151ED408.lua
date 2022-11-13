---@meta
---@class Barotrauma.Items.Components.RangedWeapon : Barotrauma.Items.Components.ItemComponent
---`Field NonPublic Instance`
---@field crosshairSprite Barotrauma.Sprite
---`Field NonPublic Instance`
---@field crosshairPointerSprite Barotrauma.Sprite
---`Field NonPublic Instance`
---@field crosshairPos Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field crosshairPointerPos Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field currentCrossHairScale System.Single|number
---`Field NonPublic Instance`
---@field currentCrossHairPointerScale System.Single|number
---`Field Private Instance`
---@field chargeSound Barotrauma.RoundSound
---`Field Private Instance`
---@field chargeSoundChannel Barotrauma.Sounds.SoundChannel
---`Field Private Instance`
---@field particleEmitters System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Private Instance`
---@field particleEmitterCharges System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Private Instance`
---@field reload System.Single|number
---`Field Private Instance`
---@field barrelPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field currentChargingState Barotrauma.Items.Components.RangedWeapon.ChargingState
---`Field Private Instance`
---@field currentChargeTime System.Single|number
---`Field Private Instance`
---@field tryingToCharge System.Boolean|boolean
---`Field Private Instance`
---@field ignoredBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CrossHairScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ReloadTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarrelPos System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Reload System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoldTrigger System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ProjectileCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Spread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UnskilledSpread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxChargeTime System.Single|number
---`Getter Public Instance`
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastProjectile Barotrauma.Items.Components.Projectile
_G['Components']['RangedWeapon'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['RangedWeapon'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param character Barotrauma.Character
_G['Components']['RangedWeapon'].DrawHUD = function(spriteBatch, character) end

---`Method NonPublic Instance Virtual`
_G['Components']['RangedWeapon'].RemoveComponentSpecific = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['RangedWeapon'].InitProjSpecific = function(element) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['RangedWeapon'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['RangedWeapon'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['RangedWeapon'].UpdateProjSpecific = function(deltaTime) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@return System.Single|number
_G['Components']['RangedWeapon'].GetSpread = function(user) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['RangedWeapon'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['RangedWeapon'].SecondaryUse = function(deltaTime, character) end

---`Method Public Instance`
---@param triggerOnUseOnContainers? System.Boolean|boolean
---@return Barotrauma.Items.Components.Projectile
_G['Components']['RangedWeapon'].FindProjectile = function(triggerOnUseOnContainers) end

---`Method Private Instance`
_G['Components']['RangedWeapon'].LaunchProjSpecific = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RangedWeapon
_G['Components']['RangedWeapon'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RangedWeapon
_G['Components']['RangedWeapon'].__new = function(item, element) end

