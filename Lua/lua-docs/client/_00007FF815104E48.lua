---@meta
---@class Barotrauma.MissionMode : Barotrauma.GameMode
---`Field Private Instance`
---@field missions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Getter Public Instance Virtual`
---@field Missions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
_G['MissionMode'] = {}

---`Method Public Instance Virtual`
_G['MissionMode'].ShowStartMessage = function() end

---`Method NonPublic Static`
---@param missionPrefabs System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)
---@param missionClasses System.Collections.Generic.Dictionary*1Barotrauma*MissionType*1System*Type|{[Barotrauma.MissionType]:System.Type}
---@return System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)
_G['MissionMode'].ValidateMissionPrefabs = function(missionPrefabs, missionClasses) end

---`Method NonPublic Static`
---@param missionType Barotrauma.MissionType
---@param missionClasses System.Collections.Generic.Dictionary*1Barotrauma*MissionType*1System*Type|{[Barotrauma.MissionType]:System.Type}
---@return Barotrauma.MissionType
_G['MissionMode'].ValidateMissionType = function(missionType, missionClasses) end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.MissionMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.MissionMode
_G['MissionMode'] = function(preset, missionType, seed) end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset, missionPrefabs:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.MissionMode
---@param preset Barotrauma.GameModePreset
---@param missionType Barotrauma.MissionType
---@param seed System.String|string
---@return Barotrauma.MissionMode
_G['MissionMode'].__new = function(preset, missionType, seed) end

