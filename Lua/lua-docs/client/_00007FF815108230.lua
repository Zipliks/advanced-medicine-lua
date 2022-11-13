---@meta
---@class Barotrauma.Level.InterestingPosition : System.ValueType
---`Field Public Instance`
---@field Position Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field PositionType Barotrauma.Level.PositionType
---`Field Public Instance`
---@field IsValid System.Boolean|boolean
---`Field Public Instance`
---@field Submarine Barotrauma.Submarine
---`Field Public Instance`
---@field Ruin Barotrauma.RuinGeneration.Ruin
---`Field Public Instance`
---@field Cave Barotrauma.Level.Cave
_G['Level']['InterestingPosition'] = {}

---`Constructor Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Point, positionType:Barotrauma.Level.PositionType, submarine?:Barotrauma.Submarine, isValid?:System.Boolean|boolean):Barotrauma.Level.InterestingPosition
---@overload fun(position:Microsoft.Xna.Framework.Point, positionType:Barotrauma.Level.PositionType, ruin:Barotrauma.RuinGeneration.Ruin, isValid?:System.Boolean|boolean):Barotrauma.Level.InterestingPosition
---@param position Microsoft.Xna.Framework.Point
---@param positionType Barotrauma.Level.PositionType
---@param cave Barotrauma.Level.Cave
---@param isValid? System.Boolean|boolean
---@return Barotrauma.Level.InterestingPosition
_G['Level']['InterestingPosition'] = function(position, positionType, cave, isValid) end

---`Constructor Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Point, positionType:Barotrauma.Level.PositionType, submarine?:Barotrauma.Submarine, isValid?:System.Boolean|boolean):Barotrauma.Level.InterestingPosition
---@overload fun(position:Microsoft.Xna.Framework.Point, positionType:Barotrauma.Level.PositionType, ruin:Barotrauma.RuinGeneration.Ruin, isValid?:System.Boolean|boolean):Barotrauma.Level.InterestingPosition
---@param position Microsoft.Xna.Framework.Point
---@param positionType Barotrauma.Level.PositionType
---@param cave Barotrauma.Level.Cave
---@param isValid? System.Boolean|boolean
---@return Barotrauma.Level.InterestingPosition
_G['Level']['InterestingPosition'].__new = function(position, positionType, cave, isValid) end

