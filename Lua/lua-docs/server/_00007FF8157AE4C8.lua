---@meta
---@class Barotrauma.LuaInt32 : System.ValueType
---`Field Private Instance`
---@field value System.Int32|integer
_G['Int32'] = {}

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt32
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt32
_G['Int32'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt32
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt32
_G['Int32'].__new = function(v, radix) end

