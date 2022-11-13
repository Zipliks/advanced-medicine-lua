---@meta
---@class Barotrauma.GUITextBox : Barotrauma.GUIComponent
---`Field Private Instance`
---@field OnSelected Barotrauma.TextBoxEvent|(fun(sender:Barotrauma.GUITextBox, key:Microsoft.Xna.Framework.Input.Keys))
---`Field Private Instance`
---@field OnDeselected Barotrauma.TextBoxEvent|(fun(sender:Barotrauma.GUITextBox, key:Microsoft.Xna.Framework.Input.Keys))
---`Field Private Instance`
---@field caretVisible System.Boolean|boolean
---`Field Private Instance`
---@field caretTimer System.Single|number
---`Field Private Instance`
---@field frame Barotrauma.GUIFrame
---`Field Private Instance`
---@field textBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field icon Barotrauma.GUIImage
---`Field Public Instance`
---@field textFilterFunction System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)
---`Field Public Instance`
---@field OnEnterPressed Barotrauma.GUITextBox.OnEnterHandler|(fun(textBox:Barotrauma.GUITextBox, text:System.String|string):System.Boolean|boolean)
---`Field Private Instance`
---@field OnKeyHit Barotrauma.TextBoxEvent|(fun(sender:Barotrauma.GUITextBox, key:Microsoft.Xna.Framework.Input.Keys))
---`Field Private Instance`
---@field OnTextChanged Barotrauma.GUITextBox.OnTextChangedHandler|(fun(textBox:Barotrauma.GUITextBox, text:System.String|string):System.Boolean|boolean)
---`Field Public Instance`
---@field DeselectAfterMessage System.Boolean|boolean
---`Field Private Instance`
---@field maxTextLength System.Nullable*1System*Int32|integer
---`Field Private Instance`
---@field _caretIndex System.Int32|integer
---`Field Private Instance`
---@field caretPosDirty System.Boolean|boolean
---`Field NonPublic Instance`
---@field caretPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field isSelecting System.Boolean|boolean
---`Field Private Instance`
---@field selectedText System.String|string
---`Field Private Instance`
---@field selectedCharacters System.Int32|integer
---`Field Private Instance`
---@field selectionStartIndex System.Int32|integer
---`Field Private Instance`
---@field selectionEndIndex System.Int32|integer
---`Field Private Instance`
---@field caretAndSelectionRenderer Barotrauma.GUICustomComponent
---`Field Private Instance`
---@field mouseHeldInside System.Boolean|boolean
---`Field Private Instance`
---@field memento Barotrauma.Memento*1System*String
---`Field Private Instance`
---@field skipUpdate System.Boolean|boolean
---`Field Private Instance`
---@field selected System.Boolean|boolean
---<br/>`Setter Public Instance`
---@field OnTextChangedDelegate Barotrauma.GUITextBox.OnTextChangedHandler|(fun(textBox:Barotrauma.GUITextBox, text:System.String|string):System.Boolean|boolean)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CaretEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CaretColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CaretIndex System.Int32|integer
---`Getter Public Instance`
---@field CaretScreenPos Microsoft.Xna.Framework.Vector2
---`Getter Private Instance`
---@field IsLeftToRight System.Boolean|boolean
---`Getter Public Instance`
---@field Frame Barotrauma.GUIFrame
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextGetter Barotrauma.GUITextBlock.TextGetterHandler|(fun():Barotrauma.LocalizedString)
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Selected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Wrap System.Boolean|boolean
---`Getter Public Instance`
---@field TextBlock Barotrauma.GUITextBlock
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ClampText System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxTextLength System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OverflowClip System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Censor System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field ToolTip Barotrauma.RichString
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field HoverColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectionColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text System.String|string
---`Getter Public Instance`
---@field WrappedText System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Readonly System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PlaySoundOnSelect System.Boolean|boolean
_G['GUI']['TextBox'] = {}

---`Method Private Instance`
---@param text System.String|string
---@param store? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUI']['TextBox'].SetText = function(text, store) end

---`Method Private Instance`
_G['GUI']['TextBox'].CalculateCaretPos = function() end

---`Method Public Instance`
---@param forcedCaretIndex? System.Int32|integer
---@param ignoreSelectSound? System.Boolean|boolean
_G['GUI']['TextBox'].Select = function(forcedCaretIndex, ignoreSelectSound) end

---`Method Public Instance`
_G['GUI']['TextBox'].Deselect = function() end

---`Method Public Instance Virtual`
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param flashDuration? System.Single|number
---@param useRectangleFlash? System.Boolean|boolean
---@param useCircularFlash? System.Boolean|boolean
---@param flashRectOffset? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['GUI']['TextBox'].Flash = function(color, flashDuration, useRectangleFlash, useCircularFlash, flashRectOffset) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['TextBox'].Update = function(deltaTime) end

---`Method Private Instance`
_G['GUI']['TextBox'].HandleCaretBoundsOverflow = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param customComponent Barotrauma.GUICustomComponent
_G['GUI']['TextBox'].DrawCaretAndSelection = function(spriteBatch, customComponent) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['TextBox'].DrawSelectionRect = function(spriteBatch) end

---`Method Public Instance Virtual`
---@overload fun(inputChar:System.Char)
---@param input System.String|string
_G['GUI']['TextBox'].ReceiveTextInput = function(input) end

---`Method Public Instance Virtual`
---@param command System.Char
_G['GUI']['TextBox'].ReceiveCommandInput = function(command) end

---`Method Public Instance Virtual`
---@param key Microsoft.Xna.Framework.Input.Keys
_G['GUI']['TextBox'].ReceiveSpecialInput = function(key) end

---`Method Public Instance`
_G['GUI']['TextBox'].SelectAll = function() end

---`Method Private Instance`
_G['GUI']['TextBox'].CopySelectedText = function() end

---`Method Private Instance`
_G['GUI']['TextBox'].ClearSelection = function() end

---`Method Private Instance`
---@return System.String|string
_G['GUI']['TextBox'].GetCopiedText = function() end

---`Method Private Instance`
_G['GUI']['TextBox'].RemoveSelectedText = function() end

---`Method Private Instance`
---@return System.Single|number
_G['GUI']['TextBox'].GetWrapWidth = function() end

---`Method Private Instance`
_G['GUI']['TextBox'].InitSelectionStart = function() end

---`Method Private Instance`
_G['GUI']['TextBox'].CalculateSelection = function() end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param text? System.String|string
---@param textColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param font? Barotrauma.GUIFont
---@param textAlignment? Barotrauma.Alignment
---@param wrap? System.Boolean|boolean
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param createClearButton? System.Boolean|boolean
---@param createPenIcon? System.Boolean|boolean
---@return Barotrauma.GUITextBox
_G['GUI']['TextBox'] = function(rectT, text, textColor, font, textAlignment, wrap, style, color, createClearButton, createPenIcon) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param text? System.String|string
---@param textColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param font? Barotrauma.GUIFont
---@param textAlignment? Barotrauma.Alignment
---@param wrap? System.Boolean|boolean
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param createClearButton? System.Boolean|boolean
---@param createPenIcon? System.Boolean|boolean
---@return Barotrauma.GUITextBox
_G['GUI']['TextBox'].__new = function(rectT, text, textColor, font, textAlignment, wrap, style, color, createClearButton, createPenIcon) end

