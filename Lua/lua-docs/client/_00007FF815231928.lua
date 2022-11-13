---@meta
---@class Barotrauma.TransformCommand : Barotrauma.Command
---`Field Private Instance`
---@field Receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Instance`
---@field NewData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---`Field Private Instance`
---@field OldData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---`Field Private Instance`
---@field Resized System.Boolean|boolean
_G['TransformCommand'] = {}

---`Method Public Instance Virtual`
_G['TransformCommand'].Execute = function() end

---`Method Public Instance Virtual`
_G['TransformCommand'].UnExecute = function() end

---`Method Public Instance Virtual`
_G['TransformCommand'].Cleanup = function() end

---`Method Private Instance`
---@param rects System.Collections.Generic.IReadOnlyList*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
_G['TransformCommand'].SetRects = function(rects) end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['TransformCommand'].GetDescription = function() end

---`Constructor Public Instance`
---@param receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@param newData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param oldData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param resized System.Boolean|boolean
---@return Barotrauma.TransformCommand
_G['TransformCommand'] = function(receivers, newData, oldData, resized) end

---`Constructor Public Instance`
---@param receivers System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@param newData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param oldData System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param resized System.Boolean|boolean
---@return Barotrauma.TransformCommand
_G['TransformCommand'].__new = function(receivers, newData, oldData, resized) end

