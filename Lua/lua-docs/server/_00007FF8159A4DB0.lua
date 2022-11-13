---@meta
---@class Barotrauma.Items.Components.WifiComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field range System.Single|number
---`Field Private Instance`
---@field channel System.Int32|integer
---`Field Private Instance`
---@field chatMsgCooldown System.Single|number
---`Field Private Instance`
---@field prevSignal System.String|string
---`Field Private Instance`
---@field channelMemory System.Int32-arr|System.Int32|integer[]
---`Field Private Instance`
---@field signalInConnection Barotrauma.Items.Components.Connection
---`Field Private Instance`
---@field signalOutConnection Barotrauma.Items.Components.Connection
---`Field Private Instance`
---@field linkToChat System.Boolean|boolean
---`Field Private Static`
---@field list System.Collections.Generic.List*1Barotrauma*Items*Components*WifiComponent|Barotrauma.Items.Components.WifiComponent[]
---`Field Private Static`
---@field ChannelMemorySize System.Int32|integer
---`Field Private Static`
---@field MinChannel System.Int32|integer
---`Field Private Static`
---@field MaxChannel System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Channel System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowCrossTeamCommunication System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LinkToChat System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinChatMessageInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DiscardDuplicateChatMessages System.Boolean|boolean
_G['Components']['WifiComponent'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['WifiComponent'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
_G['Components']['WifiComponent'].OnItemLoaded = function() end

---`Method Public Instance`
---@overload fun():System.Boolean|boolean
---@param sender Barotrauma.Items.Components.WifiComponent
---@return System.Boolean|boolean
_G['Components']['WifiComponent'].CanTransmit = function(sender) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*WifiComponent|(fun():Barotrauma.Items.Components.WifiComponent)
_G['Components']['WifiComponent'].GetReceiversInRange = function() end

---`Method Public Instance`
---@param sender Barotrauma.Items.Components.WifiComponent
---@return System.Boolean|boolean
_G['Components']['WifiComponent'].CanReceive = function(sender) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*WifiComponent|(fun():Barotrauma.Items.Components.WifiComponent)
_G['Components']['WifiComponent'].GetTransmittersInRange = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['WifiComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance`
---@param index System.Int32|integer
---@return System.Int32|integer
_G['Components']['WifiComponent'].GetChannelMemory = function(index) end

---`Method Public Instance`
---@param index System.Int32|integer
---@param value System.Int32|integer
_G['Components']['WifiComponent'].SetChannelMemory = function(index, value) end

---`Method Public Instance`
---@param signal Barotrauma.Items.Components.Signal
---@param sentFromChat System.Boolean|boolean
_G['Components']['WifiComponent'].TransmitSignal = function(signal, sentFromChat) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['WifiComponent'].ReceiveSignal = function(signal, connection) end

---`Method NonPublic Instance Virtual`
_G['Components']['WifiComponent'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['WifiComponent'].Save = function(parentElement) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.WifiComponent
---@return Barotrauma.Items.Components.WifiComponent
_G['Components']['WifiComponent'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.WifiComponent
---@return Barotrauma.Items.Components.WifiComponent
_G['Components']['WifiComponent'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.WifiComponent
---@return Barotrauma.Items.Components.WifiComponent
_G['Components']['WifiComponent'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.WifiComponent
---@return Barotrauma.Items.Components.WifiComponent
_G['Components']['WifiComponent'].__new = function() end

