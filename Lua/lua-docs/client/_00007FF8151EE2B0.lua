---@meta
---@class Barotrauma.Items.Components.Sprayer : Barotrauma.Items.Components.RangedWeapon
---`Field Private Instance`
---@field particleEmitters System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Private Instance`
---@field targetHull Barotrauma.Hull
---`Field Private Instance`
---@field rayStartWorldPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field color Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field targetSections System.Collections.Generic.List*1Barotrauma*BackgroundSection|Barotrauma.BackgroundSection[]
---`Field Private Instance`
---@field spraySetting System.Int32|integer
---`Field Private Instance`
---@field sprayArray Microsoft.Xna.Framework.Point-arr|Microsoft.Xna.Framework.Point[]
---`Field Private Instance`
---@field liquidColors System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Microsoft*Xna*Framework*Color|{[Barotrauma.Identifier]:Microsoft.Xna.Framework.Color}
---`Field Private Instance`
---@field liquidContainer Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SprayStrength System.Single|number
_G['Components']['Sprayer'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Sprayer'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param character Barotrauma.Character
_G['Components']['Sprayer'].DrawHUD = function(spriteBatch, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Sprayer'].Use = function(deltaTime, character) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Components']['Sprayer'].Spray = function(deltaTime) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Sprayer'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
_G['Components']['Sprayer'].OnItemLoaded = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Sprayer'].InitProjSpecific = function(element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Sprayer
_G['Components']['Sprayer'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Sprayer
_G['Components']['Sprayer'].__new = function(item, element) end

