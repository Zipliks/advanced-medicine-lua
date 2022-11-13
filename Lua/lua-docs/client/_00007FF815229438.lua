---@meta
---@class Barotrauma.Items.Components.StatusHUD : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field visibleCharacters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field updateTimer System.Single|number
---`Field Private Instance`
---@field equipper Barotrauma.Character
---`Field Private Instance`
---@field isEquippable System.Boolean|boolean
---`Field Private Instance`
---@field thermalEffectState System.Single|number
---`Field Private Static`
---@field BleedingTexts Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[]
---`Field Private Static`
---@field OxygenTexts Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[]
---`Field Private Static`
---@field UpdateInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FadeOutRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ThermalGoggles System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ShowDeadCharacters System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ShowTexts System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OverlayColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field VisibleCharacters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['Components']['StatusHUD'] = {}

---`Method Public Instance Virtual`
_G['Components']['StatusHUD'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['StatusHUD'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['StatusHUD'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['StatusHUD'].Unequip = function(character) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param character Barotrauma.Character
_G['Components']['StatusHUD'].DrawHUD = function(spriteBatch, character) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param target Barotrauma.Character
---@param alpha? System.Single|number
_G['Components']['StatusHUD'].DrawCharacterInfo = function(spriteBatch, target, alpha) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.StatusHUD
---@return Barotrauma.Items.Components.StatusHUD
_G['Components']['StatusHUD'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.StatusHUD
---@return Barotrauma.Items.Components.StatusHUD
_G['Components']['StatusHUD'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.StatusHUD
---@return Barotrauma.Items.Components.StatusHUD
_G['Components']['StatusHUD'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.StatusHUD
---@return Barotrauma.Items.Components.StatusHUD
_G['Components']['StatusHUD'].__new = function() end

