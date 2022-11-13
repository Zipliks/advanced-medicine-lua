---@meta
---@class Voronoi2.VoronoiCell : System.Object
---`Field Public Instance`
---@field Edges System.Collections.Generic.List*1Voronoi2*GraphEdge|Voronoi2.GraphEdge[]
---`Field Public Instance`
---@field Site Voronoi2.Site
---`Field Public Instance`
---@field BodyVertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Field Public Instance`
---@field Body FarseerPhysics.Dynamics.Body
---`Field Public Instance`
---@field CellType Voronoi2.CellType
---`Field Public Instance`
---@field Translation Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Island System.Boolean|boolean
---`Field Public Instance`
---@field IsDestructible System.Boolean|boolean
---`Field Public Instance`
---@field DoesDamage System.Boolean|boolean
---`Field Public Instance`
---@field OnDestroyed System.Action|(fun())
---`Getter Public Instance`
---@field Center Microsoft.Xna.Framework.Vector2
_G['Voronoi2']['VoronoiCell'] = {}

---`Method Public Instance`
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Voronoi2']['VoronoiCell'].IsPointInside = function(point) end

---`Constructor Public Instance`
---@overload fun(vertices:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]):Voronoi2.VoronoiCell
---@param site Voronoi2.Site
---@return Voronoi2.VoronoiCell
_G['Voronoi2']['VoronoiCell'] = function(site) end

---`Constructor Public Instance`
---@overload fun(vertices:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]):Voronoi2.VoronoiCell
---@param site Voronoi2.Site
---@return Voronoi2.VoronoiCell
_G['Voronoi2']['VoronoiCell'].__new = function(site) end

