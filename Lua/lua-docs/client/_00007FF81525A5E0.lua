---@meta
---@class Barotrauma.GUIScrollBar : Barotrauma.GUIComponent
---`Field Private Instance`
---@field isHorizontal System.Boolean|boolean
---`Field Private Instance`
---@field barSize System.Single|number
---`Field Private Instance`
---@field barScroll System.Single|number
---`Field Private Instance`
---@field step System.Single|number
---`Field Private Instance`
---@field dragStartPos System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Public Instance`
---@field OnMoved Barotrauma.GUIScrollBar.OnMovedHandler|(fun(scrollBar:Barotrauma.GUIScrollBar, barScroll:System.Single|number):System.Boolean|boolean)
---`Field Public Instance`
---@field OnReleased Barotrauma.GUIScrollBar.OnMovedHandler|(fun(scrollBar:Barotrauma.GUIScrollBar, barScroll:System.Single|number):System.Boolean|boolean)
---`Field Public Instance`
---@field IsBooleanSwitch System.Boolean|boolean
---`Field Private Instance`
---@field minValue System.Single|number
---`Field Private Instance`
---@field maxValue System.Single|number
---`Field Private Instance`
---@field range Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field ScrollToValue Barotrauma.GUIScrollBar.ScrollConversion|(fun(scrollBar:Barotrauma.GUIScrollBar, f:System.Single|number):System.Single|number)
---`Field Public Instance`
---@field ValueToScroll Barotrauma.GUIScrollBar.ScrollConversion|(fun(scrollBar:Barotrauma.GUIScrollBar, f:System.Single|number):System.Single|number)
---`Field Public Instance`
---@field UnclampedBarSize System.Single|number
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field DraggingBar Barotrauma.GUIScrollBar
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Frame Barotrauma.GUIFrame
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Bar Barotrauma.GUIButton
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field ToolTip Barotrauma.RichString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinValue System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxValue System.Single|number
---`Getter Public Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarScrollValue System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarScroll System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Step System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StepValue System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarSize System.Single|number
_G['GUI']['ScrollBar'] = {}

---`Method Private Instance`
_G['GUI']['ScrollBar'].UpdateRect = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['ScrollBar'].Update = function(deltaTime) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['GUI']['ScrollBar'].SelectBar = function() end

---`Method Public Instance`
---@param moveAmount Microsoft.Xna.Framework.Vector2
_G['GUI']['ScrollBar'].MoveButton = function(moveAmount) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param barSize? System.Single|number
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param style? System.String|string
---@param isHorizontal? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.GUIScrollBar
_G['GUI']['ScrollBar'] = function(rectT, barSize, color, style, isHorizontal) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param barSize? System.Single|number
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param style? System.String|string
---@param isHorizontal? System.Nullable*1System*Boolean|boolean
---@return Barotrauma.GUIScrollBar
_G['GUI']['ScrollBar'].__new = function(rectT, barSize, color, style, isHorizontal) end

