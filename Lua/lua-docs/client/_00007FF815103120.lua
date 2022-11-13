---@meta
---@class Barotrauma.TestGameMode : Barotrauma.GameMode
---`Field Public Instance`
---@field OnRoundEnd System.Action|(fun())
---`Field Public Instance`
---@field SpawnOutpost System.Boolean|boolean
---`Field Public Instance`
---@field OutpostParams Barotrauma.OutpostGenerationParams
---`Field Public Instance`
---@field OutpostType Barotrauma.LocationType
---`Field Public Instance`
---@field TriggeredEvent Barotrauma.EventPrefab
---`Field Private Instance`
---@field scriptedEvent System.Collections.Generic.List*1Barotrauma*Event|Barotrauma.Event[]
---`Field Private Instance`
---@field createEventButton Barotrauma.GUIButton
_G['TestGameMode'] = {}

---`Method Public Instance Virtual`
_G['TestGameMode'].Start = function() end

---`Method Public Instance Virtual`
_G['TestGameMode'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['TestGameMode'].End = function(transitionType) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['TestGameMode'].Update = function(deltaTime) end

---`Method Private Instance`
---@param submarine Barotrauma.Submarine
_G['TestGameMode'].GenerateOutpost = function(submarine) end

---`Constructor Public Instance`
---@param preset Barotrauma.GameModePreset
---@return Barotrauma.TestGameMode
_G['TestGameMode'] = function(preset) end

---`Constructor Public Instance`
---@param preset Barotrauma.GameModePreset
---@return Barotrauma.TestGameMode
_G['TestGameMode'].__new = function(preset) end

