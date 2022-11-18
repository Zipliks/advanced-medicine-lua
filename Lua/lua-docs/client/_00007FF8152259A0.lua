---@meta
---@class Barotrauma.Items.Components.Ladder : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field backgroundSprite Barotrauma.Sprite
---`Getter Public Instance`
---@field BackgroundSpriteDepth System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field List System.Collections.Generic.List*1Barotrauma*Items*Components*Ladder|Barotrauma.Items.Components.Ladder[]
_G['Components']['Ladder'] = {}

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Ladder'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Ladder'].InitProjSpecific = function(element) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Ladder'].Select = function(character) end

---`Method NonPublic Instance Virtual`
_G['Components']['Ladder'].RemoveComponentSpecific = function() end

---`Method Private Instance`
_G['Components']['Ladder'].RemoveProjSpecific = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'].__new = function() end

