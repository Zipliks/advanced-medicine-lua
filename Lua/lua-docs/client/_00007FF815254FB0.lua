---@meta
---@class Barotrauma.GUICanvas : Barotrauma.RectTransform
---`Field Private Instance`
---@field childrenWeakRef System.Collections.Generic.List*1System*WeakReference*2Barotrauma*RectTransform|System.WeakReference*1Barotrauma*RectTransform[]
---`Field Private Static`
---@field mutex System.Object
---`Field Private Static`
---@field _instance Barotrauma.GUICanvas
---`Getter Public Static`
---@field Instance Barotrauma.GUICanvas
---`Getter Private Static`
---@field size Microsoft.Xna.Framework.Vector2
---`Getter NonPublic Instance Virtual`
---@field NonScaledUIRect Microsoft.Xna.Framework.Rectangle
_G['GUI']['Canvas'] = {}

---`Method Private Static`
---@param _ Barotrauma.RectTransform
_G['GUI']['Canvas'].OnChildrenChanged = function(_) end

---`Method Private Static`
_G['GUI']['Canvas'].RecalculateSize = function() end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.GUICanvas
---@return Barotrauma.GUICanvas
_G['GUI']['Canvas'] = function() end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.GUICanvas
---@return Barotrauma.GUICanvas
_G['GUI']['Canvas'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.GUICanvas
---@return Barotrauma.GUICanvas
_G['GUI']['Canvas'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.GUICanvas
---@return Barotrauma.GUICanvas
_G['GUI']['Canvas'].__new = function() end

