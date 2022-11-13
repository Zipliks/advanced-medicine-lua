---@meta
---@class Microsoft.Xna.Framework.MathHelper : System.Object
---`Field Public Static`
---@field E System.Single|number
---`Field Public Static`
---@field Log10E System.Single|number
---`Field Public Static`
---@field Log2E System.Single|number
---`Field Public Static`
---@field Pi System.Single|number
---`Field Public Static`
---@field PiOver2 System.Single|number
---`Field Public Static`
---@field PiOver4 System.Single|number
---`Field Public Static`
---@field TwoPi System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'] = {}

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@param value3 System.Single|number
---@param amount1 System.Single|number
---@param amount2 System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].Barycentric = function(value1, value2, value3, amount1, amount2) end

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@param value3 System.Single|number
---@param value4 System.Single|number
---@param amount System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].CatmullRom = function(value1, value2, value3, value4, amount) end

---`Method Public Static`
---@overload fun(value:System.Single|number, min:System.Single|number, max:System.Single|number):System.Single|number
---@param value System.Int32|integer
---@param min System.Int32|integer
---@param max System.Int32|integer
---@return System.Int32|integer
_G['Microsoft']['Xna']['Framework']['MathHelper'].Clamp = function(value, min, max) end

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].Distance = function(value1, value2) end

---`Method Public Static`
---@param value1 System.Single|number
---@param tangent1 System.Single|number
---@param value2 System.Single|number
---@param tangent2 System.Single|number
---@param amount System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].Hermite = function(value1, tangent1, value2, tangent2, amount) end

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@param amount System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].Lerp = function(value1, value2, amount) end

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@param amount System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].LerpPrecise = function(value1, value2, amount) end

---`Method Public Static`
---@overload fun(value1:System.Single|number, value2:System.Single|number):System.Single|number
---@param value1 System.Int32|integer
---@param value2 System.Int32|integer
---@return System.Int32|integer
_G['Microsoft']['Xna']['Framework']['MathHelper'].Max = function(value1, value2) end

---`Method Public Static`
---@overload fun(value1:System.Single|number, value2:System.Single|number):System.Single|number
---@param value1 System.Int32|integer
---@param value2 System.Int32|integer
---@return System.Int32|integer
_G['Microsoft']['Xna']['Framework']['MathHelper'].Min = function(value1, value2) end

---`Method Public Static`
---@param value1 System.Single|number
---@param value2 System.Single|number
---@param amount System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].SmoothStep = function(value1, value2, amount) end

---`Method Public Static`
---@param radians System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].ToDegrees = function(radians) end

---`Method Public Static`
---@param degrees System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].ToRadians = function(degrees) end

---`Method Public Static`
---@param angle System.Single|number
---@return System.Single|number
_G['Microsoft']['Xna']['Framework']['MathHelper'].WrapAngle = function(angle) end

---`Method Public Static`
---@param value System.Int32|integer
---@return System.Boolean|boolean
_G['Microsoft']['Xna']['Framework']['MathHelper'].IsPowerOfTwo = function(value) end

