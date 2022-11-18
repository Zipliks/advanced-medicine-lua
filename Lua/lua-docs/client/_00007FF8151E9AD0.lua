---@meta
---@class Barotrauma.Decal : System.Object
---`Field Public Instance`
---@field Prefab Barotrauma.DecalPrefab
---`Field Private Instance`
---@field position Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field fadeTimer System.Single|number
---`Field Public Instance`
---@field Sprite Barotrauma.Sprite
---`Field Private Instance`
---@field affectedSections System.Collections.Generic.HashSet*1Barotrauma*BackgroundSection|Barotrauma.BackgroundSection[]
---`Field Private Instance`
---@field hull Barotrauma.Hull
---`Field Public Instance`
---@field Scale System.Single|number
---`Field Private Instance`
---@field clippedSourceRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field cleaned System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FadeTimer System.Single|number
---`Getter Public Instance`
---@field FadeInTime System.Single|number
---`Getter Public Instance`
---@field FadeOutTime System.Single|number
---`Getter Public Instance`
---@field LifeTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseAlpha System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CenterPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field NonClampedPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteIndex System.Int32|integer
_G['Decal'] = {}

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param hull Barotrauma.Hull
---@param depth System.Single|number
_G['Decal'].Draw = function(spriteBatch, hull, depth) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Decal'].Update = function(deltaTime) end

---`Method Public Instance`
---@param val System.Single|number
_G['Decal'].ForceRefreshFadeTimer = function(val) end

---`Method Public Instance`
_G['Decal'].StopFadeIn = function() end

---`Method Public Instance`
---@param section Barotrauma.BackgroundSection
---@return System.Boolean|boolean
_G['Decal'].AffectsSection = function(section) end

---`Method Public Instance`
---@param val System.Single|number
_G['Decal'].Clean = function(val) end

---`Method Private Instance`
---@return System.Single|number
_G['Decal'].GetAlpha = function() end

---`Constructor Public Instance`
---@param prefab Barotrauma.DecalPrefab
---@param scale System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param spriteIndex? System.Nullable*1System*Int32|integer
---@return Barotrauma.Decal
_G['Decal'] = function(prefab, scale, worldPosition, hull, spriteIndex) end

---`Constructor Public Instance`
---@param prefab Barotrauma.DecalPrefab
---@param scale System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param spriteIndex? System.Nullable*1System*Int32|integer
---@return Barotrauma.Decal
_G['Decal'].__new = function(prefab, scale, worldPosition, hull, spriteIndex) end

