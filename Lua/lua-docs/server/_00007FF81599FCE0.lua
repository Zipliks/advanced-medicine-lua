---@meta
---@class Barotrauma.Items.Components.CustomInterface : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field labels System.String-arr|System.String|string[]
---`Field Private Instance`
---@field signals System.String-arr|System.String|string[]
---`Field Private Instance`
---@field elementStates System.Boolean-arr|System.Boolean|boolean[]
---`Field Private Instance`
---@field customInterfaceElementList System.Collections.Generic.List*1Barotrauma*Items*Components*CustomInterface*CustomInterfaceElement|Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Labels System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Signals System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ElementStates System.String|string
_G['Components']['CustomInterface'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['CustomInterface'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['CustomInterface'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
---@param newLabels System.String-arr|System.String|string[]
_G['Components']['CustomInterface'].UpdateLabels = function(newLabels) end

---`Method Private Instance`
---@param newSignals System.String-arr|System.String|string[]
_G['Components']['CustomInterface'].UpdateSignals = function(newSignals) end

---`Method Public Instance Virtual`
_G['Components']['CustomInterface'].OnItemLoaded = function() end

---`Method Private Instance`
---@param btnElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
_G['Components']['CustomInterface'].ButtonClicked = function(btnElement) end

---`Method Private Instance`
---@param tickBoxElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param state System.Boolean|boolean
_G['Components']['CustomInterface'].TickBoxToggled = function(tickBoxElement, state) end

---`Method Private Instance`
---@param textElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param text System.String|string
_G['Components']['CustomInterface'].TextChanged = function(textElement, text) end

---`Method Private Instance`
---@overload fun(numberInputElement:Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement, value:System.Int32|integer)
---@param numberInputElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param value System.Single|number
_G['Components']['CustomInterface'].ValueChanged = function(numberInputElement, value) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['CustomInterface'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['CustomInterface'].Save = function(parentElement) end

---`Method Private Static`
---@param s System.String|string
---@param f System.Single-ref
---@return System.Boolean|boolean
_G['Components']['CustomInterface'].TryParseFloatInvariantCulture = function(s, f) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.CustomInterface
_G['Components']['CustomInterface'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.CustomInterface
_G['Components']['CustomInterface'].__new = function(item, element) end

