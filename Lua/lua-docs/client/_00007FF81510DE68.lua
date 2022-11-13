---@meta
---@class Barotrauma.LevelWall : System.Object
---`Field NonPublic Instance`
---@field level Barotrauma.Level
---`Field Private Instance`
---@field triangles System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2-arr|Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[][]
---`Field Private Instance`
---@field color Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field moveState System.Single|number
---`Field Private Instance`
---@field moveLength System.Single|number
---`Field Private Instance`
---@field moveAmount Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field wallDamageOnTouch System.Single|number
---`Field Public Instance`
---@field MoveSpeed System.Single|number
---`Field Private Instance`
---@field originalPos System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VertexBuffer Barotrauma.LevelWallVertexBuffer
---`Getter Public Instance`
---@field WallBuffer Microsoft.Xna.Framework.Graphics.VertexBuffer
---`Getter Public Instance`
---@field WallEdgeBuffer Microsoft.Xna.Framework.Graphics.VertexBuffer
---`Getter Public Instance Virtual`
---@field Alpha System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Cells System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Body FarseerPhysics.Dynamics.Body
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MoveAmount Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WallDamageOnTouch System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MoveState System.Single|number
_G['LevelWall'] = {}

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Matrix
_G['LevelWall'].GetTransform = function() end

---`Method Public Instance`
---@param wallVertices Microsoft.Xna.Framework.Graphics.VertexPositionTexture-arr|Microsoft.Xna.Framework.Graphics.VertexPositionTexture[]
---@param wallEdgeVertices Microsoft.Xna.Framework.Graphics.VertexPositionTexture-arr|Microsoft.Xna.Framework.Graphics.VertexPositionTexture[]
---@param wallTexture Microsoft.Xna.Framework.Graphics.Texture2D
---@param edgeTexture Microsoft.Xna.Framework.Graphics.Texture2D
---@param color Microsoft.Xna.Framework.Color
_G['LevelWall'].SetWallVertices = function(wallVertices, wallEdgeVertices, wallTexture, edgeTexture, color) end

---`Method Public Instance`
_G['LevelWall'].GenerateVertices = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['LevelWall'].Update = function(deltaTime) end

---`Method Public Instance`
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['LevelWall'].IsPointInside = function(point) end

---`Method Public Instance Virtual`
_G['LevelWall'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(vertices:System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[], color:Microsoft.Xna.Framework.Color, level:Barotrauma.Level, giftWrap?:System.Boolean|boolean, createBody?:System.Boolean|boolean):Barotrauma.LevelWall
---@param edgePositions System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param extendAmount Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param level Barotrauma.Level
---@return Barotrauma.LevelWall
_G['LevelWall'] = function(edgePositions, extendAmount, color, level) end

---`Constructor Public Instance`
---@overload fun(vertices:System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[], color:Microsoft.Xna.Framework.Color, level:Barotrauma.Level, giftWrap?:System.Boolean|boolean, createBody?:System.Boolean|boolean):Barotrauma.LevelWall
---@param edgePositions System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param extendAmount Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param level Barotrauma.Level
---@return Barotrauma.LevelWall
_G['LevelWall'].__new = function(edgePositions, extendAmount, color, level) end

