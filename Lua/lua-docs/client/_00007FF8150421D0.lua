---@meta
---@class Barotrauma.LuaCsFunc : System.MulticastDelegate
_G['LuaCsFunc'] = {}

---`Method Public Instance Virtual`
---@param ... System.Object
---@return System.Object
_G['LuaCsFunc'].Invoke = function(...) end

---`Method Public Instance Virtual`
---@param args System.Object-arr|System.Object[]
---@param callback System.AsyncCallback|(fun(ar:System.IAsyncResult))
---@param object System.Object
---@return System.IAsyncResult
_G['LuaCsFunc'].BeginInvoke = function(args, callback, object) end

---`Method Public Instance Virtual`
---@param result System.IAsyncResult
---@return System.Object
_G['LuaCsFunc'].EndInvoke = function(result) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsFunc
_G['LuaCsFunc'] = function(object, method) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsFunc
_G['LuaCsFunc'].__new = function(object, method) end

