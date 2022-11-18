---@meta
---@class Barotrauma.Items.Components.FunctionComponent : Barotrauma.Items.Components.ItemComponent
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Function Barotrauma.Items.Components.FunctionComponent.FunctionType
_G['Components']['FunctionComponent'] = {}

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['FunctionComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.FunctionComponent
_G['Components']['FunctionComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.FunctionComponent
_G['Components']['FunctionComponent'].__new = function(item, element) end

