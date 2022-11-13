---@meta
---@class Barotrauma.LuaUInt64 : System.ValueType
---`Field Private Instance`
---@field value System.UInt64|integer
_G['UInt64'] = {}

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaUInt64
---@overload fun(lo:System.Double|number, hi:System.Double|number):Barotrauma.LuaUInt64
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaUInt64
_G['UInt64'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaUInt64
---@overload fun(lo:System.Double|number, hi:System.Double|number):Barotrauma.LuaUInt64
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaUInt64
_G['UInt64'].__new = function(v, radix) end

