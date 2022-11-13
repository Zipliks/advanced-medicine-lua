---@meta
---@class Barotrauma.Lights.LightManager : System.Object
---`Field Private Instance`
---@field currLightMapScale System.Single|number
---`Field Public Instance`
---@field AmbientLight Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field highlightRaster Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field lightEffect Microsoft.Xna.Framework.Graphics.BasicEffect
---`Field Private Instance`
---@field lights System.Collections.Generic.List*1Barotrauma*Lights*LightSource|Barotrauma.Lights.LightSource[]
---`Field Public Instance`
---@field LosEnabled System.Boolean|boolean
---`Field Public Instance`
---@field LosAlpha System.Single|number
---`Field Public Instance`
---@field LosMode Barotrauma.LosMode
---`Field Public Instance`
---@field LightingEnabled System.Boolean|boolean
---`Field Public Instance`
---@field ObstructVision System.Boolean|boolean
---`Field Private Instance`
---@field visionCircle Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field losOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field recalculationCount System.Int32|integer
---`Field Private Instance`
---@field activeLights System.Collections.Generic.List*1Barotrauma*Lights*LightSource|Barotrauma.Lights.LightSource[]
---`Field Private Instance`
---@field activeLightsWithLightVolume System.Collections.Generic.List*1Barotrauma*Lights*LightSource|Barotrauma.Lights.LightSource[]
---`Field Private Instance`
---@field highlightedEntities System.Collections.Generic.List*1Barotrauma*Entity|Barotrauma.Entity[]
---`Field Private Instance`
---@field visibleHulls System.Collections.Generic.Dictionary*1Barotrauma*Hull*1Microsoft*Xna*Framework*Rectangle|{[Barotrauma.Hull]:Microsoft.Xna.Framework.Rectangle}
---`Field Private Static`
---@field MaxLightVolumeRecalculationsPerFrame System.Int32|integer
---`Field Private Static`
---@field ObstructLightsBehindCharactersZoomThreshold System.Single|number
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field ViewTarget Barotrauma.Entity
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LimbLightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LosTexture Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HighlightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LosEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SolidColorEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---@field Lights System.Collections.Generic.IEnumerable*1Barotrauma*Lights*LightSource|(fun():Barotrauma.Lights.LightSource)
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ActiveLightCount System.Int32|integer
_G['LightManager'] = {}

---`Method Private Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
_G['LightManager'].CreateRenderTargets = function(graphics) end

---`Method Public Instance`
---@param light Barotrauma.Lights.LightSource
_G['LightManager'].AddLight = function(light) end

---`Method Public Instance`
---@param light Barotrauma.Lights.LightSource
_G['LightManager'].RemoveLight = function(light) end

---`Method Public Instance`
_G['LightManager'].OnMapLoaded = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['LightManager'].Update = function(deltaTime) end

---`Method Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param backgroundObstructor? Microsoft.Xna.Framework.Graphics.RenderTarget2D
_G['LightManager'].RenderLightMap = function(graphics, spriteBatch, cam, backgroundObstructor) end

---`Method Private Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param spriteBatchTransform Microsoft.Xna.Framework.Matrix
---@param cam Barotrauma.Camera
---@return System.Boolean|boolean
_G['LightManager'].UpdateHighlights = function(graphics, spriteBatch, spriteBatchTransform, cam) end

---`Method Private Instance`
---@param cam Barotrauma.Camera
---@return System.Collections.Generic.Dictionary*1Barotrauma*Hull*1Microsoft*Xna*Framework*Rectangle|{[Barotrauma.Hull]:Microsoft.Xna.Framework.Rectangle}
_G['LightManager'].GetVisibleHulls = function(cam) end

---`Method Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param lookAtPosition Microsoft.Xna.Framework.Vector2
_G['LightManager'].UpdateObstructVision = function(graphics, spriteBatch, cam, lookAtPosition) end

---`Method Public Instance`
_G['LightManager'].ClearLights = function() end

---`Constructor Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param content Microsoft.Xna.Framework.Content.ContentManager
---@return Barotrauma.Lights.LightManager
_G['LightManager'] = function(graphics, content) end

---`Constructor Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param content Microsoft.Xna.Framework.Content.ContentManager
---@return Barotrauma.Lights.LightManager
_G['LightManager'].__new = function(graphics, content) end

