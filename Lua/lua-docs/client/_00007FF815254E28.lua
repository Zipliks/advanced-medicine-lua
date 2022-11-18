---@meta
---@class Barotrauma.RectTransform : System.Object
---`Field Private Instance`
---@field parent Barotrauma.RectTransform
---`Field NonPublic Instance`
---@field children System.Collections.Generic.List*1Barotrauma*RectTransform|Barotrauma.RectTransform[]
---`Field Private Instance`
---@field relativeSize Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field minSize System.Nullable*1Microsoft*Xna*Framework*Point
---`Field Private Instance`
---@field maxSize System.Nullable*1Microsoft*Xna*Framework*Point
---`Field Private Instance`
---@field nonScaledSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field localScale Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field relativeOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field absoluteOffset Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field screenSpaceOffset Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field recalculateRect System.Boolean|boolean
---`Field Private Instance`
---@field _rect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field pivot Barotrauma.Pivot
---`Field Private Instance`
---@field anchor Barotrauma.Anchor
---`Field Private Instance`
---@field _scaleBasis Barotrauma.ScaleBasis
---`Field Private Instance`
---@field ParentChanged System.Action*1Barotrauma*RectTransform|(fun(obj:Barotrauma.RectTransform))
---`Field Private Instance`
---@field ChildrenChanged System.Action*1Barotrauma*RectTransform|(fun(obj:Barotrauma.RectTransform))
---`Field Private Instance`
---@field ScaleChanged System.Action|(fun())
---`Field Private Instance`
---@field SizeChanged System.Action|(fun())
---`Field Private Instance`
---@field animTargetPos System.Nullable*1Microsoft*Xna*Framework*Point
---`Field Public Static`
---@field MaxPoint Microsoft.Xna.Framework.Point
---`Field Public Static`
---@field globalScale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GUIComponent Barotrauma.GUIComponent
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Parent Barotrauma.RectTransform
---`Getter Public Instance`
---@field Children System.Collections.Generic.IEnumerable*1Barotrauma*RectTransform|(fun():Barotrauma.RectTransform)
---`Getter Public Instance`
---@field CountChildren System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RelativeSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinSize Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxSize Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NonScaledSize Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field ScaledSize Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LocalScale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Scale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RelativeOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AbsoluteOffset Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScreenSpaceOffset Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PivotOffset Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AnchorPoint Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field TopLeft Microsoft.Xna.Framework.Point
---`Getter NonPublic Instance`
---@field NonScaledTopLeft Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field ParentRect Microsoft.Xna.Framework.Rectangle
---`Getter NonPublic Instance`
---@field NonScaledRect Microsoft.Xna.Framework.Rectangle
---`Getter NonPublic Instance Virtual`
---@field NonScaledUIRect Microsoft.Xna.Framework.Rectangle
---`Getter NonPublic Instance`
---@field NonScaledParentSize Microsoft.Xna.Framework.Point
---`Getter NonPublic Instance`
---@field NonScaledParentRect Microsoft.Xna.Framework.Rectangle
---`Getter NonPublic Instance`
---@field NonScaledParentUIRect Microsoft.Xna.Framework.Rectangle
---`Getter NonPublic Instance`
---@field UIRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Pivot Barotrauma.Pivot
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Anchor Barotrauma.Anchor
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScaleBasis Barotrauma.ScaleBasis
---`Getter Public Instance`
---@field IsLastChild System.Boolean|boolean
---`Getter Public Instance`
---@field IsFirstChild System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsFixedSize System.Boolean|boolean
---`Getter Public Instance`
---@field AnimTargetPos Microsoft.Xna.Framework.Point
_G['GUI']['RectTransform'] = {}

---`Method Public Instance`
_G['GUI']['RectTransform'].SetAsLastChild = function() end

---`Method Public Instance`
_G['GUI']['RectTransform'].SetAsFirstChild = function() end

---`Method Public Instance`
---@param index System.Int32|integer
---@return System.Boolean|boolean
_G['GUI']['RectTransform'].RepositionChildInHierarchy = function(index) end

