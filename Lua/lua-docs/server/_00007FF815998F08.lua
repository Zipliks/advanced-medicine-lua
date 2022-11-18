---@meta
---@class Barotrauma.Items.Components.Sprayer : Barotrauma.Items.Components.RangedWeapon
---`Field Private Instance`
---@field liquidColors System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Microsoft*Xna*Framework*Color|{[Barotrauma.Identifier]:Microsoft.Xna.Framework.Color}
---`Field Private Instance`
---@field liquidContainer Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SprayStrength System.Single|number
_G['Components']['Sprayer'] = {}

---`Method Public Instance Virtual`
_G['Components']['Sprayer'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Sprayer'].Use = function(deltaTime, character) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Sprayer
_G['Components']['Sprayer'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Sprayer
_G['Components']['Sprayer'].__new = function(item, element) end

