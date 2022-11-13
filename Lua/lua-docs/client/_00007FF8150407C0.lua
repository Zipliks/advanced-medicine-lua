---@meta
---@class Barotrauma.LuaUInt16 : System.ValueType
---`Field Private Instance`
---@field value System.UInt16|integer
_G['UInt16'] = {}
_G['UShort'] = _G['UInt16']

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaUInt16
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaUInt16
_G['UInt16'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaUInt16
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaUInt16
_G['UInt16'].__new = function(v, radix) end

