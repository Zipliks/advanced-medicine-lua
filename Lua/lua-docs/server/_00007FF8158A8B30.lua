---@meta
---@class Barotrauma.GameSettings : System.Object
---`Field Private Static`
---@field currentConfig Barotrauma.GameSettings.Config
---`Field Public Static`
---@field PlayerConfigPath System.String|string
---`Getter Public Static`
---@field CurrentConfig Barotrauma.Config-ref
_G['GameSettings'] = {}

---`Method Public Static`
_G['GameSettings'].Init = function() end

---`Method Public Static`
---@param newConfig Barotrauma.Config-ref
_G['GameSettings'].SetCurrentConfig = function(newConfig) end

---`Method Public Static`
_G['GameSettings'].SaveCurrentConfig = function() end

