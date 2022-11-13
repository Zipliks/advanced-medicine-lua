---@meta
---@class Barotrauma.GameModePreset : System.Object
---`Field Public Instance`
---@field GameModeType System.Type
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field Description Barotrauma.LocalizedString
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Public Instance`
---@field IsSinglePlayer System.Boolean|boolean
---`Field Public Instance`
---@field Votable System.Boolean|boolean
---`Field Public Static`
---@field List System.Collections.Generic.List*1Barotrauma*GameModePreset|Barotrauma.GameModePreset[]
---`Field Public Static`
---@field SinglePlayerCampaign Barotrauma.GameModePreset
---`Field Public Static`
---@field MultiPlayerCampaign Barotrauma.GameModePreset
---`Field Public Static`
---@field Tutorial Barotrauma.GameModePreset
---`Field Public Static`
---@field Mission Barotrauma.GameModePreset
---`Field Public Static`
---@field PvP Barotrauma.GameModePreset
---`Field Public Static`
---@field TestMode Barotrauma.GameModePreset
---`Field Public Static`
---@field Sandbox Barotrauma.GameModePreset
---`Field Public Static`
---@field DevSandbox Barotrauma.GameModePreset
_G['GameModePreset'] = {}

---`Method Public Static`
_G['GameModePreset'].Init = function() end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, type:System.Type, isSinglePlayer?:System.Boolean|boolean, votable?:System.Boolean|boolean):Barotrauma.GameModePreset
---@return Barotrauma.GameModePreset
_G['GameModePreset'] = function() end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, type:System.Type, isSinglePlayer?:System.Boolean|boolean, votable?:System.Boolean|boolean):Barotrauma.GameModePreset
---@return Barotrauma.GameModePreset
_G['GameModePreset'].__new = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, type:System.Type, isSinglePlayer?:System.Boolean|boolean, votable?:System.Boolean|boolean):Barotrauma.GameModePreset
---@return Barotrauma.GameModePreset
_G['GameModePreset'] = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, type:System.Type, isSinglePlayer?:System.Boolean|boolean, votable?:System.Boolean|boolean):Barotrauma.GameModePreset
---@return Barotrauma.GameModePreset
_G['GameModePreset'].__new = function() end

