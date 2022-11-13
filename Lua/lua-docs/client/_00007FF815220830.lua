---@meta
---@class Barotrauma.Items.Components.DockingPort : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field autodockingVerification Barotrauma.GUIMessageBox
---`Field Private Instance`
---@field overlaySprite Barotrauma.Sprite
---`Field Private Instance`
---@field dockingState System.Single|number
---`Field Private Instance`
---@field joint FarseerPhysics.Dynamics.Joints.Joint
---`Field Private Instance`
---@field hulls Barotrauma.Hull-arr|Barotrauma.Hull[]
---`Field Private Instance`
---@field gap Barotrauma.Gap
---`Field Private Instance`
---@field bodies FarseerPhysics.Dynamics.Body-arr|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field outsideBlocker FarseerPhysics.Dynamics.Fixture
---`Field Private Instance`
---@field doorBody FarseerPhysics.Dynamics.Body
---`Field Private Instance`
---@field dockingCooldown System.Single|number
---`Field Private Instance`
---@field docked System.Boolean|boolean
---`Field Private Instance`
---@field obstructedWayPointsDisabled System.Boolean|boolean
---`Field Private Instance`
---@field forceLockTimer System.Single|number
---`Field Private Instance`
---@field OnDocked System.Action|(fun())
---`Field Private Instance`
---@field OnUnDocked System.Action|(fun())
---`Field Private Instance`
---@field outpostAutoDockingPromptShown System.Boolean|boolean
---`Field Private Instance`
---@field allowOutpostAutoDocking Barotrauma.Items.Components.DockingPort.AllowOutpostAutoDocking
---`Field Private Instance`
---@field initialized System.Boolean|boolean
---`Field Private Static`
---@field list System.Collections.Generic.List*1Barotrauma*Items*Components*DockingPort|Barotrauma.Items.Components.DockingPort[]
---`Field Private Static`
---@field ForceLockDelay System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field List System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*DockingPort|(fun():Barotrauma.Items.Components.DockingPort)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DockingDir System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DistanceTolerance Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DockedDistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MainDockingPort System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ApplyEffectsOnDocking System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceDockingDirection Barotrauma.Items.Components.DockingPort.DirectionType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DockingTarget Barotrauma.Items.Components.DockingPort
---`Getter Public Instance`
---@field AtStartExit System.Boolean|boolean
---`Getter Public Instance`
---@field AtEndExit System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Door Barotrauma.Items.Components.Door
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Docked System.Boolean|boolean
---`Getter Public Instance`
---@field IsLocked System.Boolean|boolean
---`Getter Public Instance`
---@field AnotherPortInProximity System.Boolean|boolean
_G['Components']['DockingPort'] = {}

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['DockingPort'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['DockingPort'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['DockingPort'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['DockingPort'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['DockingPort'].FlipY = function(relativeToSub) end

---`Method Private Instance`
---@return Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'].FindAdjacentPort = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].AttemptDock = function() end

---`Method Public Instance`
---@param target Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'].Dock = function(target) end

---`Method Public Instance`
---@param isNetworkMessage System.Boolean|boolean
---@param applyEffects? System.Boolean|boolean
_G['Components']['DockingPort'].Lock = function(isNetworkMessage, applyEffects) end

---`Method Private Instance`
---@param useWeldJoint System.Boolean|boolean
_G['Components']['DockingPort'].CreateJoint = function(useWeldJoint) end

---`Method Public Instance`
---@param dockingTarget? Barotrauma.Items.Components.DockingPort
---@return System.Int32|integer
_G['Components']['DockingPort'].GetDir = function(dockingTarget) end

---`Method Private Instance`
---@return System.Int32|integer
_G['Components']['DockingPort'].GetForcedDockingDir = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].ConnectWireBetweenPorts = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].CreateDoorBody = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].CreateHulls = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].LinkHullsToGaps = function() end

---`Method Public Instance`
---@param applyEffects? System.Boolean|boolean
_G['Components']['DockingPort'].Undock = function(applyEffects) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['DockingPort'].Update = function(deltaTime, cam) end

---`Method NonPublic Instance Virtual`
_G['Components']['DockingPort'].RemoveComponentSpecific = function() end

---`Method Private Instance`
_G['Components']['DockingPort'].InitializeLinks = function() end

---`Method Public Instance Virtual`
_G['Components']['DockingPort'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['DockingPort'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.DockingPort
---@return Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.DockingPort
---@return Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.DockingPort
---@return Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.DockingPort
---@return Barotrauma.Items.Components.DockingPort
_G['Components']['DockingPort'].__new = function() end

