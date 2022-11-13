---@meta
---@class Barotrauma.TutorialMode : Barotrauma.GameMode
---`Field Public Instance`
---@field Tutorial Barotrauma.Tutorials.Tutorial
_G['TutorialMode'] = {}

---`Method Public Instance Virtual`
_G['TutorialMode'].Start = function() end

---`Method Public Instance Virtual`
_G['TutorialMode'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['TutorialMode'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param preset Barotrauma.GameModePreset
---@return Barotrauma.TutorialMode
_G['TutorialMode'] = function(preset) end

---`Constructor Public Instance`
---@param preset Barotrauma.GameModePreset
---@return Barotrauma.TutorialMode
_G['TutorialMode'].__new = function(preset) end

