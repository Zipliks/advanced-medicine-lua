---@meta
---@class Barotrauma.Items.Components.Connection : System.Object
---`Field Public Instance`
---@field MaxPlayerConnectableWires System.Int32|integer
---`Field Public Instance`
---@field MaxWires System.Int32|integer
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field DisplayName Barotrauma.LocalizedString
---`Field Private Instance`
---@field wires System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Wire|Barotrauma.Items.Components.Wire[]
---`Field Private Instance`
---@field enumeratingWires System.Boolean|boolean
---`Field Private Instance`
---@field removedWires System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Wire|Barotrauma.Items.Components.Wire[]
---`Field Private Instance`
---@field item Barotrauma.Item
---`Field Public Instance`
---@field IsOutput System.Boolean|boolean
---`Field Public Instance`
---@field Effects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Public Instance`
---@field LoadedWireIds System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field Public Instance`
---@field Grid Barotrauma.Items.Components.GridInfo
---`Field Public Instance`
---@field Priority Barotrauma.Items.Components.PowerPriority
---`Field Private Instance`
---@field recipientsDirty System.Boolean|boolean
---`Field Private Instance`
---@field recipients System.Collections.Generic.List*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Field Private Static`
---@field DefaultMaxWires System.Int32|integer
---`Getter Public Instance`
---@field Wires System.Collections.Generic.IReadOnlyCollection*1Barotrauma*Items*Components*Wire|(fun():Barotrauma.Items.Components.Wire)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsPower System.Boolean|boolean
---`Getter Public Instance`
---@field Recipients System.Collections.Generic.List*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Getter Public Instance`
---@field Item Barotrauma.Item
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ConnectionPanel Barotrauma.Items.Components.ConnectionPanel
_G['Components']['Connection'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['Components']['Connection'].ToString = function() end

---`Method Public Instance`
_G['Components']['Connection'].SetRecipientsDirty = function() end

---`Method Private Instance`
_G['Components']['Connection'].RefreshRecipients = function() end

---`Method Public Instance`
---@param it Barotrauma.Item
---@return Barotrauma.Items.Components.Wire
_G['Components']['Connection'].FindWireByItem = function(it) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['Connection'].WireSlotsAvailable = function() end

---`Method Public Instance`
---@param wire Barotrauma.Items.Components.Wire
---@return System.Boolean|boolean
_G['Components']['Connection'].TryAddLink = function(wire) end

---`Method Public Instance`
---@param wire Barotrauma.Items.Components.Wire
_G['Components']['Connection'].DisconnectWire = function(wire) end

---`Method Public Instance`
---@param wire Barotrauma.Items.Components.Wire
_G['Components']['Connection'].ConnectWire = function(wire) end

---`Method Public Instance`
---@param signal Barotrauma.Items.Components.Signal
_G['Components']['Connection'].SendSignal = function(signal) end

---`Method Public Instance`
_G['Components']['Connection'].ClearConnections = function() end

---`Method Public Instance`
_G['Components']['Connection'].InitializeFromLoaded = function() end

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
_G['Components']['Connection'].Save = function(parentElement) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param connectionPanel Barotrauma.Items.Components.ConnectionPanel
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.Items.Components.Connection
_G['Components']['Connection'] = function(element, connectionPanel, idRemap) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param connectionPanel Barotrauma.Items.Components.ConnectionPanel
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.Items.Components.Connection
_G['Components']['Connection'].__new = function(element, connectionPanel, idRemap) end

