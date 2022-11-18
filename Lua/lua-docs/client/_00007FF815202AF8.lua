---@meta
---@class Barotrauma.GUIComponent : System.Object
---`Field Public Instance`
---@field HoverCursor Barotrauma.CursorState
---`Field Public Instance`
---@field AlwaysOverrideCursor System.Boolean|boolean
---`Field Public Instance`
---@field OnSecondaryClicked Barotrauma.GUIComponent.SecondaryButtonDownHandler|(fun(component:Barotrauma.GUIComponent, userData:System.Object):System.Boolean|boolean)
---`Field Private Instance`
---@field bounceTimer System.Single|number
---`Field Private Instance`
---@field bounceJump System.Single|number
---`Field Private Instance`
---@field bounceDown System.Boolean|boolean
---`Field Public Instance`
---@field OnAddedToGUIUpdateList System.Action*1Barotrauma*GUIComponent|(fun(obj:Barotrauma.GUIComponent))
---`Field NonPublic Instance`
---@field alignment Barotrauma.Alignment
---`Field NonPublic Instance`
---@field styleHierarchy Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---`Field Public Instance`
---@field CanBeFocused System.Boolean|boolean
---`Field NonPublic Instance`
---@field color Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field hoverColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field selectedColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field disabledColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field pressedColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field pulsateCoroutine Barotrauma.CoroutineHandle
---`Field NonPublic Instance`
---@field flashColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field flashDuration System.Single|number
---`Field Private Instance`
---@field useRectangleFlash System.Boolean|boolean
---`Field Private Instance`
---@field useCircularFlash System.Boolean|boolean
---`Field NonPublic Instance`
---@field flashTimer System.Single|number
---`Field Private Instance`
---@field flashRectInflate Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field ignoreLayoutGroups System.Boolean|boolean
---`Field Private Instance`
---@field toolTip Barotrauma.RichString
---`Field NonPublic Instance`
---@field enabled System.Boolean|boolean
---`Field Public Instance`
---@field sprites System.Collections.Generic.Dictionary*1Barotrauma*GUIComponent*ComponentState*1System*Collections*Generic*List*2Barotrauma*UISprite|{[Barotrauma.GUIComponent.ComponentState]:System.Collections.Generic.List*1Barotrauma*UISprite|Barotrauma.UISprite[]}
---`Field Public Instance`
---@field SpriteEffects Microsoft.Xna.Framework.Graphics.SpriteEffects
---`Field NonPublic Instance`
---@field _state Barotrauma.GUIComponent.ComponentState
---`Field NonPublic Instance`
---@field _previousState Barotrauma.GUIComponent.ComponentState
---`Field NonPublic Instance`
---@field isSelected System.Boolean|boolean
---`Field Public Instance`
---@field UserData System.Object
---`Field Private Instance`
---@field spriteFadeTimer System.Single|number
---`Field Private Instance`
---@field colorFadeTimer System.Single|number
---`Field Public Instance`
---@field ExternalHighlight System.Boolean|boolean
---`Field Private Instance`
---@field rectTransform Barotrauma.RectTransform
---`Field NonPublic Instance`
---@field _currentColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field toolTipBlock Barotrauma.GUITextBlock
---`Getter Public Instance`
---@field Parent Barotrauma.GUIComponent
---`Getter Public Instance`
---@field Children System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoUpdate System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoDraw System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UpdateOrder System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Bounce System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GlowOnSelect System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UVOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field FlashTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreLayoutGroups System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field ToolTip Barotrauma.RichString
---`Getter Public Instance`
---@field Style Barotrauma.GUIComponentStyle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Visible System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---@field Center Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ClampMouseRectToParent System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field MouseRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field OutlineColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Selected System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field State Barotrauma.GUIComponent.ComponentState
---`Getter Public Instance`
---@field CountChildren System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DefaultColor Microsoft.Xna.Framework.Color
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
---@field DisabledColor Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PressedColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ColorTransition Barotrauma.TransitionMode
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FallBackState Barotrauma.SpriteFallBackState
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteCrossFadeTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ColorCrossFadeTime System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PlaySoundOnSelect System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RectTransform Barotrauma.RectTransform
_G['GUIComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUIComponent'].Draw = function(spriteBatch) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUIComponent'].DrawToolTip = function(spriteBatch) end

