---@meta
---@class Barotrauma.Items.Components.SignalCheckComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field maxOutputLength System.Int32|integer
---`Field Private Instance`
---@field output System.String|string
---`Field Private Instance`
---@field falseOutput System.String|string
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
---@field TargetSignal System.String|string
_G['Components']['SignalCheckComponent'] = {}

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['SignalCheckComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SignalCheckComponent
_G['Components']['SignalCheckComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SignalCheckComponent
_G['Components']['SignalCheckComponent'].__new = function(item, element) end

