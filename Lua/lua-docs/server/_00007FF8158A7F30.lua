---@meta
---@class Barotrauma.NetLobbyScreen : Barotrauma.Screen
---`Field Private Instance`
---@field selectedSub Barotrauma.SubmarineInfo
---`Field Private Instance`
---@field selectedShuttle Barotrauma.SubmarineInfo
---`Field Public Instance`
---@field RadiationEnabled System.Boolean|boolean
---`Field Private Instance`
---@field selectedModeIndex System.Int32|integer
---`Field Private Instance`
---@field missionType Barotrauma.MissionType
---`Field Private Instance`
---@field subs System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Field Private Instance`
---@field lastUpdateID System.UInt16|integer
---`Field Private Instance`
---@field levelSeed System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedSub Barotrauma.SubmarineInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedShuttle Barotrauma.SubmarineInfo
---`Getter Public Instance`
---@field GameModes Barotrauma.GameModePreset-arr|Barotrauma.GameModePreset[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedModeIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedModeIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---@field SelectedMode Barotrauma.GameModePreset
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MissionType Barotrauma.MissionType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MissionTypeName System.String|string
---`Getter Public Instance`
---@field JobPreferences System.Collections.Generic.List*1Barotrauma*JobPrefab|Barotrauma.JobPrefab[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelSeed System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LastUpdateID System.UInt16|integer
_G['NetLobbyScreen'] = {}

---`Method Public Instance`
---@param n System.String|string
_G['NetLobbyScreen'].ChangeServerName = function(n) end

---`Method Public Instance`
---@param m System.String|string
_G['NetLobbyScreen'].ChangeServerMessage = function(m) end

---`Method Public Instance`
---@return System.Collections.Generic.IReadOnlyList*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
_G['NetLobbyScreen'].GetSubList = function() end

---`Method Public Instance`
---@param sub Barotrauma.SubmarineInfo
_G['NetLobbyScreen'].AddSub = function(sub) end

---`Method Public Instance`
---@param enabled System.Boolean|boolean
_G['NetLobbyScreen'].ToggleCampaignMode = function(enabled) end

---`Method Public Instance Virtual`
_G['NetLobbyScreen'].Select = function() end

---`Method Public Instance`
_G['NetLobbyScreen'].RandomizeSettings = function() end

---`Method Public Instance`
---@param difficulty System.Single|number
_G['NetLobbyScreen'].SetLevelDifficulty = function(difficulty) end

---`Method Public Instance`
---@param dir System.Int32|integer
_G['NetLobbyScreen'].ToggleTraitorsEnabled = function(dir) end

---`Method Public Instance`
---@param botCount System.Int32|integer
_G['NetLobbyScreen'].SetBotCount = function(botCount) end

---`Method Public Instance`
---@param botSpawnMode Barotrauma.Networking.BotSpawnMode
_G['NetLobbyScreen'].SetBotSpawnMode = function(botSpawnMode) end

---`Method Public Instance`
---@param enabled Barotrauma.Networking.YesNoMaybe
_G['NetLobbyScreen'].SetTraitorsEnabled = function(enabled) end

---`Constructor Public Instance`
---@return Barotrauma.NetLobbyScreen
_G['NetLobbyScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.NetLobbyScreen
_G['NetLobbyScreen'].__new = function() end

