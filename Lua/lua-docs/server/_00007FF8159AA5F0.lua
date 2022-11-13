---@meta
---@class Barotrauma.Items.Components.ItemLabel : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field sendStateCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field lastSentText System.String|string
---`Field Private Instance`
---@field sendStateTimer System.Single|number
---`Field Private Instance`
---@field prevColorSignal System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---@field DrawSize Microsoft.Xna.Framework.Vector2
_G['Components']['ItemLabel'] = {}

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['ItemLabel'].Move = function(amount, ignoreContacts) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Components']['ItemLabel'].SendStateAfterDelay = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ItemLabel'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
_G['Components']['ItemLabel'].OnStateChanged = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ItemLabel'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'].__new = function(item, element) end

