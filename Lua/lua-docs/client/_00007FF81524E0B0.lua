---@meta
---@class Barotrauma.Graph : System.Object
---`Field Private Instance`
---@field values System.Single-arr|System.Single|number[]
_G['Graph'] = {}

---`Method Public Instance`
---@return System.Single|number
_G['Graph'].LargestValue = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Graph'].Average = function() end

---`Method Public Instance`
---@param newValue System.Single|number
_G['Graph'].Update = function(newValue) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
---@param maxValue? System.Nullable*1System*Single|number
---@param xOffset? System.Single|number
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param doForEachValue? Barotrauma.Graph.GraphDelegate|(fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, value:System.Single|number, order:System.Int32|integer, position:Microsoft.Xna.Framework.Vector2))
_G['Graph'].Draw = function(spriteBatch, rect, maxValue, xOffset, color, doForEachValue) end

---`Constructor Public Instance`
---@param arraySize? System.Int32|integer
---@return Barotrauma.Graph
_G['Graph'] = function(arraySize) end

---`Constructor Public Instance`
---@param arraySize? System.Int32|integer
---@return Barotrauma.Graph
_G['Graph'].__new = function(arraySize) end

