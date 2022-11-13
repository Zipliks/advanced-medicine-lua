---@meta
---@class System.Math : System.Object
---`Field Private Static`
---@field roundPower10Double System.Double-arr|System.Double|number[]
---`Field Public Static`
---@field E System.Double|number
---`Field Public Static`
---@field PI System.Double|number
---`Field Public Static`
---@field Tau System.Double|number
_G['System']['Math'] = {}

---`Method Public Static`
---@overload fun(val1:System.Byte|integer, val2:System.Byte|integer):System.Byte|integer
---@overload fun(val1:System.Decimal, val2:System.Decimal):System.Decimal
---@overload fun(val1:System.Double|number, val2:System.Double|number):System.Double|number
---@overload fun(val1:System.Int16|integer, val2:System.Int16|integer):System.Int16|integer
---@overload fun(val1:System.Int32|integer, val2:System.Int32|integer):System.Int32|integer
---@overload fun(val1:System.Int64|integer, val2:System.Int64|integer):System.Int64|integer
---@overload fun(val1:System.IntPtr, val2:System.IntPtr):System.IntPtr
---@overload fun(val1:System.SByte|integer, val2:System.SByte|integer):System.SByte|integer
---@overload fun(val1:System.Single|number, val2:System.Single|number):System.Single|number
---@overload fun(val1:System.UInt16|integer, val2:System.UInt16|integer):System.UInt16|integer
---@overload fun(val1:System.UInt32|integer, val2:System.UInt32|integer):System.UInt32|integer
---@overload fun(val1:System.UInt64|integer, val2:System.UInt64|integer):System.UInt64|integer
---@param val1 System.UIntPtr
---@param val2 System.UIntPtr
---@return System.UIntPtr
_G['System']['Math'].Min = function(val1, val2) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@return System.Double|number
_G['System']['Math'].MinMagnitude = function(x, y) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].ReciprocalEstimate = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].ReciprocalSqrtEstimate = function(d) end

---`Method Public Static`
---@overload fun(d:System.Decimal):System.Decimal
---@overload fun(d:System.Decimal, decimals:System.Int32|integer):System.Decimal
---@overload fun(d:System.Decimal, mode:System.MidpointRounding):System.Decimal
---@overload fun(d:System.Decimal, decimals:System.Int32|integer, mode:System.MidpointRounding):System.Decimal
---@overload fun(a:System.Double|number):System.Double|number
---@overload fun(value:System.Double|number, digits:System.Int32|integer):System.Double|number
---@overload fun(value:System.Double|number, mode:System.MidpointRounding):System.Double|number
---@param value System.Double|number
---@param digits System.Int32|integer
---@param mode System.MidpointRounding
---@return System.Double|number
_G['System']['Math'].Round = function(value, digits, mode) end

---`Method Public Static`
---@overload fun(value:System.Decimal):System.Int32|integer
---@overload fun(value:System.Double|number):System.Int32|integer
---@overload fun(value:System.Int16|integer):System.Int32|integer
---@overload fun(value:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.Int64|integer):System.Int32|integer
---@overload fun(value:System.IntPtr):System.Int32|integer
---@overload fun(value:System.SByte|integer):System.Int32|integer
---@param value System.Single|number
---@return System.Int32|integer
_G['System']['Math'].Sign = function(value) end

---`Method Public Static`
---@overload fun(d:System.Decimal):System.Decimal
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Truncate = function(d) end

---`Method Private Static`
---@param min System.Math.T
---@param max System.Math.T
_G['System']['Math'].ThrowMinMaxException = function(min, max) end

---`Method Public Static`
---@param x System.Double|number
---@param n System.Int32|integer
---@return System.Double|number
_G['System']['Math'].ScaleB = function(x, n) end

---`Method Public Static`
---@overload fun(value:System.Double|number):System.Double|number
---@overload fun(value:System.Single|number):System.Single|number
---@overload fun(value:System.Int16|integer):System.Int16|integer
---@overload fun(value:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.Int64|integer):System.Int64|integer
---@overload fun(value:System.IntPtr):System.IntPtr
---@overload fun(value:System.SByte|integer):System.SByte|integer
---@param value System.Decimal
---@return System.Decimal
_G['System']['Math'].Abs = function(value) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Acos = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Acosh = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Asin = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Asinh = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Atan = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Atanh = function(d) end

