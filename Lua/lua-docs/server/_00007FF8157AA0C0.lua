---@meta
---@class Microsoft.Xna.Framework.Vector3 : System.ValueType
---@operator unm:Microsoft.Xna.Framework.Vector3
---@operator mul(Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@operator mul(System.Single|number):Microsoft.Xna.Framework.Vector3
---@operator div(Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@operator div(System.Single|number):Microsoft.Xna.Framework.Vector3
---@operator add(Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---`Field Public Instance`
---@field X System.Single|number
---`Field Public Instance`
---@field Y System.Single|number
---`Field Public Instance`
---@field Z System.Single|number
---`Field Private Static`
---@field zero Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field one Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field unitX Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field unitY Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field unitZ Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field up Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field down Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field right Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field left Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field forward Microsoft.Xna.Framework.Vector3
---`Field Private Static`
---@field backward Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Zero Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field One Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field UnitX Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field UnitY Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field UnitZ Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Up Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Down Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Right Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Left Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Forward Microsoft.Xna.Framework.Vector3
---`Getter Public Static`
---@field Backward Microsoft.Xna.Framework.Vector3
---`Getter NonPublic Instance`
---@field DebugDisplayString System.String|string
_G['Vector3'] = {}

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Add = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, value3:Microsoft.Xna.Framework.Vector3, amount1:System.Single|number, amount2:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param value3 Microsoft.Xna.Framework.Vector3-ref
---@param amount1 System.Single|number
---@param amount2 System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Barycentric = function(value1, value2, value3, amount1, amount2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, value3:Microsoft.Xna.Framework.Vector3, value4:Microsoft.Xna.Framework.Vector3, amount:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param value3 Microsoft.Xna.Framework.Vector3-ref
---@param value4 Microsoft.Xna.Framework.Vector3-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].CatmullRom = function(value1, value2, value3, value4, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, min:Microsoft.Xna.Framework.Vector3, max:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param min Microsoft.Xna.Framework.Vector3-ref
---@param max Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Clamp = function(value1, min, max, result) end

---`Method Public Static`
---@overload fun(vector1:Microsoft.Xna.Framework.Vector3, vector2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param vector1 Microsoft.Xna.Framework.Vector3-ref
---@param vector2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Cross = function(vector1, vector2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result System.Single-ref
_G['Vector3'].Distance = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result System.Single-ref
_G['Vector3'].DistanceSquared = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, divider:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value1:Microsoft.Xna.Framework.Vector3-ref, divider:System.Single|number, result:Microsoft.Xna.Framework.Vector3-ref)
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Divide = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result System.Single-ref
_G['Vector3'].Dot = function(value1, value2, result) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param other Microsoft.Xna.Framework.Vector3
---@return System.Boolean|boolean
_G['Vector3'].Equals = function(other) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Vector3'].GetHashCode = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, tangent1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, tangent2:Microsoft.Xna.Framework.Vector3, amount:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param tangent1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param tangent2 Microsoft.Xna.Framework.Vector3-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Hermite = function(value1, tangent1, value2, tangent2, amount, result) end

---`Method Public Instance`
---@return System.Single|number
_G['Vector3'].Length = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Vector3'].LengthSquared = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, amount:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Lerp = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, amount:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].LerpPrecise = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Max = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Min = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, scaleFactor:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value1:Microsoft.Xna.Framework.Vector3-ref, scaleFactor:System.Single|number, result:Microsoft.Xna.Framework.Vector3-ref)
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Multiply = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Negate = function(value, result) end

---`Method Public Instance`
_G['Vector3'].Normalize = function() end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Normalize = function(value, result) end

---`Method Public Static`
---@overload fun(vector:Microsoft.Xna.Framework.Vector3, normal:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param vector Microsoft.Xna.Framework.Vector3-ref
---@param normal Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Reflect = function(vector, normal, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3, amount:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].SmoothStep = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector3, value2:Microsoft.Xna.Framework.Vector3):Microsoft.Xna.Framework.Vector3
---@param value1 Microsoft.Xna.Framework.Vector3-ref
---@param value2 Microsoft.Xna.Framework.Vector3-ref
---@param result Microsoft.Xna.Framework.Vector3-ref
_G['Vector3'].Subtract = function(value1, value2, result) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Vector3'].ToString = function() end

---`Method Public Static`
---@overload fun(position:Microsoft.Xna.Framework.Vector3, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector3
---@overload fun(position:Microsoft.Xna.Framework.Vector3-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector3-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector3, rotation:Microsoft.Xna.Framework.Quaternion):Microsoft.Xna.Framework.Vector3
---@overload fun(value:Microsoft.Xna.Framework.Vector3-ref, rotation:Microsoft.Xna.Framework.Quaternion-ref, result:Microsoft.Xna.Framework.Vector3-ref)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], sourceIndex:System.Int32|integer, matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], sourceIndex:System.Int32|integer, rotation:Microsoft.Xna.Framework.Quaternion-ref, destinationArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[])
---@param sourceArray Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[]
---@param rotation Microsoft.Xna.Framework.Quaternion-ref
---@param destinationArray Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[]
_G['Vector3'].Transform = function(sourceArray, rotation, destinationArray) end

---`Method Public Static`
---@overload fun(normal:Microsoft.Xna.Framework.Vector3, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector3
---@overload fun(normal:Microsoft.Xna.Framework.Vector3-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector3-ref)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], sourceIndex:System.Int32|integer, matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@param sourceArray Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[]
---@param matrix Microsoft.Xna.Framework.Matrix-ref
---@param destinationArray Microsoft.Xna.Framework.Vector3-arr|Microsoft.Xna.Framework.Vector3[]
_G['Vector3'].TransformNormal = function(sourceArray, matrix, destinationArray) end

---`Method Public Instance`
---@param x System.Single-ref
---@param y System.Single-ref
---@param z System.Single-ref
_G['Vector3'].Deconstruct = function(x, y, z) end

---`Constructor Private Static`
---@overload fun():Microsoft.Xna.Framework.Vector3
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector2
---@param z System.Single|number
---@return Microsoft.Xna.Framework.Vector3
_G['Vector3'] = function(value, z) end

---`Constructor Private Static`
---@overload fun():Microsoft.Xna.Framework.Vector3
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector2
---@param z System.Single|number
---@return Microsoft.Xna.Framework.Vector3
_G['Vector3'].__new = function(value, z) end

---`Constructor Public Instance`
---@overload fun():Microsoft.Xna.Framework.Vector3
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector2
---@param z System.Single|number
---@return Microsoft.Xna.Framework.Vector3
_G['Vector3'] = function(value, z) end

---`Constructor Public Instance`
---@overload fun():Microsoft.Xna.Framework.Vector3
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number):Microsoft.Xna.Framework.Vector3
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector3
---@param value Microsoft.Xna.Framework.Vector2
---@param z System.Single|number
---@return Microsoft.Xna.Framework.Vector3
_G['Vector3'].__new = function(value, z) end

