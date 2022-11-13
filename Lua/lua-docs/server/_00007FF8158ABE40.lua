---@meta
---@class Barotrauma.CoOpMode : Barotrauma.MissionMode
_G['CoOpMode'] = {}

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.CoOpMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.CoOpMode
_G['CoOpMode'] = function(preset, missionType, seed) end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.CoOpMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.CoOpMode
_G['CoOpMode'].__new = function(preset, missionType, seed) end

