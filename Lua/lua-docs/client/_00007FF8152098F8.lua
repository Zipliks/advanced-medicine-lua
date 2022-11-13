---@meta
---@class Barotrauma.Items.Components.ConnectionPanel : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field rewireSoundChannel Barotrauma.Sounds.SoundChannel
---`Field Private Instance`
---@field rewireSoundTimer System.Single|number
---`Field Private Instance`
---@field originalMaxSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field originalRelativeSize Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field dragArea Barotrauma.GUIComponent
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
---`Field Public Static`
---@field HighlightedWire Barotrauma.Items.Components.Wire
---`Field Private Static`
---@field RewireSoundDuration System.Single|number
---`Getter Public Instance`
---@field Scale System.Single|number
---`Getter Public Instance Virtual`
---@field RecreateGUIOnResolutionChange System.Boolean|boolean
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

---`Method Public Instance`
_G['Components']['ConnectionPanel'].TriggerRewiringSound = function() end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['ConnectionPanel'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ConnectionPanel'].ShouldDrawHUD = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ConnectionPanel'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['ConnectionPanel'].DrawConnections = function(spriteBatch, container) end

---`Method NonPublic Instance Virtual`
_G['Components']['ConnectionPanel'].OnResolutionChanged = function() end

---`Method Private Instance`
_G['Components']['ConnectionPanel'].CheckForLabelOverlap = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['ConnectionPanel'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IReadMessage
_G['Components']['ConnectionPanel'].ApplyRemoteState = function(msg) end

---`Method Private Instance`
_G['Components']['ConnectionPanel'].InitProjSpecific = function() end

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

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['ConnectionPanel'].UpdateProjSpecific = function(deltaTime) end

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

---`Method Public Instance Virtual`
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

