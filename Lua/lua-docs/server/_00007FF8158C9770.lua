---@meta
---@class Barotrauma.EntityGrid : System.Object
---`Field Private Instance`
---@field allEntities System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Instance`
---@field entities System.Collections.Generic.List|System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[][]
---`Field Private Instance`
---@field limits Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field cellSize System.Single|number
---`Field Public Instance`
---@field Submarine Barotrauma.Submarine
---`Getter Public Instance`
---@field WorldRect Microsoft.Xna.Framework.Rectangle
_G['EntityGrid'] = {}

---`Method Private Instance`
_G['EntityGrid'].InitializeGrid = function() end

---`Method Public Instance`
---@param entity Barotrauma.MapEntity
_G['EntityGrid'].InsertEntity = function(entity) end

---`Method Public Instance`
---@param entity Barotrauma.MapEntity
_G['EntityGrid'].RemoveEntity = function(entity) end

---`Method Public Instance`
_G['EntityGrid'].Clear = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*MapEntity|(fun():Barotrauma.MapEntity)
_G['EntityGrid'].GetAllEntities = function() end

---`Method Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['EntityGrid'].GetEntities = function(position) end

---`Method Public Instance`
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle):Microsoft.Xna.Framework.Rectangle
---@param position Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Point
_G['EntityGrid'].GetIndices = function(position) end

---`Constructor Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, cellSize:System.Single|number):Barotrauma.EntityGrid
---@param worldRect Microsoft.Xna.Framework.Rectangle
---@param cellSize System.Single|number
---@return Barotrauma.EntityGrid
_G['EntityGrid'] = function(worldRect, cellSize) end

---`Constructor Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, cellSize:System.Single|number):Barotrauma.EntityGrid
---@param worldRect Microsoft.Xna.Framework.Rectangle
---@param cellSize System.Single|number
---@return Barotrauma.EntityGrid
_G['EntityGrid'].__new = function(worldRect, cellSize) end

