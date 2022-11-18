---@meta
---@class Barotrauma.GameMode : System.Object
---`Field NonPublic Instance`
---@field startTime System.DateTime
---`Field NonPublic Instance`
---@field preset Barotrauma.GameModePreset
---`Field Public Static`
---@field PresetList System.Collections.Generic.List*1Barotrauma*GameModePreset|Barotrauma.GameModePreset[]
---`Getter Public Instance`
---@field CrewManager Barotrauma.CrewManager
---`Getter Public Instance Virtual`
---@field Missions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
---`Getter Public Instance`
---@field IsSinglePlayer System.Boolean|boolean
---`Getter Public Instance`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---@field Paused System.Boolean|boolean
---`Getter Public Instance`
---@field Preset Barotrauma.GameModePreset
_G['GameMode'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['GameMode'].UpdateWhilePaused = function(deltaTime) end

---`Method Public Instance Virtual`
_G['GameMode'].Start = function() end

---`Method Public Instance Virtual`
_G['GameMode'].ShowStartMessage = function() end

---`Method Public Instance Virtual`
---@param levelData Barotrauma.LevelData
_G['GameMode'].AddExtraMissions = function(levelData) end

---`Method Public Instance Virtual`
_G['GameMode'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['GameMode'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['GameMode'].End = function(transitionType) end

---`Method Public Instance Virtual`
_G['GameMode'].Remove = function() end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset):Barotrauma.GameMode
---@return Barotrauma.GameMode
_G['GameMode'] = function() end

---`Constructor Public Instance`
---@overload fun(preset:Barotrauma.GameModePreset):Barotrauma.GameMode
---@return Barotrauma.GameMode
_G['GameMode'].__new = function() end

---`Constructor Private Static`
---@overload fun(preset:Barotrauma.GameModePreset):Barotrauma.GameMode
---@return Barotrauma.GameMode
_G['GameMode'] = function() end

---`Constructor Private Static`
---@overload fun(preset:Barotrauma.GameModePreset):Barotrauma.GameMode
---@return Barotrauma.GameMode
_G['GameMode'].__new = function() end

