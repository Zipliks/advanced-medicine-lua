---@meta
---@class Barotrauma.Items.Components.Rope : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field source Barotrauma.ISpatialEntity
---`Field Private Instance`
---@field target Barotrauma.Item
---`Field Private Instance`
---@field launchDir System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field snapTimer System.Single|number
---`Field Private Instance`
---@field raycastTimer System.Single|number
---`Field Private Instance`
---@field snapped System.Boolean|boolean
---`Field Private Static`
---@field RayCastInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SnapAnimDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ProjectilePullForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetPullForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SourcePullForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxLength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SnapOnCollision System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SnapWhenNotAimed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetMinMass System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LerpForces System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Snapped System.Boolean|boolean
_G['Components']['Rope'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Rope'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
---@param source Barotrauma.ISpatialEntity
_G['Components']['Rope'].SetSource = function(source) end

---`Method Private Instance`
_G['Components']['Rope'].ResetSource = function() end

---`Method Public Instance`
_G['Components']['Rope'].Snap = function() end

---`Method Public Instance`
---@param source Barotrauma.ISpatialEntity
---@param target Barotrauma.Item
_G['Components']['Rope'].Attach = function(source, target) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Rope'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Rope'].UpdateBroken = function(deltaTime, cam) end

---`Method Private Instance`
---@param target Barotrauma.ISpatialEntity
---@return Barotrauma.PhysicsBody
_G['Components']['Rope'].GetBodyToPull = function(target) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Rope
_G['Components']['Rope'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Rope
_G['Components']['Rope'].__new = function(item, element) end

