---@meta
---@class Microsoft.Xna.Framework.Vector4 : System.ValueType
---@operator div(Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@operator div(System.Single|number):Microsoft.Xna.Framework.Vector4
---@operator unm:Microsoft.Xna.Framework.Vector4
---@operator add(Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@operator mul(Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@operator mul(System.Single|number):Microsoft.Xna.Framework.Vector4
---`Field Public Instance`
---@field X System.Single|number
---`Field Public Instance`
---@field Y System.Single|number
---`Field Public Instance`
---@field Z System.Single|number
---`Field Public Instance`
---@field W System.Single|number
---`Field Private Static`
---@field zero Microsoft.Xna.Framework.Vector4
---`Field Private Static`
---@field one Microsoft.Xna.Framework.Vector4
---`Field Private Static`
---@field unitX Microsoft.Xna.Framework.Vector4
---`Field Private Static`
---@field unitY Microsoft.Xna.Framework.Vector4
---`Field Private Static`
---@field unitZ Microsoft.Xna.Framework.Vector4
---`Field Private Static`
---@field unitW Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field Zero Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field One Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field UnitX Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field UnitY Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field UnitZ Microsoft.Xna.Framework.Vector4
---`Getter Public Static`
---@field UnitW Microsoft.Xna.Framework.Vector4
---`Getter NonPublic Instance`
---@field DebugDisplayString System.String|string
_G['Vector4'] = {}

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Add = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, value3:Microsoft.Xna.Framework.Vector4, amount1:System.Single|number, amount2:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param value3 Microsoft.Xna.Framework.Vector4-ref
---@param amount1 System.Single|number
---@param amount2 System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Barycentric = function(value1, value2, value3, amount1, amount2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, value3:Microsoft.Xna.Framework.Vector4, value4:Microsoft.Xna.Framework.Vector4, amount:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param value3 Microsoft.Xna.Framework.Vector4-ref
---@param value4 Microsoft.Xna.Framework.Vector4-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].CatmullRom = function(value1, value2, value3, value4, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, min:Microsoft.Xna.Framework.Vector4, max:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param min Microsoft.Xna.Framework.Vector4-ref
---@param max Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Clamp = function(value1, min, max, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result System.Single-ref
_G['Vector4'].Distance = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result System.Single-ref
_G['Vector4'].DistanceSquared = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, divider:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value1:Microsoft.Xna.Framework.Vector4-ref, divider:System.Single|number, result:Microsoft.Xna.Framework.Vector4-ref)
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Divide = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result System.Single-ref
_G['Vector4'].Dot = function(value1, value2, result) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param other Microsoft.Xna.Framework.Vector4
---@return System.Boolean|boolean
_G['Vector4'].Equals = function(other) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Vector4'].GetHashCode = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, tangent1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, tangent2:Microsoft.Xna.Framework.Vector4, amount:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param tangent1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param tangent2 Microsoft.Xna.Framework.Vector4-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Hermite = function(value1, tangent1, value2, tangent2, amount, result) end

---`Method Public Instance`
---@return System.Single|number
_G['Vector4'].Length = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Vector4'].LengthSquared = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, amount:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Lerp = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, amount:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].LerpPrecise = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Max = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Min = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, scaleFactor:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value1:Microsoft.Xna.Framework.Vector4-ref, scaleFactor:System.Single|number, result:Microsoft.Xna.Framework.Vector4-ref)
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Multiply = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Negate = function(value, result) end

---`Method Public Instance`
_G['Vector4'].Normalize = function() end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Normalize = function(value, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4, amount:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].SmoothStep = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector4, value2:Microsoft.Xna.Framework.Vector4):Microsoft.Xna.Framework.Vector4
---@param value1 Microsoft.Xna.Framework.Vector4-ref
---@param value2 Microsoft.Xna.Framework.Vector4-ref
---@param result Microsoft.Xna.Framework.Vector4-ref
_G['Vector4'].Subtract = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector2, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2, rotation:Microsoft.Xna.Framework.Quaternion):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, rotation:Microsoft.Xna.Framework.Quaternion):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector4, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector4, rotation:Microsoft.Xna.Framework.Quaternion):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector2-ref, rotation:Microsoft.Xna.Framework.Quaternion-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector3-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector3-ref, rotation:Microsoft.Xna.Framework.Quaternion-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector4-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector4-ref, rotation:Microsoft.Xna.Framework.Quaternion-ref, result:Microsoft.Xna.Framework.Vector4-ref)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[], sourceIndex:System.Int32|integer, matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[], sourceIndex:System.Int32|integer, rotation:Microsoft.Xna.Framework.Quaternion-ref, destinationArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[], matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[])
---@param sourceArray Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[]
---@param rotation Microsoft.Xna.Framework.Quaternion-ref
---@param destinationArray Microsoft.Xna.Framework.Vector4-arr|Microsoft.Xna.Framework.Vector4[]
_G['Vector4'].Transform = function(sourceArray, rotation, destinationArray) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Vector4'].ToString = function() end

---`Method Public Instance`
---@param x System.Single-ref
---@param y System.Single-ref
---@param z System.Single-ref
---@param w System.Single-ref
_G['Vector4'].Deconstruct = function(x, y, z, w) end

---`Constructor Private Static`
---@overload fun():Microsoft.Xna.Framework.Vector4
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value System.Single|number
---@return Microsoft.Xna.Framework.Vector4
_G['Vector4'] = function(value) end

---`Constructor Private Static`
---@overload fun():Microsoft.Xna.Framework.Vector4
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value System.Single|number
---@return Microsoft.Xna.Framework.Vector4
_G['Vector4'].__new = function(value) end

---`Constructor Public Instance`
---@overload fun():Microsoft.Xna.Framework.Vector4
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value System.Single|number
---@return Microsoft.Xna.Framework.Vector4
_G['Vector4'] = function(value) end

---`Constructor Public Instance`
---@overload fun():Microsoft.Xna.Framework.Vector4
---@overload fun(x:System.Single|number, y:System.Single|number, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector2, z:System.Single|number, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@overload fun(value:Microsoft.Xna.Framework.Vector3, w:System.Single|number):Microsoft.Xna.Framework.Vector4
---@param value System.Single|number
---@return Microsoft.Xna.Framework.Vector4
_G['Vector4'].__new = function(value) end

