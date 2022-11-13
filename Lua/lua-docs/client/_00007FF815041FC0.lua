---@meta
---@class Barotrauma.LuaCsAction : System.MulticastDelegate
_G['LuaCsAction'] = {}

---`Method Public Instance Virtual`
---@param ... System.Object
_G['LuaCsAction'].Invoke = function(...) end

---`Method Public Instance Virtual`
---@param args System.Object-arr|System.Object[]
---@param callback System.AsyncCallback|(fun(ar:System.IAsyncResult))
---@param object System.Object
---@return System.IAsyncResult
_G['LuaCsAction'].BeginInvoke = function(args, callback, object) end

---`Method Public Instance Virtual`
---@param result System.IAsyncResult
_G['LuaCsAction'].EndInvoke = function(result) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsAction
_G['LuaCsAction'] = function(object, method) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsAction
_G['LuaCsAction'].__new = function(object, method) end

