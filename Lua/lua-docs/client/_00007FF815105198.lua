---@meta
---@class Barotrauma.PvPMode : Barotrauma.MissionMode
_G['PvPMode'] = {}

---`Method Public Instance`
---@param clients System.Collections.Generic.IEnumerable*1Barotrauma*Networking*Client|(fun():Barotrauma.Networking.Client)
_G['PvPMode'].AssignTeamIDs = function(clients) end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.PvPMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.PvPMode
_G['PvPMode'] = function(preset, missionType, seed) end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.PvPMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.PvPMode
_G['PvPMode'].__new = function(preset, missionType, seed) end