---`Method Public Instance`
---@param resize System.Boolean|boolean
---@param scale? System.Boolean|boolean
_G['GUI']['RectTransform'].RecalculateChildren = function(resize, scale) end

---`Method Public Instance`
---@param ignoreChildren? System.Boolean|boolean
---@param order? System.Int32|integer
_G['GUI']['RectTransform'].AddChildrenToGUIUpdateList = function(ignoreChildren, order) end

---`Method Public Instance`
_G['GUI']['RectTransform'].MatchPivotToAnchor = function() end

---`Method Public Static`
---@param anchor Barotrauma.Anchor
---@return Barotrauma.Pivot
_G['GUI']['RectTransform'].MatchPivotToAnchor = function(anchor) end

---`Method Public Instance`
---@param targetPos Microsoft.Xna.Framework.Point
---@param duration System.Single|number
---@param onDoneMoving? System.Action|(fun())
_G['GUI']['RectTransform'].MoveOverTime = function(targetPos, duration, onDoneMoving) end

---`Method Public Instance`
---@param targetSize Microsoft.Xna.Framework.Point
---@param duration System.Single|number
_G['GUI']['RectTransform'].ScaleOverTime = function(targetSize, duration) end

---`Method Private Instance`
---@param targetPos Microsoft.Xna.Framework.Point
---@param duration System.Single|number
---@param onDoneMoving? System.Action|(fun())
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GUI']['RectTransform'].DoMoveAnimation = function(targetPos, duration, onDoneMoving) end

---`Method Private Instance`
---@param targetSize Microsoft.Xna.Framework.Point
---@param duration System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GUI']['RectTransform'].DoScaleAnimation = function(targetSize, duration) end

---`Method Public Static`
---@param offset Microsoft.Xna.Framework.Point
---@param anchor Barotrauma.Anchor
---@return Microsoft.Xna.Framework.Point
_G['GUI']['RectTransform'].ConvertOffsetRelativeToAnchor = function(offset, anchor) end

---`Method Public Static`
---@param pivot Barotrauma.Pivot
---@param size Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Point
_G['GUI']['RectTransform'].CalculatePivotOffset = function(pivot, size) end

---`Method Public Static`
---@param anchor Barotrauma.Anchor
---@param parent Microsoft.Xna.Framework.Rectangle
---@return Microsoft.Xna.Framework.Point
_G['GUI']['RectTransform'].CalculateAnchorPoint = function(anchor, parent) end

---`Method Public Static`
_G['GUI']['RectTransform'].ResetGlobalScale = function() end

---`Method Public Instance`
_G['GUI']['RectTransform'].ResetSizeChanged = function() end

---`Method Public Static`
---@param element System.Xml.Linq.XElement
---@param parent Barotrauma.RectTransform
---@param defaultAnchor? Barotrauma.Anchor
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'].Load = function(element, parent, defaultAnchor) end

---`Method Private Instance`
---@param parent? Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
_G['GUI']['RectTransform'].Init = function(parent, anchor, pivot) end

---`Method NonPublic Instance`
_G['GUI']['RectTransform'].RecalculateScale = function() end

---`Method Public Instance`
---@param withChildren System.Boolean|boolean
_G['GUI']['RectTransform'].RecalculateScale = function(withChildren) end

---`Method NonPublic Instance`
_G['GUI']['RectTransform'].RecalculatePivotOffset = function() end

---`Method NonPublic Instance`
_G['GUI']['RectTransform'].RecalculateAnchorPoint = function() end

---`Method NonPublic Instance`
_G['GUI']['RectTransform'].RecalculateRelativeSize = function() end

---`Method NonPublic Instance`
_G['GUI']['RectTransform'].RecalculateAbsoluteSize = function() end

---`Method NonPublic Instance`
---@param resize System.Boolean|boolean
---@param scale? System.Boolean|boolean
---@param withChildren? System.Boolean|boolean
_G['GUI']['RectTransform'].RecalculateAll = function(resize, scale, withChildren) end

---`Method Private Instance`
---@param displayErrors? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUI']['RectTransform'].RemoveFromHierarchy = function(displayErrors) end

