---@meta
---@class Barotrauma.GUISpriteSheet : Barotrauma.GUISelector*1Barotrauma*GUISpriteSheetPrefab
---`Getter Public Instance`
---@field Value Barotrauma.SpriteSheet
---`Getter Public Instance`
---@field FrameCount System.Int32|integer
---`Getter Public Instance`
---@field FrameSize Microsoft.Xna.Framework.Point
_G['GUISpriteSheet'] = {}

---`Method Public Instance`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.ISpriteBatch, pos:Microsoft.Xna.Framework.Vector2, rotate?:System.Single|number, scale?:System.Single|number, spriteEffects?:Microsoft.Xna.Framework.Graphics.SpriteEffects)
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.ISpriteBatch, pos:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, origin:Microsoft.Xna.Framework.Vector2, rotate?:System.Single|number, scale?:System.Single|number, spriteEffects?:Microsoft.Xna.Framework.Graphics.SpriteEffects, depth?:System.Nullable*1System*Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param spriteIndex System.Int32|integer
---@param pos Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate System.Single|number
---@param scale Microsoft.Xna.Framework.Vector2
---@param spriteEffects? Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param depth? System.Nullable*1System*Single|number
_G['GUISpriteSheet'].Draw = function(spriteBatch, spriteIndex, pos, color, origin, rotate, scale, spriteEffects, depth) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUISpriteSheet
_G['GUISpriteSheet'] = function(identifier) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUISpriteSheet
_G['GUISpriteSheet'].__new = function(identifier) end

