---@meta
---@class Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore : Barotrauma.LuaCsSetup.LuaCsModStore.ModStore*1Barotrauma*ACsMod*1System*Object
---`Field Public Instance`
---@field Mod Barotrauma.ACsMod
_G['ModStore']['CsModStore'] = {}

---`Method Public Instance Virtual`
---@param value Barotrauma.ACsMod
---@return System.Boolean|boolean
_G['ModStore']['CsModStore'].Equals = function(value) end

---`Constructor Public Instance`
---@param store System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}
---@return Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore
_G['ModStore']['CsModStore'] = function(store) end

---`Constructor Public Instance`
---@param store System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}
---@return Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore
_G['ModStore']['CsModStore'].__new = function(store) end

