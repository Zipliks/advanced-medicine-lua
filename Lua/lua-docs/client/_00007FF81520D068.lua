---@meta
---@class Barotrauma.Items.Components.RegExFindComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field expression System.String|string
---`Field Private Instance`
---@field receivedSignal System.String|string
---`Field Private Instance`
---@field previousReceivedSignal System.String|string
---`Field Private Instance`
---@field previousResult System.Boolean|boolean
---`Field Private Instance`
---@field previousGroups System.Text.RegularExpressions.GroupCollection
---`Field Private Instance`
---@field regex System.Text.RegularExpressions.Regex
---`Field Private Instance`
---@field nonContinuousOutputSent System.Boolean|boolean
---`Field Private Instance`
---@field maxOutputLength System.Int32|integer
---`Field Private Instance`
---@field output System.String|string
---`Field Private Static`
---@field timeout System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOutputLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Output System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseCaptureGroup System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FalseOutput System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ContinuousOutput System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Expression System.String|string
_G['Components']['RegExFindComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['RegExFindComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['RegExFindComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RegExFindComponent
---@return Barotrauma.Items.Components.RegExFindComponent
_G['Components']['RegExFindComponent'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RegExFindComponent
---@return Barotrauma.Items.Components.RegExFindComponent
_G['Components']['RegExFindComponent'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RegExFindComponent
---@return Barotrauma.Items.Components.RegExFindComponent
_G['Components']['RegExFindComponent'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RegExFindComponent
---@return Barotrauma.Items.Components.RegExFindComponent
_G['Components']['RegExFindComponent'].__new = function() end