---`Method Public Static`
---@param y System.Double|number
---@param x System.Double|number
---@return System.Double|number
_G['System']['Math'].Atan2 = function(y, x) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Cbrt = function(d) end

---`Method Public Static`
---@overload fun(a:System.Double|number):System.Double|number
---@param d System.Decimal
---@return System.Decimal
_G['System']['Math'].Ceiling = function(d) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Cos = function(d) end

---`Method Public Static`
---@param value System.Double|number
---@return System.Double|number
_G['System']['Math'].Cosh = function(value) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Exp = function(d) end

---`Method Public Static`
---@overload fun(d:System.Double|number):System.Double|number
---@param d System.Decimal
---@return System.Decimal
_G['System']['Math'].Floor = function(d) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@param z System.Double|number
---@return System.Double|number
_G['System']['Math'].FusedMultiplyAdd = function(x, y, z) end

---`Method Public Static`
---@param x System.Double|number
---@return System.Int32|integer
_G['System']['Math'].ILogB = function(x) end

---`Method Public Static`
---@overload fun(d:System.Double|number):System.Double|number
---@param a System.Double|number
---@param newBase System.Double|number
---@return System.Double|number
_G['System']['Math'].Log = function(a, newBase) end

---`Method Public Static`
---@param x System.Double|number
---@return System.Double|number
_G['System']['Math'].Log2 = function(x) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Log10 = function(d) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@return System.Double|number
_G['System']['Math'].Pow = function(x, y) end

---`Method Public Static`
---@param a System.Double|number
---@return System.Double|number
_G['System']['Math'].Sin = function(a) end

---`Method Public Static`
---@param x System.Double|number
---@return System.ValueTuple*1System*Double*1System*Double
_G['System']['Math'].SinCos = function(x) end

---`Method Private Static`
---@param x System.Double|number
---@param sin System.Double-ptr
---@param cos System.Double-ptr
_G['System']['Math'].SinCos = function(x, sin, cos) end

---`Method Public Static`
---@param value System.Double|number
---@return System.Double|number
_G['System']['Math'].Sinh = function(value) end

---`Method Public Static`
---@param d System.Double|number
---@return System.Double|number
_G['System']['Math'].Sqrt = function(d) end

---`Method Public Static`
---@param a System.Double|number
---@return System.Double|number
_G['System']['Math'].Tan = function(a) end

---`Method Public Static`
---@param value System.Double|number
---@return System.Double|number
_G['System']['Math'].Tanh = function(value) end

---`Method Private Static`
---@param x System.Double|number
---@param intptr System.Double-ptr
---@return System.Double|number
_G['System']['Math'].ModF = function(x, intptr) end

---`Method Private Static`
_G['System']['Math'].ThrowAbsOverflow = function() end

---`Method Public Static`
---@overload fun(a:System.Int32|integer, b:System.Int32|integer):System.Int64|integer
---@overload fun(a:System.UInt64|integer, b:System.UInt64|integer, low:System.UInt64-ref):System.UInt64|integer
---@param a System.Int64|integer
---@param b System.Int64|integer
---@param low System.Int64-ref
---@return System.Int64|integer
_G['System']['Math'].BigMul = function(a, b, low) end

---`Method Public Static`
---@param x System.Double|number
---@return System.Double|number
_G['System']['Math'].BitDecrement = function(x) end

---`Method Public Static`
---@param x System.Double|number
---@return System.Double|number
_G['System']['Math'].BitIncrement = function(x) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@return System.Double|number
_G['System']['Math'].CopySign = function(x, y) end

