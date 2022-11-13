---@meta
---@class Voronoi2.GraphEdge : System.Object
---`Field Public Instance`
---@field Point1 Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Point2 Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Site1 Voronoi2.Site
---`Field Public Instance`
---@field Site2 Voronoi2.Site
---`Field Public Instance`
---@field Cell1 Voronoi2.VoronoiCell
---`Field Public Instance`
---@field Cell2 Voronoi2.VoronoiCell
---`Field Public Instance`
---@field IsSolid System.Boolean|boolean
---`Field Public Instance`
---@field OutsideLevel System.Boolean|boolean
---`Field Public Instance`
---@field NextToCave System.Boolean|boolean
---`Field Public Instance`
---@field NextToMainPath System.Boolean|boolean
---`Field Public Instance`
---@field NextToSidePath System.Boolean|boolean
---`Getter Public Instance`
---@field Center Microsoft.Xna.Framework.Vector2
_G['Voronoi2']['GraphEdge'] = {}

---`Method Public Instance`
---@param cell Voronoi2.VoronoiCell
---@return Voronoi2.VoronoiCell
_G['Voronoi2']['GraphEdge'].AdjacentCell = function(cell) end

---`Method Public Instance`
---@param cell Voronoi2.VoronoiCell
---@return Microsoft.Xna.Framework.Vector2
_G['Voronoi2']['GraphEdge'].GetNormal = function(cell) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Voronoi2']['GraphEdge'].ToString = function() end

---`Constructor Public Instance`
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return Voronoi2.GraphEdge
_G['Voronoi2']['GraphEdge'] = function(point1, point2) end

---`Constructor Public Instance`
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return Voronoi2.GraphEdge
_G['Voronoi2']['GraphEdge'].__new = function(point1, point2) end

