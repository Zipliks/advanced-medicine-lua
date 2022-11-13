---@meta
---@class Barotrauma.GUIContextMenu : Barotrauma.GUIComponent
---`Field Private Instance`
---@field Options System.Collections.Generic.Dictionary*1Barotrauma*ContextMenuOption*1Barotrauma*GUITextBlock|{[Barotrauma.ContextMenuOption]:Barotrauma.GUITextBlock}
---`Field Private Instance`
---@field SubMenu Barotrauma.GUIContextMenu
---`Field Public Instance`
---@field HeaderLabel Barotrauma.GUITextBlock
---`Field Public Instance`
---@field ParentOption Barotrauma.GUITextBlock
---`Field Public Static`
---@field CurrentContextMenu Barotrauma.GUIContextMenu
_G['GUIContextMenu'] = {}

---`Method Public Static`
---@overload fun(...:Barotrauma.ContextMenuOption):Barotrauma.GUIContextMenu
---@param pos System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param header Barotrauma.LocalizedString
---@param headerColor System.Nullable*1Microsoft*Xna*Framework*Color
---@param ... Barotrauma.ContextMenuOption
---@return Barotrauma.GUIContextMenu
_G['GUIContextMenu'].CreateContextMenu = function(pos, header, headerColor, ...) end

---`Method Private Instance`
---@param _ Barotrauma.GUIComponent
---@param data System.Object
---@return System.Boolean|boolean
_G['GUIContextMenu'].OnSelected = function(_, data) end

---`Method Private Instance`
---@param size Microsoft.Xna.Framework.Point-ref
---@param label Barotrauma.LocalizedString
---@param font Barotrauma.ScalableFont
---@return Microsoft.Xna.Framework.Vector2
_G['GUIContextMenu'].InflateSize = function(size, label, font) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUIContextMenu'].Update = function(deltaTime) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['GUIContextMenu'].IsMouseOver = function() end

---`Method Public Instance Virtual`
---@param ignoreChildren? System.Boolean|boolean
---@param order? System.Int32|integer
_G['GUIContextMenu'].AddToGUIUpdateList = function(ignoreChildren, order) end

---`Method Public Static`
_G['GUIContextMenu'].AddActiveToGUIUpdateList = function() end

---`Constructor Public Instance`
---@param position System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param header Barotrauma.LocalizedString
---@param style System.String|string
---@param ... Barotrauma.ContextMenuOption
---@return Barotrauma.GUIContextMenu
_G['GUIContextMenu'] = function(position, header, style, ...) end

---`Constructor Public Instance`
---@param position System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param header Barotrauma.LocalizedString
---@param style System.String|string
---@param ... Barotrauma.ContextMenuOption
---@return Barotrauma.GUIContextMenu
_G['GUIContextMenu'].__new = function(position, header, style, ...) end

