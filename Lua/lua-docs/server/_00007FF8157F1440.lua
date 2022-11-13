---@meta
---@class Barotrauma.LuaCsSetup.LuaCsModStore : System.Object
---`Field Private Instance`
---@field luaModInterface System.Collections.Generic.HashSet*1Barotrauma*LuaCsSetup*LuaCsModStore*LuaModStore|Barotrauma.LuaCsSetup.LuaCsModStore.LuaModStore[]
---`Field Private Instance`
---@field csModInterface System.Collections.Generic.HashSet*1Barotrauma*LuaCsSetup*LuaCsModStore*CsModStore|Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore[]
_G['ModStore'] = {}

---`Method Public Instance`
_G['ModStore'].Initialize = function() end

---`Method Public Instance`
_G['ModStore'].Clear = function() end

---`Method NonPublic Instance`
---@param modName System.String|string
---@return Barotrauma.LuaCsSetup.LuaCsModStore.LuaModStore
_G['ModStore'].Register = function(modName) end

---`Method Public Instance`
---@param mod Barotrauma.ACsMod
---@return Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore
_G['ModStore'].Register = function(mod) end

---`Method Public Instance`
---@param modName System.String|string
---@return Barotrauma.LuaCsSetup.LuaCsModStore.CsModStore
_G['ModStore'].GetCsStore = function(modName) end

---`Method NonPublic Instance`
---@param modName System.String|string
---@return Barotrauma.LuaCsSetup.LuaCsModStore.LuaModStore
_G['ModStore'].GetLuaStore = function(modName) end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsSetup.LuaCsModStore
_G['ModStore'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsSetup.LuaCsModStore
_G['ModStore'].__new = function() end

