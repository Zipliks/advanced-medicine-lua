---@meta
---@class Barotrauma.LuaUserData : System.Object
_G['LuaUserData'] = {}

---`Method Public Static`
---@param typeName System.String|string
---@return System.Type
_G['LuaUserData'].GetType = function(typeName) end

---`Method Public Static`
---@param typeName System.String|string
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
_G['LuaUserData'].RegisterType = function(typeName) end

---`Method Public Static`
---@param typeName System.String|string
---@param deleteHistory? System.Boolean|boolean
_G['LuaUserData'].UnregisterType = function(typeName, deleteHistory) end

---`Method Public Static`
---@param typeName System.String|string
---@param ... System.String|string
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
_G['LuaUserData'].RegisterGenericType = function(typeName, ...) end

---`Method Public Static`
---@param typeName System.String|string
---@param ... System.String|string
_G['LuaUserData'].UnregisterGenericType = function(typeName, ...) end

---`Method Private Static`
---@param obj System.Object
---@return System.Boolean|boolean
_G['LuaUserData'].IsType = function(obj) end

---`Method Public Static`
---@param obj System.Object
---@param typeName System.String|string
---@return System.Boolean|boolean
_G['LuaUserData'].IsTargetType = function(obj, typeName) end

---`Method Public Static`
---@param typeName System.String|string
---@return System.Object
_G['LuaUserData'].CreateStatic = function(typeName) end

---`Method Public Static`
---@param typeName System.String|string
---@return System.Object
_G['LuaUserData'].CreateEnumTable = function(typeName) end

---`Method Private Static`
---@param type System.Type
---@param fieldName System.String|string
---@return System.Reflection.FieldInfo
_G['LuaUserData'].FindFieldRecursively = function(type, fieldName) end

---`Method Public Static`
---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String|string
_G['LuaUserData'].MakeFieldAccessible = function(IUUD, fieldName) end

---`Method Private Static`
---@param type System.Type
---@param methodName System.String|string
---@return System.Reflection.MethodInfo
_G['LuaUserData'].FindMethodRecursively = function(type, methodName) end

---`Method Public Static`
---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String|string
_G['LuaUserData'].MakeMethodAccessible = function(IUUD, methodName) end

---`Method Public Static`
---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String|string
---@param luaKey__function System.Object
_G['LuaUserData'].AddMethod = function(IUUD, methodName, luaKey__function) end

---`Method Public Static`
---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String|string
---@param value MoonSharp.Interpreter.DynValue
_G['LuaUserData'].AddField = function(IUUD, fieldName, value) end

---`Method Public Static`
---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param memberName System.String|string
_G['LuaUserData'].RemoveMember = function(IUUD, memberName) end

---`Method Public Static`
---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredTypeDescriptor MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@return MoonSharp.Interpreter.DynValue
_G['LuaUserData'].CreateUserDataFromDescriptor = function(scriptObject, desiredTypeDescriptor) end

---`Method Public Static`
---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredType System.Type
---@return MoonSharp.Interpreter.DynValue
_G['LuaUserData'].CreateUserDataFromType = function(scriptObject, desiredType) end

---`Constructor Public Instance`
---@return Barotrauma.LuaUserData
_G['LuaUserData'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaUserData
_G['LuaUserData'].__new = function() end

