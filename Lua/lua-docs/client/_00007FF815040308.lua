---@meta
---@class Barotrauma.LuaByte : System.ValueType
---`Field Private Instance`
---@field value System.Byte|integer
_G['Byte'] = {}

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaByte
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaByte
_G['Byte'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaByte
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaByte
_G['Byte'].__new = function(v, radix) end

