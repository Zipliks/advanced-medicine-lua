---@meta
---@class Barotrauma.GUIFrame : Barotrauma.GUIComponent
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OutlineThickness System.Single|number
_G['GUI']['Frame'] = {}

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['Frame'].Draw = function(spriteBatch) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUIFrame
_G['GUI']['Frame'] = function(rectT, style, color) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUIFrame
_G['GUI']['Frame'].__new = function(rectT, style, color) end

