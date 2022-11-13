---@meta
---@class Barotrauma.GUITextBlock : Barotrauma.GUIComponent
---`Field NonPublic Instance`
---@field text Barotrauma.RichString
---`Field NonPublic Instance`
---@field textAlignment Barotrauma.Alignment
---`Field Private Instance`
---@field textScale System.Single|number
---`Field NonPublic Instance`
---@field textPos Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field origin Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field textColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field disabledTextColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field selectedTextColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field wrappedText Barotrauma.LocalizedString
---`Field Private Instance`
---@field censoredText System.String|string
---`Field Public Instance`
---@field TextGetter Barotrauma.GUITextBlock.TextGetterHandler|(fun():Barotrauma.LocalizedString)
---`Field Public Instance`
---@field Wrap System.Boolean|boolean
---`Field Public Instance`
---@field RoundToNearestPixel System.Boolean|boolean
---`Field Private Instance`
---@field overflowClipActive System.Boolean|boolean
---`Field Public Instance`
---@field OverflowClip System.Boolean|boolean
---`Field Private Instance`
---@field textDepth System.Single|number
---`Field Private Instance`
---@field padding Microsoft.Xna.Framework.Vector4
---`Field Private Instance`
---@field autoScaleHorizontal System.Boolean|boolean
---`Field Private Instance`
---@field autoScaleVertical System.Boolean|boolean
---`Field Private Instance`
---@field forceUpperCase Barotrauma.ForceUpperCase
---`Field Private Instance`
---@field hoverTextColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Public Instance`
---@field Strikethrough Barotrauma.GUITextBlock.StrikethroughSettings
---`Field Public Instance`
---@field OverrideRichTextDataAlpha System.Boolean|boolean
---`Field Private Instance`
---@field cachedCaretPositions System.Collections.Immutable.ImmutableArray*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Getter Public Instance`
---@field OverflowClipActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text Barotrauma.RichString
---`Getter Public Instance`
---@field WrappedText Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextDepth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoScaleHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoScaleVertical System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceUpperCase Barotrauma.ForceUpperCase
---`Getter Public Instance`
---@field Origin Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TextSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisabledTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoverTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedTextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextAlignment Barotrauma.Alignment
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Censor System.Boolean|boolean
---`Getter Public Instance`
---@field CensoredText System.String|string
---`Getter Public Instance`
---@field RichTextData System.Nullable*1System*Collections*Immutable*ImmutableArray*2Barotrauma*RichTextData
---`Getter Public Instance`
---@field HasColorHighlight System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClickableAreas System.Collections.Generic.List*1Barotrauma*GUITextBlock*ClickableArea|Barotrauma.GUITextBlock.ClickableArea[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Shadow System.Boolean|boolean
_G['GUI']['TextBlock'] = {}

---`Method Public Instance`
---@param padding? System.Int32|integer
---@param removeExtraSpacing? System.Boolean|boolean
_G['GUI']['TextBlock'].CalculateHeightFromText = function(padding, removeExtraSpacing) end

---`Method Public Instance`
---@param richText Barotrauma.LocalizedString
_G['GUI']['TextBlock'].SetRichText = function(richText) end

---`Method Public Instance Virtual`
---@param componentStyle Barotrauma.GUIComponentStyle
_G['GUI']['TextBlock'].ApplyStyle = function(componentStyle) end

---`Method Public Instance`
_G['GUI']['TextBlock'].ClearCaretPositions = function() end

---`Method Public Instance`
_G['GUI']['TextBlock'].SetTextPos = function() end

---`Method Private Instance`
---@overload fun(text:Barotrauma.LocalizedString):Microsoft.Xna.Framework.Vector2
---@param text System.String|string
---@return Microsoft.Xna.Framework.Vector2
_G['GUI']['TextBlock'].MeasureText = function(text) end

---`Method NonPublic Instance Virtual`
---@param a System.Single|number
_G['GUI']['TextBlock'].SetAlpha = function(a) end

---`Method Public Instance`
---@param color Microsoft.Xna.Framework.Color
_G['GUI']['TextBlock'].OverrideTextColor = function(color) end

---`Method Public Instance`
---@return System.Collections.Immutable.ImmutableArray*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
_G['GUI']['TextBlock'].GetAllCaretPositions = function() end

---`Method Public Instance`
---@param pos Microsoft.Xna.Framework.Vector2-ref
---@return System.Int32|integer
_G['GUI']['TextBlock'].GetCaretIndexFromScreenPos = function(pos) end

---`Method Public Instance`
---@param pos Microsoft.Xna.Framework.Vector2-ref
---@return System.Int32|integer
_G['GUI']['TextBlock'].GetCaretIndexFromLocalPos = function(pos) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['TextBlock'].Update = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['TextBlock'].Draw = function(spriteBatch) end

---`Method Public Static`
---@overload fun(...:Barotrauma.GUITextBlock)
---@overload fun(scaleHorizontal?:System.Boolean|boolean, scaleVertical?:System.Boolean|boolean, ...:Barotrauma.GUITextBlock)
---@param textBlocks System.Collections.Generic.IEnumerable*1Barotrauma*GUITextBlock|(fun():Barotrauma.GUITextBlock)
---@param scaleHorizontal? System.Boolean|boolean
---@param scaleVertical? System.Boolean|boolean
---@param defaultScale? System.Nullable*1System*Single|number
_G['GUI']['TextBlock'].AutoScaleAndNormalize = function(textBlocks, scaleHorizontal, scaleVertical, defaultScale) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param text Barotrauma.RichString
---@param textColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param font? Barotrauma.GUIFont
---@param textAlignment? Barotrauma.Alignment
---@param wrap? System.Boolean|boolean
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUITextBlock
_G['GUI']['TextBlock'] = function(rectT, text, textColor, font, textAlignment, wrap, style, color) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param text Barotrauma.RichString
---@param textColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param font? Barotrauma.GUIFont
---@param textAlignment? Barotrauma.Alignment
---@param wrap? System.Boolean|boolean
---@param style? System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.GUITextBlock
_G['GUI']['TextBlock'].__new = function(rectT, text, textColor, font, textAlignment, wrap, style, color) end

