---@meta
---@class Barotrauma.TestScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field miniMapItem Barotrauma.Item
---`Field Public Static`
---@field dummyCharacter Barotrauma.Character
---`Field Public Static`
---@field BlueprintEffect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
_G['TestScreen'] = {}

---`Method Public Instance Virtual`
_G['TestScreen'].Select = function() end

---`Method Public Instance Virtual`
_G['TestScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['TestScreen'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['TestScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Constructor Public Instance`
---@return Barotrauma.TestScreen
_G['TestScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.TestScreen
_G['TestScreen'].__new = function() end

