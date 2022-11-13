---@meta
---@class Barotrauma.LuaCsPatch : System.MulticastDelegate
_G['LuaCsPatch'] = {}

---`Method Public Instance Virtual`
---@param self System.Object
---@param args System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}
---@return System.Object
_G['LuaCsPatch'].Invoke = function(self, args) end

---`Method Public Instance Virtual`
---@param self System.Object
---@param args System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}
---@param callback System.AsyncCallback|(fun(ar:System.IAsyncResult))
---@param object System.Object
---@return System.IAsyncResult
_G['LuaCsPatch'].BeginInvoke = function(self, args, callback, object) end

---`Method Public Instance Virtual`
---@param result System.IAsyncResult
---@return System.Object
_G['LuaCsPatch'].EndInvoke = function(result) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsPatch
_G['LuaCsPatch'] = function(object, method) end

---`Constructor Public Instance`
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCsPatch
_G['LuaCsPatch'].__new = function(object, method) end

