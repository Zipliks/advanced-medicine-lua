---@meta
---@class Barotrauma.Items.Components.ElectricalDischarger : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field frameOffset System.Int32|integer
---`Field Private Instance`
---@field waitForVoltageRecalculation System.Boolean|boolean
---`Field Private Instance`
---@field nodes System.Collections.Generic.List*1Barotrauma*Items*Components*ElectricalDischarger*Node|Barotrauma.Items.Components.ElectricalDischarger.Node[]
---`Field Private Instance`
---@field charactersInRange System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Character*2Barotrauma*Items*Components*ElectricalDischarger*Node|System.ValueTuple*1Barotrauma*Character*1Barotrauma*Items*Components*ElectricalDischarger*Node[]
---`Field Private Instance`
---@field charging System.Boolean|boolean
---`Field Private Instance`
---@field timer System.Single|number
---`Field Private Instance`
---@field attack Barotrauma.Attack
---`Field Private Static`
---@field electricitySprite Barotrauma.SpriteSheet
---`Field Private Static`
---@field list System.Collections.Generic.List*1Barotrauma*Items*Components*ElectricalDischarger|Barotrauma.Items.Components.ElectricalDischarger[]
---`Field Private Static`
---@field MaxNodes System.Int32|integer
---`Field Private Static`
---@field MaxNodeDistance System.Single|number
---`Getter Public Static`
---@field List System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*ElectricalDischarger|(fun():Barotrauma.Items.Components.ElectricalDischarger)
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RangeMultiplierInWalls System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Duration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OutdoorsOnly System.Boolean|boolean
---`Getter Public Instance`
---@field Nodes System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*ElectricalDischarger*Node|(fun():Barotrauma.Items.Components.ElectricalDischarger.Node)
_G['Components']['ElectricalDischarger'] = {}

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Components']['ElectricalDischarger'].DrawElectricity = function(spriteBatch) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['ElectricalDischarger'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
_G['Components']['ElectricalDischarger'].InitProjSpecific = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ElectricalDischarger'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ElectricalDischarger'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['ElectricalDischarger'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ElectricalDischarger'].UpdateBroken = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['ElectricalDischarger'].Discharge = function() end

---`Method Private Instance`
_G['Components']['ElectricalDischarger'].DischargeProjSpecific = function() end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param range System.Single|number
_G['Components']['ElectricalDischarger'].FindNodes = function(worldPosition, range) end

---`Method Private Instance`
---@param entitiesInRange System.Collections.Generic.List*1Barotrauma*Entity|Barotrauma.Entity[]
---@param currPos Microsoft.Xna.Framework.Vector2
---@param parentNodeIndex System.Int32|integer
---@param currentRange System.Single|number
_G['Components']['ElectricalDischarger'].FindNodes = function(entitiesInRange, currPos, parentNodeIndex, currentRange) end

---`Method Private Instance`
---@param currPos Microsoft.Xna.Framework.Vector2
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param variance System.Single|number
---@param parentNodeIndex System.Int32-ref
_G['Components']['ElectricalDischarger'].AddNodesBetweenPoints = function(currPos, targetPos, variance, parentNodeIndex) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ElectricalDischarger'].ReceiveSignal = function(signal, connection) end

---`Method NonPublic Instance Virtual`
_G['Components']['ElectricalDischarger'].RemoveComponentSpecific = function() end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['ElectricalDischarger'].ServerEventWrite = function(msg, c, extraData) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ElectricalDischarger
---@return Barotrauma.Items.Components.ElectricalDischarger
_G['Components']['ElectricalDischarger'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ElectricalDischarger
---@return Barotrauma.Items.Components.ElectricalDischarger
_G['Components']['ElectricalDischarger'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ElectricalDischarger
---@return Barotrauma.Items.Components.ElectricalDischarger
_G['Components']['ElectricalDischarger'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ElectricalDischarger
---@return Barotrauma.Items.Components.ElectricalDischarger
_G['Components']['ElectricalDischarger'].__new = function() end

