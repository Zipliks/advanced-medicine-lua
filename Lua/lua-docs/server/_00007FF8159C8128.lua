---@meta
---@class FarseerPhysics.Dynamics.Fixture : System.Object
---`Field Private Instance`
---@field _isSensor System.Boolean|boolean
---`Field Private Instance`
---@field _friction System.Single|number
---`Field Private Instance`
---@field _restitution System.Single|number
---`Field NonPublic Instance`
---@field _collidesWith FarseerPhysics.Dynamics.Category
---`Field NonPublic Instance`
---@field _collisionCategories FarseerPhysics.Dynamics.Category
---`Field NonPublic Instance`
---@field _collisionGroup System.Int16|integer
---`Field Public Instance`
---@field AfterCollision FarseerPhysics.Dynamics.AfterCollisionEventHandler|(fun(sender:FarseerPhysics.Dynamics.Fixture, other:FarseerPhysics.Dynamics.Fixture, contact:FarseerPhysics.Dynamics.Contacts.Contact, impulse:FarseerPhysics.Dynamics.Contacts.ContactVelocityConstraint))
---`Field Public Instance`
---@field BeforeCollision FarseerPhysics.Dynamics.BeforeCollisionEventHandler|(fun(sender:FarseerPhysics.Dynamics.Fixture, other:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean)
---`Field Public Instance`
---@field OnCollision FarseerPhysics.Dynamics.OnCollisionEventHandler|(fun(sender:FarseerPhysics.Dynamics.Fixture, other:FarseerPhysics.Dynamics.Fixture, contact:FarseerPhysics.Dynamics.Contacts.Contact):System.Boolean|boolean)
---`Field Public Instance`
---@field OnSeparation FarseerPhysics.Dynamics.OnSeparationEventHandler|(fun(sender:FarseerPhysics.Dynamics.Fixture, other:FarseerPhysics.Dynamics.Fixture, contact:FarseerPhysics.Dynamics.Contacts.Contact))
---`Field Public Instance`
---@field UserData System.Object
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Proxies FarseerPhysics.Dynamics.FixtureProxy-arr|FarseerPhysics.Dynamics.FixtureProxy[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ProxyCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CollisionGroup System.Int16|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CollidesWith FarseerPhysics.Dynamics.Category
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CollisionCategories FarseerPhysics.Dynamics.Category
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Shape FarseerPhysics.Collision.Shapes.Shape
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsSensor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Body FarseerPhysics.Dynamics.Body
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Friction System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Restitution System.Single|number
_G['FarseerPhysics']['Dynamics']['Fixture'] = {}

---`Method Private Instance`
_G['FarseerPhysics']['Dynamics']['Fixture'].Refilter = function() end

---`Method NonPublic Instance`
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
_G['FarseerPhysics']['Dynamics']['Fixture'].TouchProxies = function(broadPhase) end

---`Method Public Instance`
---@param point Microsoft.Xna.Framework.Vector2-ref
---@return System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['Fixture'].TestPoint = function(point) end

---`Method Public Instance`
---@param output FarseerPhysics.Collision.RayCastOutput-ref
---@param input FarseerPhysics.Collision.RayCastInput-ref
---@param childIndex System.Int32|integer
---@return System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['Fixture'].RayCast = function(output, input, childIndex) end

---`Method Public Instance`
---@param aabb FarseerPhysics.Collision.AABB-ref
---@param childIndex System.Int32|integer
_G['FarseerPhysics']['Dynamics']['Fixture'].GetAABB = function(aabb, childIndex) end

---`Method NonPublic Instance`
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@param xf FarseerPhysics.Common.Transform-ref
_G['FarseerPhysics']['Dynamics']['Fixture'].CreateProxies = function(broadPhase, xf) end

---`Method NonPublic Instance`
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
_G['FarseerPhysics']['Dynamics']['Fixture'].DestroyProxies = function(broadPhase) end

---`Method NonPublic Instance`
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@param transform1 FarseerPhysics.Common.Transform-ref
---@param transform2 FarseerPhysics.Common.Transform-ref
_G['FarseerPhysics']['Dynamics']['Fixture'].Synchronize = function(broadPhase, transform1, transform2) end

---`Method Public Instance`
---@param body FarseerPhysics.Dynamics.Body
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'].CloneOnto = function(body) end

---`Method NonPublic Instance`
---@param body FarseerPhysics.Dynamics.Body
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'].CloneOnto = function(body, shape) end

---`Constructor NonPublic Instance`
---@overload fun(collisionCategory:FarseerPhysics.Dynamics.Category, collidesWith:FarseerPhysics.Dynamics.Category):FarseerPhysics.Dynamics.Fixture
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'] = function(shape, collisionCategory, collidesWith) end

---`Constructor NonPublic Instance`
---@overload fun(collisionCategory:FarseerPhysics.Dynamics.Category, collidesWith:FarseerPhysics.Dynamics.Category):FarseerPhysics.Dynamics.Fixture
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'].__new = function(shape, collisionCategory, collidesWith) end

---`Constructor Public Instance`
---@overload fun(collisionCategory:FarseerPhysics.Dynamics.Category, collidesWith:FarseerPhysics.Dynamics.Category):FarseerPhysics.Dynamics.Fixture
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'] = function(shape, collisionCategory, collidesWith) end

---`Constructor Public Instance`
---@overload fun(collisionCategory:FarseerPhysics.Dynamics.Category, collidesWith:FarseerPhysics.Dynamics.Category):FarseerPhysics.Dynamics.Fixture
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['Fixture'].__new = function(shape, collisionCategory, collidesWith) end

