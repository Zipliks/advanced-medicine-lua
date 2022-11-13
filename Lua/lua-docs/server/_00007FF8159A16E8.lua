---@meta
---@class Barotrauma.Items.Components.MemoryComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field sendStateCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field lastSentValue System.String|string
---`Field Private Instance`
---@field sendStateTimer System.Single|number
---`Field Private Instance`
---@field maxValueLength System.Int32|integer
---`Field Private Instance`
---@field value System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxValueLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Value System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Writeable System.Boolean|boolean
_G['Components']['MemoryComponent'] = {}

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Components']['MemoryComponent'].SendStateAfterDelay = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['MemoryComponent'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['MemoryComponent'].Update = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['MemoryComponent'].OnStateChanged = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['MemoryComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MemoryComponent
_G['Components']['MemoryComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MemoryComponent
_G['Components']['MemoryComponent'].__new = function(item, element) end

