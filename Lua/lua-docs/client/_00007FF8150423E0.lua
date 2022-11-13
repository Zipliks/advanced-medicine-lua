---@meta
---@class Barotrauma.LuaCsPatchFunc : System.MulticastDelegate
_G['LuaCsPatchFunc'] = {}

---`Method Public Instance Virtual`
---@param instance System.Object
---@param ptable Barotrauma.LuaCsHook.ParameterTable
---@return MoonSharp.Interpreter.DynValue
_G['LuaCsPatchFunc'].Invoke = function(instance, ptable) end

---`Method Public Instance Virtual`
---@param instance System.Object
---@param ptable Barotrauma.LuaCsHook.ParameterTable
---@param callback System.AsyncCallback|(fun(ar:System.IAsyncResult))
---@param object System.Object
---@return System.IAsyncResult
_G['LuaCsPatchFunc'].BeginInvoke = function(instance, ptable, callback, object) end

---`Method Public Instance Virtual`
---@param result System.IAsyncResult
---@return MoonSharp.Interpreter.DynValue
_G['LuaCsPatchFunc'].EndInvoke = function(result) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsPatchFunc
_G['LuaCsPatchFunc'] = function(object, method) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsPatchFunc
_G['LuaCsPatchFunc'].__new = function(object, method) end

