---@meta
---@class Barotrauma.LuaInt64 : System.ValueType
---`Field Private Instance`
---@field value System.Int64|integer
_G['Int64'] = {}

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt64
---@overload fun(lo:System.Double|number, hi:System.Double|number):Barotrauma.LuaInt64
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt64
_G['Int64'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt64
---@overload fun(lo:System.Double|number, hi:System.Double|number):Barotrauma.LuaInt64
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt64
_G['Int64'].__new = function(v, radix) end

