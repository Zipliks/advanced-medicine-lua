---@meta
---@class Barotrauma.Items.Components.PowerTransfer : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field powerIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field highVoltageIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field lowVoltageIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field signalConnections System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Field Private Instance`
---@field connectionDirty System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*Connection*1System*Boolean|{[Barotrauma.Items.Components.Connection]:System.Boolean|boolean}
---`Field Private Instance`
---@field connectedRecipients System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*Connection*1System*Collections*Generic*HashSet*2Barotrauma*Items*Components*Connection|{[Barotrauma.Items.Components.Connection]:System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]}
---`Field Private Instance`
---@field overloadCooldownTimer System.Single|number
---`Field NonPublic Instance`
---@field powerLoad System.Single|number
---`Field NonPublic Instance`
---@field isBroken System.Boolean|boolean
---`Field Private Instance`
---@field extraLoad System.Single|number
---`Field Private Instance`
---@field extraLoadSetTime System.Single|number
---`Field Private Instance`
---@field canTransfer System.Boolean|boolean
---`Field Private Instance`
---@field prevSentPowerValue System.Int32|integer
---`Field Private Instance`
---@field powerSignal System.String|string
---`Field Private Instance`
---@field prevSentLoadValue System.Int32|integer
---`Field Private Instance`
---@field loadSignal System.String|string
---`Field Private Static`
---@field recipientsToRefresh System.Collections.Generic.HashSet*1Barotrauma*Items*Components*PowerTransfer|Barotrauma.Items.Components.PowerTransfer[]
---`Field Private Static`
---@field OverloadCooldown System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PowerConnections System.Collections.Generic.List*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerLoad System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanBeOverloaded System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OverloadVoltage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Overload System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExtraLoad System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanTransfer System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
_G['Components']['PowerTransfer'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['PowerTransfer'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['Components']['PowerTransfer'].InitProjectSpecific = function(element) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['PowerTransfer'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['PowerTransfer'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single|number
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single|number
---@return System.Single|number
_G['Components']['PowerTransfer'].GetConnectionPowerOut = function(conn, power, minMaxPower, load) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['PowerTransfer'].Pick = function(picker) end

---`Method NonPublic Instance`
_G['Components']['PowerTransfer'].RefreshConnections = function() end

---`Method Private Instance`
---@param c Barotrauma.Items.Components.Connection
---@param connected System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
_G['Components']['PowerTransfer'].GetConnected = function(c, connected) end

---`Method Public Instance`
_G['Components']['PowerTransfer'].SetAllConnectionsDirty = function() end

---`Method Public Instance`
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['PowerTransfer'].SetConnectionDirty = function(connection) end

---`Method Public Instance Virtual`
_G['Components']['PowerTransfer'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['PowerTransfer'].ReceiveSignal = function(signal, connection) end

---`Method NonPublic Instance Virtual`
_G['Components']['PowerTransfer'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.PowerTransfer
---@return Barotrauma.Items.Components.PowerTransfer
_G['Components']['PowerTransfer'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.PowerTransfer
---@return Barotrauma.Items.Components.PowerTransfer
_G['Components']['PowerTransfer'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.PowerTransfer
---@return Barotrauma.Items.Components.PowerTransfer
_G['Components']['PowerTransfer'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.PowerTransfer
---@return Barotrauma.Items.Components.PowerTransfer
_G['Components']['PowerTransfer'].__new = function() end

