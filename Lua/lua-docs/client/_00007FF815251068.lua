---@meta
---@class Barotrauma.GUI : System.Object
---`Field Public Static`
---@field MouseCursor Barotrauma.CursorState
---`Field Public Static`
---@field SamplerState Microsoft.Xna.Framework.Graphics.SamplerState
---`Field Public Static`
---@field SamplerStateClamp Microsoft.Xna.Framework.Graphics.SamplerState
---`Field Public Static`
---@field VectorComponentLabels System.String-arr|System.String|string[]
---`Field Public Static`
---@field RectComponentLabels System.String-arr|System.String|string[]
---`Field Public Static`
---@field ColorComponentLabels System.String-arr|System.String|string[]
---`Field Private Static`
---@field mutex System.Object
---`Field Public Static`
---@field ReferenceResolution Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field solidWhiteTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Static`
---@field debugDrawSounds System.Boolean|boolean
---`Field Private Static`
---@field debugDrawEvents System.Boolean|boolean
---`Field Private Static`
---@field debugDrawMetadata System.Boolean|boolean
---`Field Private Static`
---@field debugDrawMetadataOffset System.Int32|integer
---`Field Private Static`
---@field ignoredMetadataInfo System.String-arr|System.String|string[]
---`Field Private Static`
---@field messages System.Collections.Generic.List*1Barotrauma*GUIMessage|Barotrauma.GUIMessage[]
---`Field Public Static`
---@field HideCursor System.Boolean|boolean
---`Field Public Static`
---@field ScreenChanged System.Boolean|boolean
---`Field Private Static`
---@field settingsMenuOpen System.Boolean|boolean
---`Field Public Static`
---@field PreventPauseMenuToggle System.Boolean|boolean
---`Field Public Static`
---@field DisableHUD System.Boolean|boolean
---`Field Public Static`
---@field DisableUpperHUD System.Boolean|boolean
---`Field Public Static`
---@field DisableItemHighlights System.Boolean|boolean
---`Field Public Static`
---@field DisableCharacterNames System.Boolean|boolean
---`Field Private Static`
---@field isSavingIndicatorEnabled System.Boolean|boolean
---`Field Private Static`
---@field savingIndicatorColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field savingIndicatorSpriteIndex System.Single|number
---`Field Private Static`
---@field savingIndicatorColorLerpAmount System.Single|number
---`Field Private Static`
---@field savingIndicatorState Barotrauma.GUI.SavingIndicatorState
---`Field Private Static`
---@field timeUntilSavingIndicatorDisabled System.Nullable*1System*Single|number
---`Field Private Static`
---@field loadedSpritesText System.String|string
---`Field Private Static`
---@field loadedSpritesUpdateTime System.DateTime
---`Field Private Static`
---@field updateList System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Static`
---@field updateListSet System.Collections.Generic.HashSet*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Static`
---@field removals System.Collections.Generic.Queue*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
---`Field Private Static`
---@field additions System.Collections.Generic.Queue*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
---`Field Private Static`
---@field first System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Static`
---@field last System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Static`
---@field usedIndicatorAngles System.Collections.Generic.List*1System*Single|System.Single|number[]
---`Field Private Static`
---@field canonicalCircle System.Collections.Immutable.ImmutableArray*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Field Private Static`
---@field donutVerts Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture-arr|Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture[]
---`Field Private Static`
---@field DonutSegments System.Int32|integer
---`Getter Public Static`
---@field Canvas Barotrauma.GUICanvas
---`Getter Public Static`
---@field Scale System.Single|number
---`Getter Public Static`
---@field xScale System.Single|number
---`Getter Public Static`
---@field yScale System.Single|number
---`Getter Public Static`
---@field HorizontalAspectRatio System.Single|number
---`Getter Public Static`
---@field VerticalAspectRatio System.Single|number
---`Getter Public Static`
---@field RelativeHorizontalAspectRatio System.Single|number
---`Getter Public Static`
---@field RelativeVerticalAspectRatio System.Single|number
---`Getter Public Static`
---@field IsUltrawide System.Boolean|boolean
---`Getter Public Static`
---@field UIWidth System.Int32|integer
---`Getter Public Static`
---@field SlicedSpriteScale System.Single|number
---`Getter Public Static`
---@field WhiteTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Getter Private Static`
---@field MouseCursorSprites Barotrauma.GUICursor
---`Getter Public Static`
---@field GraphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field PauseMenu Barotrauma.GUIFrame
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field SettingsMenuContainer Barotrauma.GUIFrame
---`Getter Public Static`
---@field Arrow Barotrauma.Sprite
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field KeyboardDispatcher EventInput.KeyboardDispatcher
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field SettingsMenuOpen System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field PauseMenuOpen System.Boolean|boolean
---`Getter Public Static`
---@field InputBlockingMenuOpen System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field ScreenOverlayColor Microsoft.Xna.Framework.Color
---`Getter Private Static`
---@field IsSavingIndicatorVisible System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field MouseOn Barotrauma.GUIComponent
_G['GUI']['GUI'] = {}

---`Method Private Static`
---@param data Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---@param index System.Int32|integer
---@param value Microsoft.Xna.Framework.Color
---@return System.Boolean|boolean
_G['GUI']['GUI'].TrySetArray = function(data, index, value) end

---`Method Public Static`
---@overload fun(count:System.Int32|integer, relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, absoluteSpacing?:System.Int32|integer, relativeSpacing?:System.Single|number, extraSpacing?:System.Func*1System*Int32*1System*Int32|(fun(arg:System.Int32|integer):System.Int32|integer), startOffsetAbsolute?:System.Int32|integer, startOffsetRelative?:System.Single|number, isHorizontal?:System.Boolean|boolean, textAlignment?:Barotrauma.Alignment, style?:System.String|string):System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---@param count System.Int32|integer
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param absoluteSpacing? System.Int32|integer
---@param relativeSpacing? System.Single|number
---@param extraSpacing? System.Func*1System*Int32*1System*Int32|(fun(arg:System.Int32|integer):System.Int32|integer)
---@param startOffsetAbsolute? System.Int32|integer
---@param startOffsetRelative? System.Single|number
---@param isHorizontal? System.Boolean|boolean
---@param textAlignment? Barotrauma.Alignment
---@param style? System.String|string
---@return System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
_G['GUI']['GUI'].CreateButtons = function(count, absoluteSize, parent, anchor, pivot, absoluteSpacing, relativeSpacing, extraSpacing, startOffsetAbsolute, startOffsetRelative, isHorizontal, textAlignment, style) end

---`Method Public Static`
---@overload fun(count:System.Int32|integer, relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, constructor:System.Func*1Barotrauma*RectTransform*1Barotrauma*GUI*T|(fun(arg:Barotrauma.RectTransform):Barotrauma.GUI.T), anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, absoluteSpacing?:System.Int32|integer, relativeSpacing?:System.Single|number, extraSpacing?:System.Func*1System*Int32*1System*Int32|(fun(arg:System.Int32|integer):System.Int32|integer), startOffsetAbsolute?:System.Int32|integer, startOffsetRelative?:System.Single|number, isHorizontal?:System.Boolean|boolean):System.Collections.Generic.List*1Barotrauma*GUI*T|Barotrauma.GUI.T[]
---@param count System.Int32|integer
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent Barotrauma.RectTransform
---@param constructor System.Func*1Barotrauma*RectTransform*1Barotrauma*GUI*T|(fun(arg:Barotrauma.RectTransform):Barotrauma.GUI.T)
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param absoluteSpacing? System.Int32|integer
---@param relativeSpacing? System.Single|number
---@param extraSpacing? System.Func*1System*Int32*1System*Int32|(fun(arg:System.Int32|integer):System.Int32|integer)
---@param startOffsetAbsolute? System.Int32|integer
---@param startOffsetRelative? System.Single|number
---@param isHorizontal? System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*GUI*T|Barotrauma.GUI.T[]
_G['GUI']['GUI'].CreateElements = function(count, absoluteSize, parent, constructor, anchor, pivot, absoluteSpacing, relativeSpacing, extraSpacing, startOffsetAbsolute, startOffsetRelative, isHorizontal) end

---`Method Private Static`
---@param count System.Int32|integer
---@param parent Barotrauma.RectTransform
---@param constructor System.Func*1Barotrauma*RectTransform*1Barotrauma*GUI*T|(fun(arg:Barotrauma.RectTransform):Barotrauma.GUI.T)
---@param relativeSize? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param absoluteSize? System.Nullable*1Microsoft*Xna*Framework*Point
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param minSize? System.Nullable*1Microsoft*Xna*Framework*Point
---@param maxSize? System.Nullable*1Microsoft*Xna*Framework*Point
---@param absoluteSpacing? System.Int32|integer
---@param relativeSpacing? System.Single|number
---@param extraSpacing? System.Func*1System*Int32*1System*Int32|(fun(arg:System.Int32|integer):System.Int32|integer)
---@param startOffsetAbsolute? System.Int32|integer
---@param startOffsetRelative? System.Single|number
---@param isHorizontal? System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*GUI*T|Barotrauma.GUI.T[]
_G['GUI']['GUI'].CreateElements = function(count, parent, constructor, relativeSize, absoluteSize, anchor, pivot, minSize, maxSize, absoluteSpacing, relativeSpacing, extraSpacing, startOffsetAbsolute, startOffsetRelative, isHorizontal) end

---`Method Public Static`
---@param value System.Enum
---@param elementHeight System.Int32|integer
---@param name Barotrauma.LocalizedString
---@param parent Barotrauma.RectTransform
---@param toolTip? System.String|string
---@param font? Barotrauma.GUIFont
---@return Barotrauma.GUIComponent
_G['GUI']['GUI'].CreateEnumField = function(value, elementHeight, name, parent, toolTip, font) end

---`Method Public Static`
---@param value Microsoft.Xna.Framework.Rectangle
---@param elementHeight System.Int32|integer
---@param name Barotrauma.LocalizedString
---@param parent Barotrauma.RectTransform
---@param toolTip? Barotrauma.LocalizedString
---@param font? Barotrauma.GUIFont
---@return Barotrauma.GUIComponent
_G['GUI']['GUI'].CreateRectangleField = function(value, elementHeight, name, parent, toolTip, font) end

---`Method Public Static`
---@param value Microsoft.Xna.Framework.Point
---@param elementHeight System.Int32|integer
---@param displayName Barotrauma.LocalizedString
---@param parent Barotrauma.RectTransform
---@param toolTip? Barotrauma.LocalizedString
---@return Barotrauma.GUIComponent
_G['GUI']['GUI'].CreatePointField = function(value, elementHeight, displayName, parent, toolTip) end

---`Method Public Static`
---@param value Microsoft.Xna.Framework.Vector2
---@param elementHeight System.Int32|integer
---@param name Barotrauma.LocalizedString
---@param parent Barotrauma.RectTransform
---@param toolTip? Barotrauma.LocalizedString
---@param font? Barotrauma.GUIFont
---@param decimalsToDisplay? System.Int32|integer
---@return Barotrauma.GUIComponent
_G['GUI']['GUI'].CreateVector2Field = function(value, elementHeight, name, parent, toolTip, font, decimalsToDisplay) end

---`Method Public Static`
---@param header Barotrauma.LocalizedString
---@param body Barotrauma.LocalizedString
_G['GUI']['GUI'].NotifyPrompt = function(header, body) end

---`Method Public Static`
---@param header Barotrauma.LocalizedString
---@param body Barotrauma.LocalizedString
---@param onConfirm System.Action|(fun())
---@param onDeny? System.Action|(fun())
---@return Barotrauma.GUIMessageBox
_G['GUI']['GUI'].AskForConfirmation = function(header, body, onConfirm, onDeny) end

---`Method Public Static`
---@param header Barotrauma.LocalizedString
---@param body System.String|string
---@param onConfirm System.Action*1System*String|(fun(obj:System.String|string))
---@return Barotrauma.GUIMessageBox
_G['GUI']['GUI'].PromptTextInput = function(header, body, onConfirm) end

---`Method Private Static`
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, startOffsetRelative:System.Single|number, startOffsetAbsolute:System.Int32|integer, relativeSpacing:System.Single|number, absoluteSpacing:System.Int32|integer, counter:System.Int32|integer, extra:System.Int32|integer, isHorizontal:System.Boolean|boolean):System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Point
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param startOffsetRelative System.Single|number
---@param startOffsetAbsolute System.Int32|integer
---@param relativeSpacing System.Single|number
---@param absoluteSpacing System.Int32|integer
---@param counter System.Int32|integer
---@param extra System.Int32|integer
---@param isHorizontal System.Boolean|boolean
---@return System.Tuple*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Point
_G['GUI']['GUI'].CalculateOffsets = function(absoluteSize, startOffsetRelative, startOffsetAbsolute, relativeSpacing, absoluteSpacing, counter, extra, isHorizontal) end

---`Method Private Static`
---@overload fun(startOffset:System.Single|number, spacing:System.Single|number, size:System.Single|number, counter:System.Int32|integer):System.Single|number
---@param startOffset System.Single|number
---@param spacing System.Single|number
---@param counter System.Int32|integer
---@return System.Single|number
_G['GUI']['GUI'].CalculateRelativeOffset = function(startOffset, spacing, counter) end

---`Method Private Static`
---@overload fun(startOffset:System.Int32|integer, spacing:System.Int32|integer, counter:System.Int32|integer, extra:System.Int32|integer):System.Int32|integer
---@param startOffset System.Int32|integer
---@param spacing System.Int32|integer
---@param size System.Int32|integer
---@param counter System.Int32|integer
---@param extra System.Int32|integer
---@return System.Int32|integer
_G['GUI']['GUI'].CalculateAbsoluteOffset = function(startOffset, spacing, size, counter, extra) end

---`Method Public Static`
---@param elements System.Collections.Generic.IList*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---@param disallowedAreas? System.Collections.Generic.IList*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param clampArea? System.Nullable*1Microsoft*Xna*Framework*Rectangle
_G['GUI']['GUI'].PreventElementOverlap = function(elements, disallowedAreas, clampArea) end

---`Method Public Static`
_G['GUI']['GUI'].TogglePauseMenu = function() end

---`Method Private Static`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['GUI']['GUI'].TogglePauseMenu = function(button, obj) end

---`Method Public Static`
---@overload fun(message:Barotrauma.LocalizedString, color:Microsoft.Xna.Framework.Color, lifeTime?:System.Nullable*1System*Single|number, playSound?:System.Boolean|boolean, font?:Barotrauma.GUIFont)
---@overload fun(message:Barotrauma.LocalizedString, color:Microsoft.Xna.Framework.Color, pos:Microsoft.Xna.Framework.Vector2, velocity:Microsoft.Xna.Framework.Vector2, lifeTime?:System.Single|number, playSound?:System.Boolean|boolean, soundType?:Barotrauma.GUISoundType, subId?:System.Int32|integer)
---@overload fun(message:System.String|string, color:Microsoft.Xna.Framework.Color, lifeTime?:System.Nullable*1System*Single|number, playSound?:System.Boolean|boolean, font?:Barotrauma.GUIFont)
---@param message System.String|string
---@param color Microsoft.Xna.Framework.Color
---@param pos Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@param lifeTime? System.Single|number
---@param playSound? System.Boolean|boolean
---@param soundType? Barotrauma.GUISoundType
---@param subId? System.Int32|integer
_G['GUI']['GUI'].AddMessage = function(message, color, pos, velocity, lifeTime, playSound, soundType, subId) end

---`Method Public Static`
_G['GUI']['GUI'].ClearMessages = function() end

---`Method Public Static`
---@return System.Boolean|boolean
_G['GUI']['GUI'].IsFourByThree = function() end

---`Method Public Static`
---@param enabled System.Boolean|boolean
_G['GUI']['GUI'].SetSavingIndicatorState = function(enabled) end

---`Method Public Static`
---@param delay? System.Single|number
_G['GUI']['GUI'].DisableSavingIndicatorDelayed = function(delay) end

---`Method Public Static`
---@param f System.Single|number
---@return System.Int32|integer
_G['GUI']['GUI'].IntScale = function(f) end

---`Method Public Static`
---@param f System.Single|number
---@return System.Int32|integer
_G['GUI']['GUI'].IntScaleFloor = function(f) end

---`Method Public Static`
---@param f System.Single|number
---@return System.Int32|integer
_G['GUI']['GUI'].IntScaleCeiling = function(f) end

---`Method Public Static`
---@param f System.Single|number
---@return System.Single|number
_G['GUI']['GUI'].AdjustForTextScale = function(f) end

---`Method Public Static`
_G['GUI']['GUI'].Init = function() end

---`Method Public Static`
---@param cam Barotrauma.Camera
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['GUI'].Draw = function(cam, spriteBatch) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['GUI'].DrawMessageBoxesOnly = function(spriteBatch) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['GUI'].DrawCursor = function(spriteBatch) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param backgroundSprite Barotrauma.Sprite
---@param aberrationStrength? System.Single|number
_G['GUI']['GUI'].DrawBackgroundSprite = function(spriteBatch, backgroundSprite, aberrationStrength) end

---`Method Public Static`
---@param component Barotrauma.GUIComponent
_G['GUI']['GUI'].AddToUpdateList = function(component) end

---`Method Public Static`
---@param component Barotrauma.GUIComponent
---@param alsoChildren? System.Boolean|boolean
_G['GUI']['GUI'].RemoveFromUpdateList = function(component, alsoChildren) end

---`Method Public Static`
_G['GUI']['GUI'].ClearUpdateList = function() end

---`Method Private Static`
_G['GUI']['GUI'].RefreshUpdateList = function() end

---`Method Private Static`
_G['GUI']['GUI'].ProcessAdditions = function() end

---`Method Private Static`
_G['GUI']['GUI'].ProcessRemovals = function() end

---`Method Private Static`
---@param list System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
_G['GUI']['GUI'].ProcessHelperList = function(list) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['GUI']['GUI'].HandlePersistingElements = function(deltaTime) end

---`Method Public Static`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
_G['GUI']['GUI'].GetAdditions = function() end

---`Method Public Static`
---@param target Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['GUI']['GUI'].IsMouseOn = function(target) end

---`Method Public Static`
---@param c Barotrauma.GUIComponent
_G['GUI']['GUI'].ForceMouseOn = function(c) end

---`Method Public Static`
---@return Barotrauma.GUIComponent
_G['GUI']['GUI'].UpdateMouseOn = function() end

---`Method Private Static`
---@param c Barotrauma.GUIComponent
---@return Barotrauma.CursorState
_G['GUI']['GUI'].UpdateMouseCursorState = function(c) end

---`Method Public Static`
---@param waitSeconds? System.Int32|integer
---@param endCondition? System.Func*1System*Boolean|(fun():System.Boolean|boolean)
_G['GUI']['GUI'].SetCursorWaiting = function(waitSeconds, endCondition) end

---`Method Public Static`
_G['GUI']['GUI'].ClearCursorWait = function() end

---`Method Public Static`
---@param referenceResolution Microsoft.Xna.Framework.Point
---@param referenceUIScale System.Single|number
---@param referenceHUDScale System.Single|number
---@return System.Boolean|boolean
_G['GUI']['GUI'].HasSizeChanged = function(referenceResolution, referenceUIScale, referenceHUDScale) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['GUI']['GUI'].Update = function(deltaTime) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['GUI']['GUI'].UpdateGUIMessageBoxesOnly = function(deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['GUI']['GUI'].UpdateMessages = function(deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['GUI']['GUI'].UpdateSavingIndicator = function(deltaTime) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, worldPosition:Microsoft.Xna.Framework.Vector2-ref, cam:Barotrauma.Camera, visibleRange:Barotrauma.Range, sprite:Barotrauma.Sprite, color:Microsoft.Xna.Framework.Color-ref, createOffset?:System.Boolean|boolean, scaleMultiplier?:System.Single|number, overrideAlpha?:System.Nullable*1System*Single|number, label?:Barotrauma.LocalizedString)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param cam Barotrauma.Camera
---@param hideDist System.Single|number
---@param sprite Barotrauma.Sprite
---@param color Microsoft.Xna.Framework.Color
---@param createOffset? System.Boolean|boolean
---@param scaleMultiplier? System.Single|number
---@param overrideAlpha? System.Nullable*1System*Single|number
_G['GUI']['GUI'].DrawIndicator = function(spriteBatch, worldPosition, cam, hideDist, sprite, color, createOffset, scaleMultiplier, overrideAlpha) end

---`Method Public Static`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, start:Microsoft.Xna.Framework.Vector2, luaKey__end:Microsoft.Xna.Framework.Vector2, clr:Microsoft.Xna.Framework.Color, depth?:System.Single|number, width?:System.Single|number)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, sprite:Barotrauma.Sprite, start:Microsoft.Xna.Framework.Vector2, luaKey__end:Microsoft.Xna.Framework.Vector2, clr:Microsoft.Xna.Framework.Color, depth?:System.Single|number, width?:System.Int32|integer)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param clr Microsoft.Xna.Framework.Color
---@param depth? System.Single|number
---@param width? System.Int32|integer
_G['GUI']['GUI'].DrawLine = function(sb, texture, start, luaKey__end, clr, depth, width) end

---`Method Public Static`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, pos:Microsoft.Xna.Framework.Vector2, text:Barotrauma.LocalizedString, color:Microsoft.Xna.Framework.Color, backgroundColor?:System.Nullable*1Microsoft*Xna*Framework*Color, backgroundPadding?:System.Int32|integer, font?:Barotrauma.GUIFont, forceUpperCase?:Barotrauma.ForceUpperCase)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param pos Microsoft.Xna.Framework.Vector2
---@param text System.String|string
---@param color Microsoft.Xna.Framework.Color
---@param backgroundColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param backgroundPadding? System.Int32|integer
---@param font? Barotrauma.GUIFont
---@param forceUpperCase? Barotrauma.ForceUpperCase
_G['GUI']['GUI'].DrawString = function(sb, pos, text, color, backgroundColor, backgroundPadding, font, forceUpperCase) end

---`Method Public Static`
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param pos Microsoft.Xna.Framework.Vector2
---@param text System.String|string
---@param color Microsoft.Xna.Framework.Color
---@param richTextData System.Nullable
---@param backgroundColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param backgroundPadding? System.Int32|integer
---@param font? Barotrauma.GUIFont
---@param depth? System.Single|number
_G['GUI']['GUI'].DrawStringWithColors = function(sb, pos, text, color, richTextData, backgroundColor, backgroundPadding, font, depth) end

---`Method Public Static`
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param center Microsoft.Xna.Framework.Vector2
---@param radii Barotrauma.Range*1System*Single
---@param sectionRad System.Single|number
---@param clr Microsoft.Xna.Framework.Color
---@param depth? System.Single|number
_G['GUI']['GUI'].DrawDonutSection = function(sb, center, radii, sectionRad, clr, depth) end

---`Method Public Static`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, start:Microsoft.Xna.Framework.Vector2, size:Microsoft.Xna.Framework.Vector2, clr:Microsoft.Xna.Framework.Color, isFilled?:System.Boolean|boolean, depth?:System.Single|number, thickness?:System.Single|number)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, rect:Microsoft.Xna.Framework.Rectangle, clr:Microsoft.Xna.Framework.Color, isFilled?:System.Boolean|boolean, depth?:System.Single|number, thickness?:System.Single|number)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, center:Microsoft.Xna.Framework.Vector2, width:System.Single|number, height:System.Single|number, rotation:System.Single|number, clr:Microsoft.Xna.Framework.Color, depth?:System.Single|number, thickness?:System.Single|number)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param corners Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param clr Microsoft.Xna.Framework.Color
---@param depth? System.Single|number
---@param thickness? System.Single|number
_G['GUI']['GUI'].DrawRectangle = function(sb, corners, clr, depth, thickness) end

---`Method Public Static`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, rect:Microsoft.Xna.Framework.RectangleF, clr:Microsoft.Xna.Framework.Color, depth?:System.Single|number)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param start Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@param clr Microsoft.Xna.Framework.Color
---@param depth? System.Single|number
_G['GUI']['GUI'].DrawFilledRectangle = function(sb, start, size, clr, depth) end

---`Method Public Static`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, start:Microsoft.Xna.Framework.Vector2, size:Microsoft.Xna.Framework.Vector2, progress:System.Single|number, clr:Microsoft.Xna.Framework.Color, depth?:System.Single|number)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param start Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@param progress System.Single|number
---@param clr Microsoft.Xna.Framework.Color
---@param outlineColor Microsoft.Xna.Framework.Color
---@param depth? System.Single|number
_G['GUI']['GUI'].DrawProgressBar = function(sb, start, size, progress, clr, outlineColor, depth) end

---`Method Public Static`
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
---@param text System.String|string
---@param color Microsoft.Xna.Framework.Color
---@param isHoldable? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUI']['GUI'].DrawButton = function(sb, rect, text, color, isHoldable) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
_G['GUI']['GUI'].DrawMessages = function(spriteBatch, cam) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param control Microsoft.Xna.Framework.Vector2
---@param pointCount System.Int32|integer
---@param color Microsoft.Xna.Framework.Color
---@param dotSize? System.Int32|integer
_G['GUI']['GUI'].DrawBezierWithDots = function(spriteBatch, start, luaKey__end, control, pointCount, color, dotSize) end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param from Microsoft.Xna.Framework.Vector2
---@param dir Microsoft.Xna.Framework.Vector2
---@param amplitude System.Single|number
---@param length System.Single|number
---@param scale System.Single|number
---@param pointCount System.Int32|integer
---@param color Microsoft.Xna.Framework.Color
---@param dotSize? System.Int32|integer
_G['GUI']['GUI'].DrawSineWithDots = function(spriteBatch, from, dir, amplitude, length, scale, pointCount, color, dotSize) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['GUI'].DrawSavingIndicator = function(spriteBatch) end

---`Method Public Static`
---@param radius System.Int32|integer
---@param filled? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['GUI']['GUI'].CreateCircle = function(radius, filled) end

---`Method Public Static`
---@param radius System.Int32|integer
---@param height System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['GUI']['GUI'].CreateCapsule = function(radius, height) end

---`Method Public Static`
---@param width System.Int32|integer
---@param height System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['GUI']['GUI'].CreateRectangle = function(width, height) end

---`Constructor Private Static`
---@return Barotrauma.GUI
_G['GUI']['GUI'] = function() end

---`Constructor Private Static`
---@return Barotrauma.GUI
_G['GUI']['GUI'].__new = function() end

