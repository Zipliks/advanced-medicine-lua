---@meta
---@class Barotrauma.SpriteRecorder : System.Object
---`Field Private Instance`
---@field recordedBuffers System.Collections.Generic.List*1Barotrauma*SpriteRecorder*RecordedBuffer|Barotrauma.SpriteRecorder.RecordedBuffer[]
---`Field Private Instance`
---@field commandList System.Collections.Generic.List*1Barotrauma*SpriteRecorder*Command|Barotrauma.SpriteRecorder.Command[]
---`Field Private Instance`
---@field currentSortMode Microsoft.Xna.Framework.Graphics.SpriteSortMode
---`Field Private Instance`
---@field indexBuffer Microsoft.Xna.Framework.Graphics.IndexBuffer
---`Field Private Instance`
---@field maxSpriteCount System.Int32|integer
---`Field Public Instance`
---@field ReadyToRender System.Boolean|boolean
---`Field Private Instance`
---@field isDisposed System.Boolean|boolean
---`Field Public Static`
---@field BasicEffect Microsoft.Xna.Framework.Graphics.BasicEffect
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Min Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Max Microsoft.Xna.Framework.Vector2
_G['SpriteRecorder'] = {}

---`Method Public Instance`
---@param sortMode Microsoft.Xna.Framework.Graphics.SpriteSortMode
_G['SpriteRecorder'].Begin = function(sortMode) end

---`Method Public Instance Virtual`
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
---@param pos Microsoft.Xna.Framework.Vector2
---@param srcRect System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@param color Microsoft.Xna.Framework.Color
---@param rotation System.Single|number
---@param origin Microsoft.Xna.Framework.Vector2
---@param scale Microsoft.Xna.Framework.Vector2
---@param effects Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param depth System.Single|number
_G['SpriteRecorder'].Draw = function(texture, pos, srcRect, color, rotation, origin, scale, effects, depth) end

---`Method Public Instance`
_G['SpriteRecorder'].End = function() end

---`Method Public Instance`
---@param cam Barotrauma.Camera
_G['SpriteRecorder'].Render = function(cam) end

---`Method Public Instance Virtual`
_G['SpriteRecorder'].Dispose = function() end

---`Constructor Public Instance`
---@return Barotrauma.SpriteRecorder
_G['SpriteRecorder'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.SpriteRecorder
_G['SpriteRecorder'].__new = function() end

