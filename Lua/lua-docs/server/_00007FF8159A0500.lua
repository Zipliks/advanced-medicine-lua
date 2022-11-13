---@meta
---@class Barotrauma.Items.Components.EqualsComponent : Barotrauma.Items.Components.ItemComponent
---`Field NonPublic Instance`
---@field output System.String|string
---`Field NonPublic Instance`
---@field falseOutput System.String|string
---`Field NonPublic Instance`
---@field timeSinceReceived System.Single-arr|System.Single|number[]
---`Field NonPublic Instance`
---@field receivedSignal System.String-arr|System.String|string[]
---`Field Private Instance`
---@field signalSender Barotrauma.Character-arr|Barotrauma.Character[]
---`Field NonPublic Instance`
---@field timeFrame System.Single|number
---`Field Private Instance`
---@field maxOutputLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOutputLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Output System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FalseOutput System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TimeFrame System.Single|number
_G['Components']['EqualsComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['EqualsComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['EqualsComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EqualsComponent
_G['Components']['EqualsComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EqualsComponent
_G['Components']['EqualsComponent'].__new = function(item, element) end

