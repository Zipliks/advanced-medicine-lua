---@meta
---@class Barotrauma.Items.Components.TrigonometricFunctionComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field receivedSignal System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field timeSinceReceived System.Single-arr|System.Single|number[]
---`Field NonPublic Instance`
---@field signalSender Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Function Barotrauma.Items.Components.TrigonometricFunctionComponent.FunctionType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseRadians System.Boolean|boolean
_G['Components']['TrigonometricFunctionComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['TrigonometricFunctionComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['TrigonometricFunctionComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TrigonometricFunctionComponent
_G['Components']['TrigonometricFunctionComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TrigonometricFunctionComponent
_G['Components']['TrigonometricFunctionComponent'].__new = function(item, element) end

