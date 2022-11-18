---@meta
---@class Barotrauma.HUDLayoutSettings : System.Object
---`Field Public Static`
---@field DebugDraw System.Boolean|boolean
---`Field Private Static`
---@field inventoryTopY System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field InventoryTopY System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ButtonAreaTop Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field TutorialObjectiveListArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field MessageAreaTop Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field CrewArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ChatBoxArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ObjectiveAnchor Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field InventoryAreaLower Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field HealthBarArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field BottomRightInfoArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field AfflictionAreaLeft Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field HealthWindowAreaLeft Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field PortraitArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field VotingArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ItemHUDArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Padding System.Int32|integer
_G['HUDLayoutSettings'] = {}

---`Method Public Static`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param parent Barotrauma.RectTransform
---@return Barotrauma.RectTransform
_G['HUDLayoutSettings'].ToRectTransform = function(rect, parent) end

---`Method Public Static`
_G['HUDLayoutSettings'].CreateAreas = function() end

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['HUDLayoutSettings'].Draw = function(spriteBatch) end

---`Constructor Private Static`
---@return Barotrauma.HUDLayoutSettings
_G['HUDLayoutSettings'] = function() end

---`Constructor Private Static`
---@return Barotrauma.HUDLayoutSettings
_G['HUDLayoutSettings'].__new = function() end