---`Method Public Instance`
---@param anchor Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
_G['GUI']['RectTransform'].SetPosition = function(anchor, pivot) end

---`Method Public Instance`
---@overload fun(absoluteSize:Microsoft.Xna.Framework.Point, resizeChildren?:System.Boolean|boolean)
---@param relativeSize Microsoft.Xna.Framework.Vector2
---@param resizeChildren? System.Boolean|boolean
_G['GUI']['RectTransform'].Resize = function(relativeSize, resizeChildren) end

---`Method Public Instance`
---@param newScale Microsoft.Xna.Framework.Vector2
_G['GUI']['RectTransform'].ChangeScale = function(newScale) end

---`Method Public Instance`
_G['GUI']['RectTransform'].ResetScale = function() end

---`Method Public Instance`
---@param translation Microsoft.Xna.Framework.Point
_G['GUI']['RectTransform'].Translate = function(translation) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*RectTransform|(fun():Barotrauma.RectTransform)
_G['GUI']['RectTransform'].GetParents = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*RectTransform|(fun():Barotrauma.RectTransform)
_G['GUI']['RectTransform'].GetAllChildren = function() end

---`Method Public Instance`
---@param rectT Barotrauma.RectTransform
---@return System.Int32|integer
_G['GUI']['RectTransform'].GetChildIndex = function(rectT) end

---`Method Public Instance`
---@param index System.Int32|integer
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'].GetChild = function(index) end

---`Method Public Instance`
---@param rectT Barotrauma.RectTransform
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUI']['RectTransform'].IsParentOf = function(rectT, recursive) end

---`Method Public Instance`
---@param rectT Barotrauma.RectTransform
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['GUI']['RectTransform'].IsChildOf = function(rectT, recursive) end

---`Method Public Instance`
_G['GUI']['RectTransform'].ClearChildren = function() end

---`Method Public Instance`
---@param comparison System.Comparison*1Barotrauma*RectTransform|(fun(x:Barotrauma.RectTransform, y:Barotrauma.RectTransform):System.Int32|integer)
_G['GUI']['RectTransform'].SortChildren = function(comparison) end

---`Method Public Instance`
_G['GUI']['RectTransform'].ReverseChildren = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.RectTransform
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, scaleBasis?:Barotrauma.ScaleBasis):Barotrauma.RectTransform
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent? Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param scaleBasis? Barotrauma.ScaleBasis
---@param isFixedSize? System.Boolean|boolean
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'] = function(absoluteSize, parent, anchor, pivot, scaleBasis, isFixedSize) end

---`Constructor Private Static`
---@overload fun():Barotrauma.RectTransform
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, scaleBasis?:Barotrauma.ScaleBasis):Barotrauma.RectTransform
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent? Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param scaleBasis? Barotrauma.ScaleBasis
---@param isFixedSize? System.Boolean|boolean
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'].__new = function(absoluteSize, parent, anchor, pivot, scaleBasis, isFixedSize) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.RectTransform
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, scaleBasis?:Barotrauma.ScaleBasis):Barotrauma.RectTransform
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent? Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param scaleBasis? Barotrauma.ScaleBasis
---@param isFixedSize? System.Boolean|boolean
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'] = function(absoluteSize, parent, anchor, pivot, scaleBasis, isFixedSize) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.RectTransform
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, anchor?:Barotrauma.Anchor, pivot?:System.Nullable*1Barotrauma*Pivot, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, maxSize?:System.Nullable*1Microsoft*Xna*Framework*Point, scaleBasis?:Barotrauma.ScaleBasis):Barotrauma.RectTransform
---@param absoluteSize Microsoft.Xna.Framework.Point
---@param parent? Barotrauma.RectTransform
---@param anchor? Barotrauma.Anchor
---@param pivot? System.Nullable*1Barotrauma*Pivot
---@param scaleBasis? Barotrauma.ScaleBasis
---@param isFixedSize? System.Boolean|boolean
---@return Barotrauma.RectTransform
_G['GUI']['RectTransform'].__new = function(absoluteSize, parent, anchor, pivot, scaleBasis, isFixedSize) end

