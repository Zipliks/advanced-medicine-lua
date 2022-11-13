---@meta
---@class Barotrauma.GUIButton : Barotrauma.GUIComponent
---`Field NonPublic Instance`
---@field textBlock Barotrauma.GUITextBlock
---`Field NonPublic Instance`
---@field frame Barotrauma.GUIFrame
---`Field Public Instance`
---@field OnClicked Barotrauma.GUIButton.OnClickedHandler|(fun(button:Barotrauma.GUIButton, obj:System.Object):System.Boolean|boolean)
---`Field Public Instance`
---@field OnPressed Barotrauma.GUIButton.OnPressedHandler|(fun():System.Boolean|boolean)
---`Field Public Instance`
---@field OnButtonDown Barotrauma.GUIButton.OnButtonDownHandler|(fun():System.Boolean|boolean)
---`Field Public Instance`
---@field CanBeSelected System.Boolean|boolean
---`Field Private Instance`
---@field pulseTimer System.Single|number
---`Field Private Instance`
---@field pulseExpand System.Single|number
---`Field Private Instance`
---@field flashed System.Boolean|boolean
---`Getter Public Instance`
---@field TextBlock Barotrauma.GUITextBlock
---`Getter Public Instance`
---@field Frame Barotrauma.GUIFrame
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field HoverColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field SelectedColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PressedColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field OutlineColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoverTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field DisabledTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---@field FlashTimer System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceUpperCase Barotrauma.ForceUpperCase
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field ToolTip Barotrauma.RichString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Pulse System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ClickSound Barotrauma.GUISoundType
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PlaySoundOnSelect System.Boolean|boolean
_G['GUI']['Button'] = {}

---`Method Public Instance Virtual`
---@param style Barotrauma.GUIComponentStyle
_G['GUI']['Button'].ApplyStyle = function(style) end

---`Method Public Instance Virtual`
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param flashDuration? System.Single|number
---@param useRectangleFlash? System.Boolean|boolean
---@param useCircularFlash? System.Boolean|boolean
---@param flashRectInflate? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['GUI']['Button'].Flash = function(color, flashDuration, useRectangleFlash, useCircularFlash, flashRectInflate) end

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['Button'].Draw = function(spriteBatch) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['Button'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@overload fun(rectT:Barotrauma.RectTransform, textAlignment?:Barotrauma.Alignment, style?:System.String|string, color?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.GUIButton
---@param rectT Barotrauma.RectTransform
---@param text Barotrauma.LocalizedString
---@param textAlignment? Barotrauma.Alignment
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUIButton
_G['GUI']['Button'] = function(rectT, text, textAlignment, style, color) end

---`Constructor Public Instance`
---@overload fun(rectT:Barotrauma.RectTransform, textAlignment?:Barotrauma.Alignment, style?:System.String|string, color?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.GUIButton
---@param rectT Barotrauma.RectTransform
---@param text Barotrauma.LocalizedString
---@param textAlignment? Barotrauma.Alignment
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUIButton
_G['GUI']['Button'].__new = function(rectT, text, textAlignment, style, color) end

