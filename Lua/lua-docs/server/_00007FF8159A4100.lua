---@meta
---@class Barotrauma.Items.Components.Terminal : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field messageHistory System.Collections.Generic.List*1Barotrauma*Items*Components*TerminalMessage|Barotrauma.Items.Components.TerminalMessage[]
---`Field Private Instance`
---@field welcomeMessage System.String|string
---`Field Private Instance`
---@field textColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field prevColorSignal System.String|string
---`Field Private Static`
---@field MaxMessageLength System.Int32|integer
---`Field Private Static`
---@field MaxMessages System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisplayedWelcomeMessage Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WelcomeMessage System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShowMessage System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseMonospaceFont System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field OutputValue System.String|string
_G['Components']['Terminal'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['Terminal'].ServerEventRead = function(msg, c) end

---`Method Public Instance`
_G['Components']['Terminal'].SyncHistory = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Terminal'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
---@param input System.String|string
---@param addToHistory System.Boolean|boolean
---@param color Microsoft.Xna.Framework.Color
_G['Components']['Terminal'].ShowOnDisplay = function(input, addToHistory, color) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Terminal'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
_G['Components']['Terminal'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Terminal'].Save = function(parentElement) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Terminal'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Terminal
_G['Components']['Terminal'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Terminal
_G['Components']['Terminal'].__new = function(item, element) end

