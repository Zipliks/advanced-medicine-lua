---@meta
---@class Barotrauma.Items.Components.ButtonTerminal : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field terminalButtonStyles System.String-arr|System.String|string[]
---`Field Private Instance`
---@field containerHolder Barotrauma.GUIFrame
---`Field Private Instance`
---@field containerIndicator Barotrauma.GUIImage
---`Field Private Instance`
---@field indicatorStyleRed Barotrauma.GUIComponentStyle
---`Field Private Instance`
---@field indicatorStyleGreen Barotrauma.GUIComponentStyle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Signals System.String-arr|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ActivatingItems System.String|string
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field RequiredSignalCount System.Int32|integer
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Container Barotrauma.Items.Components.ItemContainer
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ActivatingItemPrefabs System.Collections.Generic.HashSet*1Barotrauma*ItemPrefab|Barotrauma.ItemPrefab[]
---`Getter Private Instance`
---@field AllowUsingButtons System.Boolean|boolean
_G['Components']['ButtonTerminal'] = {}

---`Method NonPublic Instance Virtual`
_G['Components']['ButtonTerminal'].CreateGUI = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ButtonTerminal'].OnResolutionChanged = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ButtonTerminal'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['ButtonTerminal'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['ButtonTerminal'].InitProjSpecific = function(element) end

---`Method Public Instance Virtual`
_G['Components']['ButtonTerminal'].OnItemLoaded = function() end

---`Method Private Instance`
_G['Components']['ButtonTerminal'].OnItemLoadedProjSpecific = function() end

---`Method Private Instance`
---@param signalIndex System.Int32|integer
---@param sender Barotrauma.Character
---@param isServerMessage? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['ButtonTerminal'].SendSignal = function(signalIndex, sender, isServerMessage) end

---`Method Public Instance Virtual`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean|boolean
_G['Components']['ButtonTerminal'].ValidateEventData = function(data) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ButtonTerminal'].Write = function(msg, extraData) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ButtonTerminal
_G['Components']['ButtonTerminal'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ButtonTerminal
_G['Components']['ButtonTerminal'].__new = function(item, element) end