---`Method Public Static`
---@overload fun(a:System.Int32|integer, b:System.Int32|integer, result:System.Int32-ref):System.Int32|integer
---@overload fun(a:System.Int64|integer, b:System.Int64|integer, result:System.Int64-ref):System.Int64|integer
---@overload fun(left:System.SByte|integer, right:System.SByte|integer):System.ValueTuple*1System*SByte*1System*SByte
---@overload fun(left:System.Byte|integer, right:System.Byte|integer):System.ValueTuple*1System*Byte*1System*Byte
---@overload fun(left:System.Int16|integer, right:System.Int16|integer):System.ValueTuple*1System*Int16*1System*Int16
---@overload fun(left:System.UInt16|integer, right:System.UInt16|integer):System.ValueTuple*1System*UInt16*1System*UInt16
---@overload fun(left:System.Int32|integer, right:System.Int32|integer):System.ValueTuple*1System*Int32*1System*Int32
---@overload fun(left:System.UInt32|integer, right:System.UInt32|integer):System.ValueTuple*1System*UInt32*1System*UInt32
---@overload fun(left:System.Int64|integer, right:System.Int64|integer):System.ValueTuple*1System*Int64*1System*Int64
---@overload fun(left:System.UInt64|integer, right:System.UInt64|integer):System.ValueTuple*1System*UInt64*1System*UInt64
---@overload fun(left:System.IntPtr, right:System.IntPtr):System.ValueTuple*1System*IntPtr*1System*IntPtr
---@param left System.UIntPtr
---@param right System.UIntPtr
---@return System.ValueTuple*1System*UIntPtr*1System*UIntPtr
_G['System']['Math'].DivRem = function(left, right) end

---`Method Public Static`
---@overload fun(value:System.Byte|integer, min:System.Byte|integer, max:System.Byte|integer):System.Byte|integer
---@overload fun(value:System.Decimal, min:System.Decimal, max:System.Decimal):System.Decimal
---@overload fun(value:System.Double|number, min:System.Double|number, max:System.Double|number):System.Double|number
---@overload fun(value:System.Int16|integer, min:System.Int16|integer, max:System.Int16|integer):System.Int16|integer
---@overload fun(value:System.Int32|integer, min:System.Int32|integer, max:System.Int32|integer):System.Int32|integer
---@overload fun(value:System.Int64|integer, min:System.Int64|integer, max:System.Int64|integer):System.Int64|integer
---@overload fun(value:System.IntPtr, min:System.IntPtr, max:System.IntPtr):System.IntPtr
---@overload fun(value:System.SByte|integer, min:System.SByte|integer, max:System.SByte|integer):System.SByte|integer
---@overload fun(value:System.Single|number, min:System.Single|number, max:System.Single|number):System.Single|number
---@overload fun(value:System.UInt16|integer, min:System.UInt16|integer, max:System.UInt16|integer):System.UInt16|integer
---@overload fun(value:System.UInt32|integer, min:System.UInt32|integer, max:System.UInt32|integer):System.UInt32|integer
---@overload fun(value:System.UInt64|integer, min:System.UInt64|integer, max:System.UInt64|integer):System.UInt64|integer
---@param value System.UIntPtr
---@param min System.UIntPtr
---@param max System.UIntPtr
---@return System.UIntPtr
_G['System']['Math'].Clamp = function(value, min, max) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@return System.Double|number
_G['System']['Math'].IEEERemainder = function(x, y) end

---`Method Public Static`
---@overload fun(val1:System.Byte|integer, val2:System.Byte|integer):System.Byte|integer
---@overload fun(val1:System.Decimal, val2:System.Decimal):System.Decimal
---@overload fun(val1:System.Double|number, val2:System.Double|number):System.Double|number
---@overload fun(val1:System.Int16|integer, val2:System.Int16|integer):System.Int16|integer
---@overload fun(val1:System.Int32|integer, val2:System.Int32|integer):System.Int32|integer
---@overload fun(val1:System.Int64|integer, val2:System.Int64|integer):System.Int64|integer
---@overload fun(val1:System.IntPtr, val2:System.IntPtr):System.IntPtr
---@overload fun(val1:System.SByte|integer, val2:System.SByte|integer):System.SByte|integer
---@overload fun(val1:System.Single|number, val2:System.Single|number):System.Single|number
---@overload fun(val1:System.UInt16|integer, val2:System.UInt16|integer):System.UInt16|integer
---@overload fun(val1:System.UInt32|integer, val2:System.UInt32|integer):System.UInt32|integer
---@overload fun(val1:System.UInt64|integer, val2:System.UInt64|integer):System.UInt64|integer
---@param val1 System.UIntPtr
---@param val2 System.UIntPtr
---@return System.UIntPtr
_G['System']['Math'].Max = function(val1, val2) end

---`Method Public Static`
---@param x System.Double|number
---@param y System.Double|number
---@return System.Double|number
_G['System']['Math'].MaxMagnitude = function(x, y) end

---`Constructor Private Static`
---@return System.Math
_G['System']['Math'] = function() end

---`Constructor Private Static`
---@return System.Math
_G['System']['Math'].__new = function() end

