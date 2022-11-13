---@meta
---@class Barotrauma.Items.Components.ConnectionPanel : Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field Connections System.Collections.Generic.List*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Public Instance`
---@field DisconnectedWires System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Wire|Barotrauma.Items.Components.Wire[]
---`Field Private Instance`
---@field disconnectedWireIds System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field Private Instance`
---@field linksInitialized System.Boolean|boolean
---`Getter Public Instance`
---@field AlwaysAllowRewiring System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Locked System.Boolean|boolean
---`Getter Public Instance`
---@field TemporarilyLocked System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---@field User Barotrauma.Character
_G['Components']['ConnectionPanel'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['ConnectionPanel'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ConnectionPanel'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
_G['Components']['ConnectionPanel'].OnMapLoaded = function() end

---`Method Public Instance`
_G['Components']['ConnectionPanel'].InitializeLinks = function() end

---`Method Public Instance Virtual`
_G['Components']['ConnectionPanel'].OnItemLoaded = function() end

---`Method Public Instance`
---@param amount Microsoft.Xna.Framework.Vector2
_G['Components']['ConnectionPanel'].MoveConnectedWires = function(amount) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ConnectionPanel'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ConnectionPanel'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['ConnectionPanel'].CanRewire = function() end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ConnectionPanel'].Select = function(picker) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ConnectionPanel'].Use = function(deltaTime, character) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ConnectionPanel'].CheckCharacterSuccess = function(character) end

---`Method Public Instance Virtual`
---@param element Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['ConnectionPanel'].Load = function(element, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['ConnectionPanel'].Save = function(parentElement) end

---`Method NonPublic Instance Virtual`
_G['Components']['ConnectionPanel'].ShallowRemoveComponentSpecific = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ConnectionPanel'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ConnectionPanel'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ConnectionPanel'].ClientEventWrite = function(msg, extraData) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ConnectionPanel
_G['Components']['ConnectionPanel'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ConnectionPanel
_G['Components']['ConnectionPanel'].__new = function(item, element) end

