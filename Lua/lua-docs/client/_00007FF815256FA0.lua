---@meta
---@class Barotrauma.GUILayoutGroup : Barotrauma.GUIComponent
---`Field Private Instance`
---@field isHorizontal System.Boolean|boolean
---`Field Private Instance`
---@field stretch System.Boolean|boolean
---`Field Private Instance`
---@field absoluteSpacing System.Int32|integer
---`Field Private Instance`
---@field relativeSpacing System.Single|number
---`Field Private Instance`
---@field childAnchor Barotrauma.Anchor
---`Field Private Instance`
---@field needsToRecalculate System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Stretch System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AbsoluteSpacing System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RelativeSpacing System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ChildAnchor Barotrauma.Anchor
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsToRecalculate System.Boolean|boolean
_G['GUI']['LayoutGroup'] = {}

---`Method Public Instance`
_G['GUI']['LayoutGroup'].Recalculate = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['LayoutGroup'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param isHorizontal? System.Boolean|boolean
---@param childAnchor? Barotrauma.Anchor
---@return Barotrauma.GUILayoutGroup
_G['GUI']['LayoutGroup'] = function(rectT, isHorizontal, childAnchor) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param isHorizontal? System.Boolean|boolean
---@param childAnchor? Barotrauma.Anchor
---@return Barotrauma.GUILayoutGroup
_G['GUI']['LayoutGroup'].__new = function(rectT, isHorizontal, childAnchor) end

