---@meta
---@class Barotrauma.Items.Components.LevelResource : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field lastSentDeattachTimer System.Single|number
---`Field Private Instance`
---@field trigger Barotrauma.PhysicsBody
---`Field Private Instance`
---@field holdable Barotrauma.Items.Components.Holdable
---`Field Private Instance`
---@field deattachTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeattachDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeattachTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RandomOffsetFromWall System.Single|number
---`Getter Public Instance`
---@field Attached System.Boolean|boolean
_G['Components']['LevelResource'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['LevelResource'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['LevelResource'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['LevelResource'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
_G['Components']['LevelResource'].OnItemLoaded = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['LevelResource'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LevelResource
_G['Components']['LevelResource'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LevelResource
_G['Components']['LevelResource'].__new = function(item, element) end

