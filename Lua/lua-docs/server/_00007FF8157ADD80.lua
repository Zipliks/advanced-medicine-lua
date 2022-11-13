---@meta
---@class Barotrauma.LuaSByte : System.ValueType
---`Field Private Instance`
---@field value System.SByte|integer
_G['SByte'] = {}

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaSByte
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaSByte
_G['SByte'] = function(v, radix) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaSByte
---@param v System.String|string
---@param radix? System.Int32|integer
---@return Barotrauma.LuaSByte
_G['SByte'].__new = function(v, radix) end

