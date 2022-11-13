---@meta
---@class Barotrauma.LuaSingle : System.ValueType
---`Field Private Instance`
---@field value System.Single|number
_G['Single'] = {}
_G['Float'] = _G['Single']

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaSingle
---@param v System.String|string
---@return Barotrauma.LuaSingle
_G['Single'] = function(v) end

---`Constructor Public Instance`
---@overload fun(v:System.Double|number):Barotrauma.LuaSingle
---@param v System.String|string
---@return Barotrauma.LuaSingle
_G['Single'].__new = function(v) end

