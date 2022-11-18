---@meta
---@class System.MathF : System.Object
---`Field Private Static`
---@field roundPower10Single System.Single-arr|System.Single|number[]
---`Field Public Static`
---@field E System.Single|number
---`Field Public Static`
---@field PI System.Single|number
---`Field Public Static`
---@field Tau System.Single|number
_G['System']['MathF'] = {}

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Acos = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Acosh = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Asin = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Asinh = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Atan = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Atanh = function(x) end

---`Method Public Static`
---@param y System.Single|number
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Atan2 = function(y, x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Cbrt = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Ceiling = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Cos = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Cosh = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Exp = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Floor = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@param z System.Single|number
---@return System.Single|number
_G['System']['MathF'].FusedMultiplyAdd = function(x, y, z) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Int32|integer
_G['System']['MathF'].ILogB = function(x) end

---`Method Public Static`
---@overload fun(x:System.Single|number):System.Single|number
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].Log = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Log2 = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Log10 = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].Pow = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Sin = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.ValueTuple*1System*Single*1System*Single
_G['System']['MathF'].SinCos = function(x) end

---`Method Private Static`
---@param x System.Single|number
---@param sin System.Single-ptr
---@param cos System.Single-ptr
_G['System']['MathF'].SinCos = function(x, sin, cos) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Sinh = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Sqrt = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Tan = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Tanh = function(x) end

---`Method Private Static`
---@param x System.Single|number
---@param intptr System.Single-ptr
---@return System.Single|number
_G['System']['MathF'].ModF = function(x, intptr) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Abs = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].BitDecrement = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].BitIncrement = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].CopySign = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].IEEERemainder = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].Max = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].MaxMagnitude = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].Min = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@param y System.Single|number
---@return System.Single|number
_G['System']['MathF'].MinMagnitude = function(x, y) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].ReciprocalEstimate = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].ReciprocalSqrtEstimate = function(x) end

---`Method Public Static`
---@overload fun(x:System.Single|number):System.Single|number
---@overload fun(x:System.Single|number, digits:System.Int32|integer):System.Single|number
---@overload fun(x:System.Single|number, mode:System.MidpointRounding):System.Single|number
---@param x System.Single|number
---@param digits System.Int32|integer
---@param mode System.MidpointRounding
---@return System.Single|number
_G['System']['MathF'].Round = function(x, digits, mode) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Int32|integer
_G['System']['MathF'].Sign = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@return System.Single|number
_G['System']['MathF'].Truncate = function(x) end

---`Method Public Static`
---@param x System.Single|number
---@param n System.Int32|integer
---@return System.Single|number
_G['System']['MathF'].ScaleB = function(x, n) end

---`Constructor Private Static`
---@return System.MathF
_G['System']['MathF'] = function() end

---`Constructor Private Static`
---@return System.MathF
_G['System']['MathF'].__new = function() end

