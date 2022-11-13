---@meta
---@class Barotrauma.EditorScreen : Barotrauma.Screen
---`Field Public Static`
---@field BackgroundColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---@field IsEditor System.Boolean|boolean
_G['EditorScreen'] = {}

---`Method Public Instance Virtual`
_G['EditorScreen'].Deselect = function() end

---`Method NonPublic Instance Virtual`
_G['EditorScreen'].DeselectEditorSpecific = function() end

---`Method Public Instance`
_G['EditorScreen'].CreateBackgroundColorPicker = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.EditorScreen
---@return Barotrauma.EditorScreen
_G['EditorScreen'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.EditorScreen
---@return Barotrauma.EditorScreen
_G['EditorScreen'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.EditorScreen
---@return Barotrauma.EditorScreen
_G['EditorScreen'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.EditorScreen
---@return Barotrauma.EditorScreen
_G['EditorScreen'].__new = function() end

