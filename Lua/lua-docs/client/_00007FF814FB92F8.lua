---@meta
---@class Microsoft.Xna.Framework.Vector2 : System.ValueType
---@operator unm:Microsoft.Xna.Framework.Vector2
---@operator add(Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@operator mul(Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@operator mul(System.Single|number):Microsoft.Xna.Framework.Vector2
---@operator div(Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@operator div(System.Single|number):Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field X System.Single|number
---`Field Public Instance`
---@field Y System.Single|number
---`Field Private Static`
---@field zeroVector Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field unitVector Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field unitXVector Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field unitYVector Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field Zero Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field One Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field UnitX Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field UnitY Microsoft.Xna.Framework.Vector2
---`Getter NonPublic Instance`
---@field DebugDisplayString System.String|string
_G['Vector2'] = {}

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Add = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, value3:Microsoft.Xna.Framework.Vector2, amount1:System.Single|number, amount2:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param value3 Microsoft.Xna.Framework.Vector2-ref
---@param amount1 System.Single|number
---@param amount2 System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Barycentric = function(value1, value2, value3, amount1, amount2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, value3:Microsoft.Xna.Framework.Vector2, value4:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param value3 Microsoft.Xna.Framework.Vector2-ref
---@param value4 Microsoft.Xna.Framework.Vector2-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].CatmullRom = function(value1, value2, value3, value4, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, min:Microsoft.Xna.Framework.Vector2, max:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param min Microsoft.Xna.Framework.Vector2-ref
---@param max Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Clamp = function(value1, min, max, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result System.Single-ref
_G['Vector2'].Distance = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result System.Single-ref
_G['Vector2'].DistanceSquared = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@overload fun(value1:Microsoft.Xna.Framework.Vector2-ref, value2:Microsoft.Xna.Framework.Vector2-ref, result:Microsoft.Xna.Framework.Vector2-ref)
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, divider:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param divider System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Divide = function(value1, divider, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):System.Single|number
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result System.Single-ref
_G['Vector2'].Dot = function(value1, value2, result) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param other Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Vector2'].Equals = function(other) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Vector2'].GetHashCode = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, tangent1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, tangent2:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param tangent1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param tangent2 Microsoft.Xna.Framework.Vector2-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Hermite = function(value1, tangent1, value2, tangent2, amount, result) end

---`Method Public Instance`
---@return System.Single|number
_G['Vector2'].Length = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Vector2'].LengthSquared = function() end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Lerp = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].LerpPrecise = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Max = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Min = function(value1, value2, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@overload fun(value1:Microsoft.Xna.Framework.Vector2-ref, value2:Microsoft.Xna.Framework.Vector2-ref, result:Microsoft.Xna.Framework.Vector2-ref)
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, scaleFactor:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param scaleFactor System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Multiply = function(value1, scaleFactor, result) end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Negate = function(value, result) end

---`Method Public Instance`
_G['Vector2'].Normalize = function() end

---`Method Public Static`
---@overload fun(value:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Normalize = function(value, result) end

---`Method Public Static`
---@overload fun(vector:Microsoft.Xna.Framework.Vector2, normal:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param vector Microsoft.Xna.Framework.Vector2-ref
---@param normal Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Reflect = function(vector, normal, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param amount System.Single|number
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].SmoothStep = function(value1, value2, amount, result) end

---`Method Public Static`
---@overload fun(value1:Microsoft.Xna.Framework.Vector2, value2:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@param value1 Microsoft.Xna.Framework.Vector2-ref
---@param value2 Microsoft.Xna.Framework.Vector2-ref
---@param result Microsoft.Xna.Framework.Vector2-ref
_G['Vector2'].Subtract = function(value1, value2, result) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Vector2'].ToString = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Point
_G['Vector2'].ToPoint = function() end

---`Method Public Static`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector2
---@overload fun(position:Microsoft.Xna.Framework.Vector2-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector2-ref)
---@overload fun(value:Microsoft.Xna.Framework.Vector2, rotation:Microsoft.Xna.Framework.Quaternion):Microsoft.Xna.Framework.Vector2
---@overload fun(value:Microsoft.Xna.Framework.Vector2-ref, rotation:Microsoft.Xna.Framework.Quaternion-ref, result:Microsoft.Xna.Framework.Vector2-ref)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], sourceIndex:System.Int32|integer, matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], sourceIndex:System.Int32|integer, rotation:Microsoft.Xna.Framework.Quaternion-ref, destinationArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[])
---@param sourceArray Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param rotation Microsoft.Xna.Framework.Quaternion-ref
---@param destinationArray Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['Vector2'].Transform = function(sourceArray, rotation, destinationArray) end

---`Method Public Static`
---@overload fun(normal:Microsoft.Xna.Framework.Vector2, matrix:Microsoft.Xna.Framework.Matrix):Microsoft.Xna.Framework.Vector2
---@overload fun(normal:Microsoft.Xna.Framework.Vector2-ref, matrix:Microsoft.Xna.Framework.Matrix-ref, result:Microsoft.Xna.Framework.Vector2-ref)
---@overload fun(sourceArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], sourceIndex:System.Int32|integer, matrix:Microsoft.Xna.Framework.Matrix-ref, destinationArray:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], destinationIndex:System.Int32|integer, length:System.Int32|integer)
---@param sourceArray Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param matrix Microsoft.Xna.Framework.Matrix-ref
---@param destinationArray Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['Vector2'].TransformNormal = function(sourceArray, matrix, destinationArray) end

---`Method Public Instance`
---@param x System.Single-ref
---@param y System.Single-ref
_G['Vector2'].Deconstruct = function(x, y) end

---`Constructor Public Instance`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Vector2'] = function() end

---`Constructor Public Instance`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Vector2'].__new = function() end

---`Constructor Private Static`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Vector2'] = function() end

---`Constructor Private Static`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@overload fun(value:System.Single|number):Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Vector2'].__new = function() end

