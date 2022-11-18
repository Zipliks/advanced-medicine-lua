---@meta
---@class Barotrauma.RoundSummaryScreen : Barotrauma.Screen
---`Field Private Instance`
---@field backgroundSprite Barotrauma.Sprite
---`Field Private Instance`
---@field roundSummary Barotrauma.RoundSummary
---`Field Private Instance`
---@field loadText Barotrauma.LocalizedString
---`Field Private Instance`
---@field prevGuiElementParent Barotrauma.RectTransform
---`Field Public Instance`
---@field LoadException System.Exception
_G['RoundSummaryScreen'] = {}

---`Method Public Static`
---@param backgroundSprite Barotrauma.Sprite
---@param roundSummary Barotrauma.RoundSummary
---@return Barotrauma.RoundSummaryScreen
_G['RoundSummaryScreen'].Select = function(backgroundSprite, roundSummary) end

---`Method Public Instance Virtual`
_G['RoundSummaryScreen'].Deselect = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['RoundSummaryScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['RoundSummaryScreen'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@return Barotrauma.RoundSummaryScreen
_G['RoundSummaryScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.RoundSummaryScreen
_G['RoundSummaryScreen'].__new = function() end

