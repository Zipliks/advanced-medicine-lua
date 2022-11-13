---@meta
---@class Barotrauma.CampaignEndScreen : Barotrauma.Screen
---`Field Private Instance`
---@field video Barotrauma.Media.Video
---`Field Private Instance`
---@field creditsPlayer Barotrauma.CreditsPlayer
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Public Instance`
---@field OnFinished System.Action|(fun())
---`Field Private Instance`
---@field textOverlay Barotrauma.LocalizedString
---`Field Private Instance`
---@field textOverlayTimer System.Single|number
---`Field Private Instance`
---@field textOverlaySize Microsoft.Xna.Framework.Vector2
_G['CampaignEndScreen'] = {}

---`Method Public Instance Virtual`
_G['CampaignEndScreen'].Select = function() end

---`Method Public Instance Virtual`
_G['CampaignEndScreen'].Deselect = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['CampaignEndScreen'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['CampaignEndScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Constructor Public Instance`
---@return Barotrauma.CampaignEndScreen
_G['CampaignEndScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.CampaignEndScreen
_G['CampaignEndScreen'].__new = function() end