---`Method Public Static`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, toolTip:Barotrauma.RichString, pos:Microsoft.Xna.Framework.Vector2)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param toolTip Barotrauma.RichString
---@param targetElement Microsoft.Xna.Framework.Rectangle
_G['GUIComponent'].DrawToolTip = function(spriteBatch, toolTip, targetElement) end

---`Method NonPublic Instance Virtual`
---@param a System.Single|number
_G['GUIComponent'].SetAlpha = function(a) end

---`Method Public Instance Virtual`
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param flashDuration? System.Single|number
---@param useRectangleFlash? System.Boolean|boolean
---@param useCircularFlash? System.Boolean|boolean
---@param flashRectInflate? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['GUIComponent'].Flash = function(color, flashDuration, useRectangleFlash, useCircularFlash, flashRectInflate) end

---`Method Public Instance`
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
_G['GUIComponent'].ImmediateFlash = function(color) end

---`Method Public Instance`
---@param duration System.Single|number
---@param removeAfter System.Boolean|boolean
---@param wait? System.Single|number
---@param onRemove? System.Action|(fun())
_G['GUIComponent'].FadeOut = function(duration, removeAfter, wait, onRemove) end

---`Method Public Instance`
---@param wait System.Single|number
---@param duration System.Single|number
_G['GUIComponent'].FadeIn = function(wait, duration) end

---`Method Public Instance`
---@param wait System.Single|number
---@param duration System.Single|number
---@param amount System.Int32|integer
---@param direction Barotrauma.SlideDirection
_G['GUIComponent'].SlideIn = function(wait, duration, amount, direction) end

---`Method Public Instance`
---@param duration System.Single|number
---@param amount System.Int32|integer
---@param direction Barotrauma.SlideDirection
_G['GUIComponent'].SlideOut = function(duration, amount, direction) end

---`Method Private Instance`
---@param duration System.Single|number
---@param wait System.Single|number
---@param target Microsoft.Xna.Framework.Vector2
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GUIComponent'].SlideToPosition = function(duration, wait, target) end

---`Method Private Instance`
---@param to System.Single|number
---@param duration System.Single|number
---@param removeAfter System.Boolean|boolean
---@param wait? System.Single|number
---@param onRemove? System.Action|(fun())
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GUIComponent'].LerpAlpha = function(to, duration, removeAfter, wait, onRemove) end

---`Method Public Instance`
---@param startScale Microsoft.Xna.Framework.Vector2
---@param endScale Microsoft.Xna.Framework.Vector2
---@param duration System.Single|number
_G['GUIComponent'].Pulsate = function(startScale, endScale, duration) end

---`Method Private Instance`
---@param startScale Microsoft.Xna.Framework.Vector2
---@param endScale Microsoft.Xna.Framework.Vector2
---@param duration System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GUIComponent'].DoPulsate = function(startScale, endScale, duration) end

---`Method Public Instance Virtual`
---@param style Barotrauma.GUIComponentStyle
_G['GUIComponent'].ApplyStyle = function(style) end

---`Method Public Instance`
---@param style Barotrauma.GUIComponentStyle
_G['GUIComponent'].ApplySizeRestrictions = function(style) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIComponent
_G['GUIComponent'].FromXML = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['GUIComponent'].CheckConditional = function(element) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@param overrideText? System.String|string
---@param anchor? System.Nullable*1Barotrauma*Anchor
---@return Barotrauma.GUITextBlock
_G['GUIComponent'].LoadGUITextBlock = function(element, parent, overrideText, anchor) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIButton
_G['GUIComponent'].LoadLink = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
_G['GUIComponent'].LoadGridText = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIFrame
_G['GUIComponent'].LoadGUIFrame = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIButton
_G['GUIComponent'].LoadGUIButton = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIListBox
_G['GUIComponent'].LoadGUIListBox = function(element, parent) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUILayoutGroup
_G['GUIComponent'].LoadGUILayoutGroup = function(element, parent) end

---`Method Private Static`
---@param element Barotrauma.ContentXElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIImage
_G['GUIComponent'].LoadGUIImage = function(element, parent) end

---`Method Private Static`
---@param element Barotrauma.ContentXElement
---@param parent Barotrauma.RectTransform
---@return Barotrauma.GUIButton
_G['GUIComponent'].LoadAccordion = function(element, parent) end

---`Method Public Instance`
---@overload fun():Barotrauma.GUIComponent.T
---@param index System.Int32|integer
---@return Barotrauma.GUIComponent
_G['GUIComponent'].GetChild = function(index) end

