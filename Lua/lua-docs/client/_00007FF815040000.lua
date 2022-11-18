---@meta
---@class Microsoft.Xna.Framework.Point : System.ValueType
---@operator add(Microsoft.Xna.Framework.Point):Microsoft.Xna.Framework.Point
---@operator mul(Microsoft.Xna.Framework.Point):Microsoft.Xna.Framework.Point
---@operator div(Microsoft.Xna.Framework.Point):Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field X System.Int32|integer
---`Field Public Instance`
---@field Y System.Int32|integer
---`Field Private Static`
---@field zeroPoint Microsoft.Xna.Framework.Point
---`Getter Public Static`
---@field Zero Microsoft.Xna.Framework.Point
---`Getter NonPublic Instance`
---@field DebugDisplayString System.String|string
_G['Point'] = {}

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param other Microsoft.Xna.Framework.Point
---@return System.Boolean|boolean
_G['Point'].Equals = function(other) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Point'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Point'].ToString = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Point'].ToVector2 = function() end

---`Constructor Public Instance`
---@overload fun(x:System.Int32|integer, y:System.Int32|integer):Microsoft.Xna.Framework.Point
---@overload fun(value:System.Int32|integer):Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Point
_G['Point'] = function() end

---`Constructor Public Instance`
---@overload fun(x:System.Int32|integer, y:System.Int32|integer):Microsoft.Xna.Framework.Point
---@overload fun(value:System.Int32|integer):Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Point
_G['Point'].__new = function() end

---`Constructor Private Static`
---@overload fun(x:System.Int32|integer, y:System.Int32|integer):Microsoft.Xna.Framework.Point
---@overload fun(value:System.Int32|integer):Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Point
_G['Point'] = function() end

---`Constructor Private Static`
---@overload fun(x:System.Int32|integer, y:System.Int32|integer):Microsoft.Xna.Framework.Point
---@overload fun(value:System.Int32|integer):Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Point
_G['Point'].__new = function() end

