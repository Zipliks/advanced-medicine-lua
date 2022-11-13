---@meta
---@class Barotrauma.Items.Components.Door : Barotrauma.Items.Components.Pickable
---`Field Private Instance`
---@field convexHull Barotrauma.Lights.ConvexHull
---`Field Private Instance`
---@field convexHull2 Barotrauma.Lights.ConvexHull
---`Field Private Instance`
---@field shake System.Single|number
---`Field Private Instance`
---@field shakeTimer System.Single|number
---`Field Private Instance`
---@field shakePos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field lastConvexHullState System.Single|number
---`Field Private Instance`
---@field linkedGap Barotrauma.Gap
---`Field Private Instance`
---@field isOpen System.Boolean|boolean
---`Field Private Instance`
---@field openState System.Single|number
---`Field Private Instance`
---@field doorSprite Barotrauma.Sprite
---`Field Private Instance`
---@field weldedSprite Barotrauma.Sprite
---`Field Private Instance`
---@field brokenSprite Barotrauma.Sprite
---`Field Private Instance`
---@field scaleBrokenSprite System.Boolean|boolean
---`Field Private Instance`
---@field fadeBrokenSprite System.Boolean|boolean
---`Field Private Instance`
---@field autoOrientGap System.Boolean|boolean
---`Field Private Instance`
---@field isJammed System.Boolean|boolean
---`Field Private Instance`
---@field isStuck System.Boolean|boolean
---`Field Private Instance`
---@field resetPredictionTimer System.Single|number
---`Field Private Instance`
---@field toggleCooldownTimer System.Single|number
---`Field Private Instance`
---@field lastUser Barotrauma.Character
---`Field Private Instance`
---@field damageSoundCooldown System.Single|number
---`Field Private Instance`
---@field lastBrokenTime System.Double|number
---`Field Private Instance`
---@field doorRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field isBroken System.Boolean|boolean
---`Field Public Instance`
---@field CanBeWelded System.Boolean|boolean
---`Field Private Instance`
---@field stuck System.Single|number
---`Field Private Instance`
---@field accessDeniedTxt Barotrauma.LocalizedString
---`Field Private Instance`
---@field cannotOpenText Barotrauma.LocalizedString
---`Field Private Instance`
---@field itemPosErrorShown System.Boolean|boolean
---`Field Private Instance`
---@field characterPosErrorShown System.Collections.Generic.HashSet*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Static`
---@field StuckReductionOnOpen System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShadowScale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsJammed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsStuck System.Boolean|boolean
---`Getter Public Instance`
---@field CanBeTraversed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Body Barotrauma.PhysicsBody
---`Getter Private Instance`
---@field RepairThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Stuck System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OpeningSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClosingSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ToggleCoolDown System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PredictedState System.Nullable*1System*Boolean|boolean
---`Getter Public Instance`
---@field LinkedGap Barotrauma.Gap
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Window Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsOpen System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasIntegratedButtons System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OpenState System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Impassable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseBetweenOutpostModules System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BotsShouldKeepOpen System.Boolean|boolean
_G['Components']['Door'] = {}

---`Method Private Instance`
---@param rect Microsoft.Xna.Framework.Rectangle
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['Components']['Door'].GetConvexHullCorners = function(rect) end

---`Method Private Instance`
_G['Components']['Door'].UpdateConvexHulls = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Door'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Door'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
_G['Components']['Door'].GetLinkedGap = function() end

---`Method Public Instance Virtual`
_G['Components']['Door'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['Door'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param addMessage System.Boolean|boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['Components']['Door'].HasRequiredItems = function(character, addMessage, msg) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Door'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Door'].OnPicked = function(picker) end

---`Method Private Instance`
---@param actionType Barotrauma.ActionType
---@param user Barotrauma.Character
_G['Components']['Door'].ToggleState = function(actionType, user) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Door'].Select = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Door'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Door'].UpdateProjSpecific = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Door'].UpdateBroken = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['Door'].EnableBody = function() end

---`Method Private Instance`
_G['Components']['Door'].DisableBody = function() end

---`Method Public Instance`
_G['Components']['Door'].RefreshLinkedGap = function() end

---`Method Public Instance Virtual`
_G['Components']['Door'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['Door'].OnScaleChanged = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Door'].RemoveComponentSpecific = function() end

---`Method Private Instance`
_G['Components']['Door'].PushCharactersAway = function() end

---`Method Private Instance`
---@param c Barotrauma.Character
---@param body Barotrauma.PhysicsBody
---@param dir System.Int32|integer
---@param doorRectSimPos Microsoft.Xna.Framework.Vector2
---@param doorRectSimSize Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Components']['Door'].PushBodyOutOfDoorway = function(c, body, dir, doorRectSimPos, doorRectSimSize) end

---`Method Private Instance`
_G['Components']['Door'].OnFailedToOpen = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Door'].HasAccess = function(character) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Door'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance`
---@param open System.Boolean|boolean
---@param isNetworkMessage System.Boolean|boolean
---@param sendNetworkMessage? System.Boolean|boolean
_G['Components']['Door'].TrySetState = function(open, isNetworkMessage, sendNetworkMessage) end

---`Method Private Instance`
---@param open System.Boolean|boolean
---@param isNetworkMessage System.Boolean|boolean
---@param sendNetworkMessage System.Boolean|boolean
---@param forcedOpen System.Boolean|boolean
_G['Components']['Door'].SetState = function(open, isNetworkMessage, sendNetworkMessage, forcedOpen) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Door
_G['Components']['Door'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Door
_G['Components']['Door'].__new = function(item, element) end

