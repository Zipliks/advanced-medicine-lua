---@meta
---@class Barotrauma.ParamsEditor : System.Object
---`Field Private Static`
---@field _instance Barotrauma.ParamsEditor
---`Field Public Static`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Static`
---@field Instance Barotrauma.ParamsEditor
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Parent Barotrauma.GUIComponent
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EditorBox Barotrauma.GUIListBox
_G['ParamsEditor'] = {}

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*SerializableEntityEditor|(fun():Barotrauma.SerializableEntityEditor)
_G['ParamsEditor'].FindEntityEditors = function() end

---`Method Public Instance`
---@param rectT? Barotrauma.RectTransform
---@return Barotrauma.GUIListBox
_G['ParamsEditor'].CreateEditorBox = function(rectT) end

---`Method Public Instance`
_G['ParamsEditor'].Clear = function() end

---`Constructor Public Instance`
---@overload fun(rectT?:Barotrauma.RectTransform):Barotrauma.ParamsEditor
---@return Barotrauma.ParamsEditor
_G['ParamsEditor'] = function() end

---`Constructor Public Instance`
---@overload fun(rectT?:Barotrauma.RectTransform):Barotrauma.ParamsEditor
---@return Barotrauma.ParamsEditor
_G['ParamsEditor'].__new = function() end

---`Constructor Private Static`
---@overload fun(rectT?:Barotrauma.RectTransform):Barotrauma.ParamsEditor
---@return Barotrauma.ParamsEditor
_G['ParamsEditor'] = function() end

---`Constructor Private Static`
---@overload fun(rectT?:Barotrauma.RectTransform):Barotrauma.ParamsEditor
---@return Barotrauma.ParamsEditor
_G['ParamsEditor'].__new = function() end

