---@meta
---@class Barotrauma.ShapeExtensions : System.Object
---`Field Private Static`
---@field _whitePixelTexture Microsoft.Xna.Framework.Graphics.Texture2D
_G['ShapeExtensions'] = {}

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['ShapeExtensions'].GetTexture = function(spriteBatch) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, position:Microsoft.Xna.Framework.Vector2, polygon:Barotrauma.Polygon, color:Microsoft.Xna.Framework.Color, thickness?:System.Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param offset Microsoft.Xna.Framework.Vector2
---@param points System.Collections.Generic.IReadOnlyList*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param color Microsoft.Xna.Framework.Color
---@param thickness? System.Single|number
_G['ShapeExtensions'].DrawPolygon = function(spriteBatch, offset, points, color, thickness) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param offset Microsoft.Xna.Framework.Vector2
---@param points System.Collections.Generic.IReadOnlyList*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param color Microsoft.Xna.Framework.Color
---@param thickness? System.Single|number
_G['ShapeExtensions'].DrawPolygonInner = function(spriteBatch, offset, points, color, thickness) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param thickness System.Single|number
_G['ShapeExtensions'].DrawPolygonEdgeInner = function(spriteBatch, point1, point2, color, thickness) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param thickness System.Single|number
_G['ShapeExtensions'].DrawPolygonEdge = function(spriteBatch, point1, point2, color, thickness) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, x1:System.Single|number, y1:System.Single|number, x2:System.Single|number, y2:System.Single|number, color:Microsoft.Xna.Framework.Color, thickness?:System.Single|number)
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, point1:Microsoft.Xna.Framework.Vector2, point2:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, thickness?:System.Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param point Microsoft.Xna.Framework.Vector2
---@param length System.Single|number
---@param angle System.Single|number
---@param color Microsoft.Xna.Framework.Color
---@param thickness? System.Single|number
_G['ShapeExtensions'].DrawLine = function(spriteBatch, point, length, angle, color, thickness) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, x:System.Single|number, y:System.Single|number, color:Microsoft.Xna.Framework.Color, size?:System.Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param size? System.Single|number
_G['ShapeExtensions'].DrawPoint = function(spriteBatch, position, color, size) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, center:Microsoft.Xna.Framework.Vector2, radius:System.Single|number, sides:System.Int32|integer, color:Microsoft.Xna.Framework.Color, thickness?:System.Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param x System.Single|number
---@param y System.Single|number
---@param radius System.Single|number
---@param sides System.Int32|integer
---@param color Microsoft.Xna.Framework.Color
---@param thickness? System.Single|number
_G['ShapeExtensions'].DrawCircle = function(spriteBatch, x, y, radius, sides, color, thickness) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param center Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@param radians System.Single|number
---@param sides System.Int32|integer
---@param color Microsoft.Xna.Framework.Color
---@param offset? System.Single|number
---@param thickness? System.Single|number
_G['ShapeExtensions'].DrawSector = function(spriteBatch, center, radius, radians, sides, color, offset, thickness) end

---`Method Private Static`
---@param radius System.Double|number
---@param sides System.Int32|integer
---@param radians System.Single|number
---@param offset? System.Single|number
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['ShapeExtensions'].CreateSector = function(radius, sides, radians, offset) end

---`Method Private Static`
---@param radius System.Double|number
---@param sides System.Int32|integer
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['ShapeExtensions'].CreateCircle = function(radius, sides) end