---`Method Public Instance`
---@return Barotrauma.GUIComponent.T
_G['GUIComponent'].GetAnyChild = function() end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent*T|(fun():Barotrauma.GUIComponent.T)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
_G['GUIComponent'].GetAllChildren = function() end

---`Method Public Instance`
---@param child Barotrauma.GUIComponent
---@return System.Int32|integer
_G['GUIComponent'].GetChildIndex = function(child) end

---`Method Public Instance`
---@param obj System.Object
---@return Barotrauma.GUIComponent
_G['GUIComponent'].GetChildByUserData = function(obj) end

---`Method Public Instance`
---@param component Barotrauma.GUIComponent
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUIComponent'].IsParentOf = function(component, recursive) end

---`Method Public Instance`
---@param component Barotrauma.GUIComponent
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUIComponent'].IsChildOf = function(component, recursive) end

---`Method Public Instance Virtual`
---@param child Barotrauma.GUIComponent
_G['GUIComponent'].RemoveChild = function(child) end

---`Method Public Instance`
---@overload fun(predicate:System.Func*1Barotrauma*GUIComponent*1System*Boolean|(fun(arg:Barotrauma.GUIComponent):System.Boolean|boolean), recursive?:System.Boolean|boolean):Barotrauma.GUIComponent
---@param userData System.Object
---@param recursive? System.Boolean|boolean
---@return Barotrauma.GUIComponent
_G['GUIComponent'].FindChild = function(userData, recursive) end

---`Method Public Instance`
---@overload fun(userData:System.Object):System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
---@param predicate System.Func*1Barotrauma*GUIComponent*1System*Boolean|(fun(arg:Barotrauma.GUIComponent):System.Boolean|boolean)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*GUIComponent|(fun():Barotrauma.GUIComponent)
_G['GUIComponent'].FindChildren = function(predicate) end

---`Method Public Instance Virtual`
_G['GUIComponent'].ClearChildren = function() end

---`Method Public Instance`
_G['GUIComponent'].SetAsFirstChild = function() end

---`Method Public Instance`
_G['GUIComponent'].SetAsLastChild = function() end

---`Method NonPublic Instance`
---@param r Microsoft.Xna.Framework.Rectangle
---@return Microsoft.Xna.Framework.Rectangle
_G['GUIComponent'].ClampRect = function(r) end

---`Method Public Instance Virtual`
---@param ignoreChildren? System.Boolean|boolean
---@param order? System.Int32|integer
_G['GUIComponent'].AddToGUIUpdateList = function(ignoreChildren, order) end

---`Method Public Instance`
---@param alsoChildren? System.Boolean|boolean
_G['GUIComponent'].RemoveFromGUIUpdateList = function(alsoChildren) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['GUIComponent'].UpdateAuto = function(deltaTime) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
_G['GUIComponent'].UpdateManually = function(deltaTime, alsoChildren, recursive) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUIComponent'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
_G['GUIComponent'].ForceLayoutRecalculation = function() end

---`Method Public Instance`
_G['GUIComponent'].ForceUpdate = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param recursive System.Boolean|boolean
_G['GUIComponent'].UpdateChildren = function(deltaTime, recursive) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUIComponent'].DrawAuto = function(spriteBatch) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
_G['GUIComponent'].DrawManually = function(spriteBatch, alsoChildren, recursive) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param recursive System.Boolean|boolean
_G['GUIComponent'].DrawChildren = function(spriteBatch, recursive) end

---`Method NonPublic Instance Virtual`
---@param state Barotrauma.GUIComponent.ComponentState
---@return Microsoft.Xna.Framework.Color
_G['GUIComponent'].GetColor = function(state) end

---`Method NonPublic Instance`
---@param targetColor Microsoft.Xna.Framework.Color
---@param blendedColor Microsoft.Xna.Framework.Color-ref
---@return Microsoft.Xna.Framework.Color
_G['GUIComponent'].GetBlendedColor = function(targetColor, blendedColor) end

---`Constructor NonPublic Instance`
---@overload fun(style:System.String|string, rectT:Barotrauma.RectTransform):Barotrauma.GUIComponent
---@param style System.String|string
---@return Barotrauma.GUIComponent
_G['GUIComponent'] = function(style) end

---`Constructor NonPublic Instance`
---@overload fun(style:System.String|string, rectT:Barotrauma.RectTransform):Barotrauma.GUIComponent
---@param style System.String|string
---@return Barotrauma.GUIComponent
_G['GUIComponent'].__new = function(style) end

