---@meta
---@class MoonSharp.Interpreter.Interop.IUserDataDescriptor
---`Getter Public Instance Abstract Virtual`
---@field Name System.String|string
---`Getter Public Instance Abstract Virtual`
---@field Type System.Type
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'] = {}

---`Method Public Instance Abstract Virtual`
---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param index MoonSharp.Interpreter.DynValue
---@param isDirectIndexing System.Boolean|boolean
---@return MoonSharp.Interpreter.DynValue
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'].Index = function(script, obj, index, isDirectIndexing) end

---`Method Public Instance Abstract Virtual`
---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param index MoonSharp.Interpreter.DynValue
---@param value MoonSharp.Interpreter.DynValue
---@param isDirectIndexing System.Boolean|boolean
---@return System.Boolean|boolean
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'].SetIndex = function(script, obj, index, value, isDirectIndexing) end

---`Method Public Instance Abstract Virtual`
---@param obj System.Object
---@return System.String|string
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'].AsString = function(obj) end

---`Method Public Instance Abstract Virtual`
---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param metaname System.String|string
---@return MoonSharp.Interpreter.DynValue
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'].MetaIndex = function(script, obj, metaname) end

---`Method Public Instance Abstract Virtual`
---@param type System.Type
---@param obj System.Object
---@return System.Boolean|boolean
_G['MoonSharp']['Interpreter']['Interop']['IUserDataDescriptor'].IsTypeCompatible = function(type, obj) end

