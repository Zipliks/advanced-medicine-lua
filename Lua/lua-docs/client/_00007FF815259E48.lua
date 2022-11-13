---@meta
---@class Barotrauma.GUIRadioButtonGroup : Barotrauma.GUIComponent
---`Field Private Instance`
---@field radioButtons System.Collections.Generic.Dictionary*1System*Int32*1Barotrauma*GUITickBox|{[System.Int32|integer]:Barotrauma.GUITickBox}
---`Field Public Instance`
---@field OnSelect Barotrauma.GUIRadioButtonGroup.RadioButtonGroupDelegate|(fun(rbg:Barotrauma.GUIRadioButtonGroup, val:System.Nullable*1System*Int32|integer))
---`Field Private Instance`
---@field selected System.Nullable*1System*Int32|integer
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Selected System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---@field SelectedRadioButton Barotrauma.GUITickBox
_G['GUIRadioButtonGroup'] = {}

---`Method Public Instance`
---@param key System.Int32|integer
---@param radioButton Barotrauma.GUITickBox
_G['GUIRadioButtonGroup'].AddRadioButton = function(key, radioButton) end

---`Method Public Instance`
---@param radioButton Barotrauma.GUITickBox
_G['GUIRadioButtonGroup'].SelectRadioButton = function(radioButton) end

---`Constructor Public Instance`
---@return Barotrauma.GUIRadioButtonGroup
_G['GUIRadioButtonGroup'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.GUIRadioButtonGroup
_G['GUIRadioButtonGroup'].__new = function() end

