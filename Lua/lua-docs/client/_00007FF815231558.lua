---@meta
---@class Barotrauma.VisualSlot : System.Object
---`Field Public Instance`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field InteractRect Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field Disabled System.Boolean|boolean
---`Field Public Instance`
---@field State Barotrauma.GUIComponent.ComponentState
---`Field Public Instance`
---@field DrawOffset Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field HighlightColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field HighlightScaleUpAmount System.Single|number
---`Field Private Instance`
---@field highlightCoroutine Barotrauma.CoroutineHandle
---`Field Public Instance`
---@field HighlightTimer System.Single|number
---`Field Public Instance`
---@field SlotSprite Barotrauma.Sprite
---`Field Public Instance`
---@field InventoryKeyIndex System.Int32|integer
---`Field Public Instance`
---@field SubInventoryDir System.Int32|integer
---`Field Public Instance`
---@field QuickUseTimer System.Single|number
---`Field Public Instance`
---@field QuickUseButtonToolTip Barotrauma.LocalizedString
---`Field Public Instance`
---@field IsMoving System.Boolean|boolean
---`Field Public Instance`
---@field EquipButtonState Barotrauma.GUIComponent.ComponentState
---`Field Private Instance`
---@field currentHighlightState System.Single|number
---`Field Private Instance`
---@field fadeInDuration System.Single|number
---`Field Private Instance`
---@field fadeOutDuration System.Single|number
---`Field Private Instance`
---@field currentHighlightColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field offScreenRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field IsHighlighted System.Boolean|boolean
---`Getter Public Instance`
---@field EquipButtonRect Microsoft.Xna.Framework.Rectangle
_G['VisualSlot'] = {}

---`Method Public Instance`
---@return System.Boolean|boolean
_G['VisualSlot'].MouseOn = function() end

---`Method Public Instance`
---@param color Microsoft.Xna.Framework.Color
---@param fadeInDuration System.Single|number
---@param fadeOutDuration System.Single|number
---@param scaleUpAmount? System.Single|number
_G['VisualSlot'].ShowBorderHighlight = function(color, fadeInDuration, fadeOutDuration, scaleUpAmount) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['VisualSlot'].UpdateBorderHighlight = function() end

---`Method Public Instance`
---@param newSlot Barotrauma.VisualSlot
_G['VisualSlot'].MoveBorderHighlight = function(newSlot) end

---`Constructor Public Instance`
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle):Barotrauma.VisualSlot
---@return Barotrauma.VisualSlot
_G['VisualSlot'] = function() end

---`Constructor Public Instance`
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle):Barotrauma.VisualSlot
---@return Barotrauma.VisualSlot
_G['VisualSlot'].__new = function() end

---`Constructor Private Static`
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle):Barotrauma.VisualSlot
---@return Barotrauma.VisualSlot
_G['VisualSlot'] = function() end

---`Constructor Private Static`
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle):Barotrauma.VisualSlot
---@return Barotrauma.VisualSlot
_G['VisualSlot'].__new = function() end

