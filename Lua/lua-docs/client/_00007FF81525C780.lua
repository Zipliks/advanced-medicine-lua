---@meta
---@class Barotrauma.GUITickBox : Barotrauma.GUIComponent
---`Field Private Instance`
---@field layoutGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field box Barotrauma.GUIFrame
---`Field Private Instance`
---@field text Barotrauma.GUITextBlock
---`Field Public Instance`
---@field OnSelected Barotrauma.GUITickBox.OnSelectedHandler|(fun(obj:Barotrauma.GUITickBox):System.Boolean|boolean)
---`Field Private Instance`
---@field radioButtonGroup Barotrauma.GUIRadioButtonGroup
---`Field Public Static`
---@field size System.Int32|integer
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Selected System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field State Barotrauma.GUIComponent.ComponentState
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance`
---@field Box Barotrauma.GUIFrame
---`Getter Public Instance`
---@field TextBlock Barotrauma.GUITextBlock
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field ToolTip Barotrauma.RichString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ContentWidth System.Single|number
---`Getter Private Instance`
---<br/>`Setter Public Instance`
---@field SoundType Barotrauma.GUISoundType
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PlaySoundOnSelect System.Boolean|boolean
_G['GUI']['TickBox'] = {}

---`Method Public Instance`
---@param rbg Barotrauma.GUIRadioButtonGroup
_G['GUI']['TickBox'].SetRadioButtonGroup = function(rbg) end

---`Method Public Instance`
_G['GUI']['TickBox'].ResizeBox = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['TickBox'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@overload fun(rectT:Barotrauma.RectTransform, label:Barotrauma.LocalizedString, font?:Barotrauma.GUIFont, style?:System.String|string):Barotrauma.GUITickBox
---@return Barotrauma.GUITickBox
_G['GUI']['TickBox'] = function() end

---`Constructor Public Instance`
---@overload fun(rectT:Barotrauma.RectTransform, label:Barotrauma.LocalizedString, font?:Barotrauma.GUIFont, style?:System.String|string):Barotrauma.GUITickBox
---@return Barotrauma.GUITickBox
_G['GUI']['TickBox'].__new = function() end

---`Constructor Private Static`
---@overload fun(rectT:Barotrauma.RectTransform, label:Barotrauma.LocalizedString, font?:Barotrauma.GUIFont, style?:System.String|string):Barotrauma.GUITickBox
---@return Barotrauma.GUITickBox
_G['GUI']['TickBox'] = function() end

---`Constructor Private Static`
---@overload fun(rectT:Barotrauma.RectTransform, label:Barotrauma.LocalizedString, font?:Barotrauma.GUIFont, style?:System.String|string):Barotrauma.GUITickBox
---@return Barotrauma.GUITickBox
_G['GUI']['TickBox'].__new = function() end

