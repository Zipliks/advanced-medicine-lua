---@meta
---@class Barotrauma.Items.Components.Rope : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field sprite Barotrauma.Sprite
---`Field Private Instance`
---@field startSprite Barotrauma.Sprite
---`Field Private Instance`
---@field endSprite Barotrauma.Sprite
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
---@field SpriteWidth System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpriteColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Tile System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Origin Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BreakFromMiddle System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
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

---`Method Private Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Rope'].GetSourcePos = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Rope'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param startPos Microsoft.Xna.Framework.Vector2
---@param endPos Microsoft.Xna.Framework.Vector2
---@param width System.Int32|integer
_G['Components']['Rope'].DrawRope = function(spriteBatch, startPos, endPos, width) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Rope'].ClientEventRead = function(msg, sendingTime) end

---`Method NonPublic Instance Virtual`
_G['Components']['Rope'].RemoveComponentSpecific = function() end

---`Method Private Instance`
---@param source Barotrauma.ISpatialEntity
_G['Components']['Rope'].SetSource = function(source) end

---`Method Private Instance`
_G['Components']['Rope'].ResetSource = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Rope'].InitProjSpecific = function(element) end

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

