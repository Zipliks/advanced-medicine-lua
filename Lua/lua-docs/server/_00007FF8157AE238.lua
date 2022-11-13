---@meta
---@class Barotrauma.LuaInt16 : System.ValueType
---`Field Private Instance`
---@field value System.Int16|integer
_G['Int16'] = {}
_G['Short'] = _G['Int16']

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt16
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt16
_G['Int16'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaInt16
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaInt16
_G['Int16'].__new = function(v, radix) end

