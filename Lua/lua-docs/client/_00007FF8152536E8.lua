---@meta
---@class Barotrauma.GUISprite : Barotrauma.GUISelector*1Barotrauma*GUISpritePrefab
---`Getter Public Instance`
---@field Value Barotrauma.UISprite
_G['GUISprite'] = {}

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
---@param color Microsoft.Xna.Framework.Color
---@param spriteEffects? Microsoft.Xna.Framework.Graphics.SpriteEffects
_G['GUISprite'].Draw = function(spriteBatch, rect, color, spriteEffects) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUISprite
_G['GUISprite'] = function(identifier) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUISprite
_G['GUISprite'].__new = function(identifier) end

