---@meta
---@class Barotrauma.GameScreen : Barotrauma.Screen
---`Field Private Instance`
---@field renderTargetBackground Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Field Private Instance`
---@field renderTarget Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Field Private Instance`
---@field renderTargetWater Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Field Private Instance`
---@field renderTargetFinal Microsoft.Xna.Framework.Graphics.RenderTarget2D
---`Field Private Instance`
---@field damageEffect Microsoft.Xna.Framework.Graphics.Effect
---`Field Private Instance`
---@field damageStencil Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field distortTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field fadeToBlackState System.Single|number
---`Field Private Instance`
---@field updateLock System.Object
---`Field Private Instance`
---@field physicsTime System.Double|number
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Getter Public Instance Virtual`
---@field IsEditor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PostProcessEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GradientEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GrainEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ThresholdTintEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BlueprintEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GameTime System.Double|number
_G['GameScreen'] = {}

---`Method Private Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
_G['GameScreen'].CreateRenderTargets = function(graphics) end

---`Method Public Instance Virtual`
_G['GameScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GameScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Double|number
_G['GameScreen'].DrawMap = function(graphics, spriteBatch, deltaTime) end

---`Method Public Instance Virtual`
_G['GameScreen'].Select = function() end

---`Method Public Instance Virtual`
_G['GameScreen'].Deselect = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['GameScreen'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Double|number
_G['GameScreen'].UpdateProjSpecific = function(deltaTime) end

---`Method Private Instance`
_G['GameScreen'].ExecutePhysics = function() end

---`Constructor Public Instance`
---@overload fun(graphics:Microsoft.Xna.Framework.Graphics.GraphicsDevice, content:Microsoft.Xna.Framework.Content.ContentManager):Barotrauma.GameScreen
---@return Barotrauma.GameScreen
_G['GameScreen'] = function() end

---`Constructor Public Instance`
---@overload fun(graphics:Microsoft.Xna.Framework.Graphics.GraphicsDevice, content:Microsoft.Xna.Framework.Content.ContentManager):Barotrauma.GameScreen
---@return Barotrauma.GameScreen
_G['GameScreen'].__new = function() end

