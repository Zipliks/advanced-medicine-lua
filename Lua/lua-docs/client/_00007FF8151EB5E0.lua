---@meta
---@class Barotrauma.Items.Components.Holdable : Barotrauma.Items.Components.Pickable
---`Field NonPublic Instance`
---@field handlePos Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field scaledHandlePos Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field prevPickKey Barotrauma.InputType
---`Field Private Instance`
---@field prevMsg Barotrauma.LocalizedString
---`Field Private Instance`
---@field prevRequiredItems System.Collections.Generic.Dictionary*1Barotrauma*RelatedItem*RelationType*1System*Collections*Generic*List*2Barotrauma*RelatedItem|{[Barotrauma.RelatedItem.RelationType]:System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]}
---`Field NonPublic Instance`
---@field holdPos Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field aimPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field swingState System.Single|number
---`Field Private Instance`
---@field prevEquipper Barotrauma.Character
---`Field Private Instance`
---@field attachable System.Boolean|boolean
---`Field Private Instance`
---@field attached System.Boolean|boolean
---`Field Private Instance`
---@field attachedByDefault System.Boolean|boolean
---`Field Private Instance`
---@field attachTargetCell Voronoi2.VoronoiCell
---`Field Private Instance`
---@field body Barotrauma.PhysicsBody
---`Field NonPublic Instance`
---@field holdAngle System.Single|number
---`Field Private Instance`
---@field swingAmount Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field loadedFromInstance System.Boolean|boolean
---`Field Private Static`
---@field MaxAttachDistance System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field IsAttached System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Pusher Barotrauma.PhysicsBody
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanPush System.Boolean|boolean
---`Getter Public Instance`
---@field Body Barotrauma.PhysicsBody
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Attached System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Aimable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ControlPose System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseHandRotationForHoldAngle System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Attachable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Reattachable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LimitedAttachable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AttachedByDefault System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoldPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AimPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoldAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SwingAmount Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SwingSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SwingWhenHolding System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SwingWhenAiming System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SwingWhenUsing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisableHeadRotation System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpriteDepthWhenDropped System.Single|number
_G['Components']['Holdable'] = {}

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Holdable'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean|boolean
_G['Components']['Holdable'].ValidateEventData = function(data) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Holdable'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Holdable'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Components']['Holdable'].OnPusherCollision = function(sender, other, contact) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Holdable'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Holdable'].Drop = function(dropper) end

---`Method Private Instance`
---@param dropConnectedWires System.Boolean|boolean
---@param dropper Barotrauma.Character
_G['Components']['Holdable'].Drop = function(dropConnectedWires, dropper) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Holdable'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Holdable'].Unequip = function(character) end

---`Method Public Instance`
---@param user Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Holdable'].CanBeAttached = function(user) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['Holdable'].CanBeDeattached = function() end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Holdable'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Holdable'].OnPicked = function(picker) end

---`Method Public Instance`
_G['Components']['Holdable'].AttachToWall = function() end

---`Method Public Instance`
_G['Components']['Holdable'].DeattachFromWall = function() end

---`Method Public Instance Virtual`
_G['Components']['Holdable'].ParseMsg = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Holdable'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Holdable'].SecondaryUse = function(deltaTime, character) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param useWorldCoordinates? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Holdable'].GetAttachPosition = function(user, useWorldCoordinates) end

---`Method Private Instance`
---@param maxDist System.Single|number
---@return Voronoi2.VoronoiCell
_G['Components']['Holdable'].GetAttachTargetCell = function(maxDist) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Holdable'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance`
---@return Barotrauma.Items.Components.Rope
_G['Components']['Holdable'].GetRope = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Holdable'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Holdable'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Holdable'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
_G['Components']['Holdable'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['Holdable'].OnMapLoaded = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Holdable'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Holdable'].Save = function(parentElement) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Holdable
_G['Components']['Holdable'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Holdable
_G['Components']['Holdable'].__new = function(item, element) end

