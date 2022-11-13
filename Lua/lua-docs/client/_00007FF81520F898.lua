---@meta
---@class Barotrauma.Items.Components.Wire : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field overrideSprite Barotrauma.Sprite
---`Field Private Instance`
---@field wireSprite Barotrauma.Sprite
---`Field Private Instance`
---@field shouldClearConnections System.Boolean|boolean
---`Field Private Instance`
---@field nodes System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field sections System.Collections.Generic.List*1Barotrauma*Items*Components*Wire*WireSection|Barotrauma.Items.Components.Wire.WireSection[]
---`Field Private Instance`
---@field connections Barotrauma.Items.Components.Connection-arr|Barotrauma.Items.Components.Connection[]
---`Field Private Instance`
---@field canPlaceNode System.Boolean|boolean
---`Field Private Instance`
---@field newNodePos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field sectionExtents Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field currLength System.Single|number
---`Field Public Instance`
---@field Hidden System.Boolean|boolean
---`Field Private Instance`
---@field editNodeDelay System.Single|number
---`Field Private Instance`
---@field locked System.Boolean|boolean
---`Field Public Static`
---@field higlightColor Microsoft.Xna.Framework.Color
---`Field Public Static`
---@field editorHighlightColor Microsoft.Xna.Framework.Color
---`Field Public Static`
---@field editorSelectedColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field defaultWireSprite Barotrauma.Sprite
---`Field Private Static`
---@field draggingWire Barotrauma.Items.Components.Wire
---`Field Private Static`
---@field selectedNodeIndex System.Nullable*1System*Int32|integer
---`Field Private Static`
---@field highlightedNodeIndex System.Nullable*1System*Int32|integer
---`Field Private Static`
---@field MaxAttachDistance System.Single|number
---`Field Private Static`
---@field MinNodeDistance System.Single|number
---`Field Private Static`
---@field MaxNodeCount System.Int32|integer
---`Field Private Static`
---@field MaxNodesPerNetworkEvent System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Width System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field DraggingWire Barotrauma.Items.Components.Wire
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Locked System.Boolean|boolean
---`Getter Public Instance`
---@field Connections Barotrauma.Items.Components.Connection-arr|Barotrauma.Items.Components.Connection[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxLength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HiddenInGame System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NoAutoLock System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseSpriteDepth System.Boolean|boolean
_G['Components']['Wire'] = {}

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Wire'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param offset Microsoft.Xna.Framework.Vector2
---@param itemDepth? System.Single|number
_G['Components']['Wire'].Draw = function(spriteBatch, editing, offset, itemDepth) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param start Microsoft.Xna.Framework.Vector2
---@param depth System.Single|number
_G['Components']['Wire'].DrawHangingWire = function(spriteBatch, start, depth) end

---`Method Public Static`
---@param wires System.Collections.Generic.List*1Barotrauma*Items*Components*Wire|Barotrauma.Items.Components.Wire[]
_G['Components']['Wire'].UpdateEditing = function(wires) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['Wire'].Move = function(amount, ignoreContacts) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['Wire'].IsMouseOn = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Wire'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance Virtual`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean|boolean
_G['Components']['Wire'].ValidateEventData = function(data) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Wire'].ClientEventWrite = function(msg, extraData) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Wire'].InitProjSpecific = function(element) end

---`Method Public Instance`
---@param connection Barotrauma.Items.Components.Connection
---@return Barotrauma.Items.Components.Connection
_G['Components']['Wire'].OtherConnection = function(connection) end

---`Method Public Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['Components']['Wire'].IsConnectedTo = function(item) end

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item)
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Wire'].RemoveConnection = function(connection) end

---`Method Public Instance`
---@param newConnection Barotrauma.Items.Components.Connection
---@param addNode? System.Boolean|boolean
---@param sendNetworkEvent? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['Wire'].Connect = function(newConnection, addNode, sendNetworkEvent) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Wire'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Wire'].Unequip = function(character) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Wire'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Wire'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Wire'].GetAttachPosition = function(user) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Wire'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Wire'].SecondaryUse = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Wire'].Pick = function(picker) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
_G['Components']['Wire'].GetNodes = function() end

---`Method Public Instance`
---@param nodes System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
_G['Components']['Wire'].SetNodes = function(nodes) end

---`Method Public Instance`
---@param index System.Int32|integer
---@param amount Microsoft.Xna.Framework.Vector2
_G['Components']['Wire'].MoveNode = function(index, amount) end

---`Method Public Instance`
---@param amount Microsoft.Xna.Framework.Vector2
_G['Components']['Wire'].MoveNodes = function(amount) end

---`Method Public Instance`
_G['Components']['Wire'].UpdateSections = function() end

---`Method Private Instance`
_G['Components']['Wire'].CalculateExtents = function() end

---`Method Public Instance`
---@param user? Barotrauma.Character
_G['Components']['Wire'].ClearConnections = function(user) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Wire'].RoundNode = function(position) end

---`Method Public Instance`
_G['Components']['Wire'].SetConnectedDirty = function() end

---`Method Private Instance`
_G['Components']['Wire'].CleanNodes = function() end

---`Method Public Instance`
_G['Components']['Wire'].FixNodeEnds = function() end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
---@param maxDist System.Single|number
---@param closestDist System.Single-ref
---@return System.Int32|integer
_G['Components']['Wire'].GetClosestNodeIndex = function(pos, maxDist, closestDist) end

---`Method Private Instance`
---@param mousePos Microsoft.Xna.Framework.Vector2
---@param maxDist System.Single|number
---@param closestDist System.Single-ref
---@return System.Int32|integer
_G['Components']['Wire'].GetClosestSectionIndex = function(mousePos, maxDist, closestDist) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Wire'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Wire'].FlipY = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Wire'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Wire'].Save = function(parentElement) end

---`Method NonPublic Instance Virtual`
_G['Components']['Wire'].ShallowRemoveComponentSpecific = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Wire'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Wire
---@return Barotrauma.Items.Components.Wire
_G['Components']['Wire'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Wire
---@return Barotrauma.Items.Components.Wire
_G['Components']['Wire'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Wire
---@return Barotrauma.Items.Components.Wire
_G['Components']['Wire'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Wire
---@return Barotrauma.Items.Components.Wire
_G['Components']['Wire'].__new = function() end

