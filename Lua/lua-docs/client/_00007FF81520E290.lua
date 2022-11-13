---@meta
---@class Barotrauma.Items.Components.Terminal : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field historyBox Barotrauma.GUIListBox
---`Field Private Instance`
---@field fillerBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field inputBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field shouldSelectInputBox System.Boolean|boolean
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

---`Method Public Instance`
_G['Components']['Terminal'].CreateFillerBlock = function() end

---`Method Private Instance`
---@param input System.String|string
_G['Components']['Terminal'].SendOutput = function(input) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Terminal'].Select = function(character) end

---`Method Public Instance Virtual`
---@param order? System.Int32|integer
_G['Components']['Terminal'].AddToGUIUpdateList = function(order) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Terminal'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Terminal'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['Components']['Terminal'].InitProjSpecific = function(element) end

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

