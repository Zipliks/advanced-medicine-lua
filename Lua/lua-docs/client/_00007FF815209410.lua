---@meta
---@class Barotrauma.Items.Components.Connection : System.Object
---`Field Private Instance`
---@field flashColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field flashDuration System.Single|number
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
---@field connector Barotrauma.Sprite
---`Field Private Static`
---@field wireVertical Barotrauma.Sprite
---`Field Private Static`
---@field connectionSprite Barotrauma.Sprite
---`Field Private Static`
---@field connectionSpriteHighlight Barotrauma.Sprite
---`Field Private Static`
---@field screwSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Static`
---@field DefaultMaxWires System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FlashTimer System.Single|number
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field DraggingConnected Barotrauma.Items.Components.Wire
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

---`Method Public Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param dragArea Microsoft.Xna.Framework.Rectangle
---@param character Barotrauma.Character
_G['Components']['Connection'].DrawConnections = function(spriteBatch, panel, dragArea, character) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param position Microsoft.Xna.Framework.Vector2
---@param labelPos Microsoft.Xna.Framework.Vector2
---@param scale Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].DrawConnection = function(spriteBatch, panel, position, labelPos, scale) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param position Microsoft.Xna.Framework.Vector2
---@param wirePosition Microsoft.Xna.Framework.Vector2
---@param mouseIn System.Boolean|boolean
---@param equippedWire Barotrauma.Items.Components.Wire
---@param wireInterval System.Single|number
_G['Components']['Connection'].DrawWires = function(spriteBatch, panel, position, wirePosition, mouseIn, equippedWire, wireInterval) end

---`Method Public Instance`
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param flashDuration? System.Single|number
_G['Components']['Connection'].Flash = function(color, flashDuration) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Components']['Connection'].UpdateFlashTimer = function(deltaTime) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param wire Barotrauma.Items.Components.Wire
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param start Microsoft.Xna.Framework.Vector2
---@param equippedWire Barotrauma.Items.Components.Wire
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param label Barotrauma.LocalizedString
_G['Components']['Connection'].DrawWire = function(spriteBatch, wire, luaKey__end, start, equippedWire, panel, label) end

---`Method Public Static`
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param newRectSize Microsoft.Xna.Framework.Point-ref
---@return System.Boolean|boolean
_G['Components']['Connection'].CheckConnectionLabelOverlap = function(panel, newRectSize) end

---`Method Private Static`
---@param maxSize Microsoft.Xna.Framework.Point
---@param size Microsoft.Xna.Framework.Point
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].GetScale = function(maxSize, size) end

---`Method Private Static`
---@param connectorPosition Microsoft.Xna.Framework.Vector2
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param connection Barotrauma.Items.Components.Connection
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].GetInputLabelPosition = function(connectorPosition, panel, connection) end

---`Method Private Static`
---@param connectorPosition Microsoft.Xna.Framework.Vector2
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@param connection Barotrauma.Items.Components.Connection
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].GetOutputLabelPosition = function(connectorPosition, panel, connection) end

---`Method Private Static`
---@param labelPos Microsoft.Xna.Framework.Vector2
---@param text System.String|string
---@param scale Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
_G['Components']['Connection'].GetLabelArea = function(labelPos, text, scale) end

---`Method Private Static`
---@param x System.Int32|integer
---@param y System.Int32|integer
---@param scale Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].GetLeftPos = function(x, y, scale) end

---`Method Private Static`
---@param x System.Int32|integer
---@param y System.Int32|integer
---@param width System.Int32|integer
---@param scale Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Connection'].GetRightPos = function(x, y, width, scale) end

---`Method Private Static`
---@param height System.Int32|integer
---@param scale Microsoft.Xna.Framework.Vector2
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@return System.Int32|integer
_G['Components']['Connection'].GetConnectorIntervalLeft = function(height, scale, panel) end

---`Method Private Static`
---@param height System.Int32|integer
---@param scale Microsoft.Xna.Framework.Vector2
---@param panel Barotrauma.Items.Components.ConnectionPanel
---@return System.Int32|integer
_G['Components']['Connection'].GetConnectorIntervalRight = function(height, scale, panel) end

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

