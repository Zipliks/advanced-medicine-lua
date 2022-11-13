---@meta
---@class FarseerPhysics.Dynamics.World : System.Object
---`Field Private Instance`
---@field _stepComplete System.Boolean|boolean
---`Field Private Instance`
---@field _invDt0 System.Single|number
---`Field Private Instance`
---@field _stack FarseerPhysics.Dynamics.Body-arr|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field _bodyAddList System.Collections.Generic.HashSet*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field _bodyRemoveList System.Collections.Generic.HashSet*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field _jointAddList System.Collections.Generic.HashSet*1FarseerPhysics*Dynamics*Joints*Joint|FarseerPhysics.Dynamics.Joints.Joint[]
---`Field Private Instance`
---@field _jointRemoveList System.Collections.Generic.HashSet*1FarseerPhysics*Dynamics*Joints*Joint|FarseerPhysics.Dynamics.Joints.Joint[]
---`Field Private Instance`
---@field _queryAABBCallback System.Func*1FarseerPhysics*Dynamics*Fixture*1System*Boolean|(fun(arg:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean)
---`Field Private Instance`
---@field _queryAABBCallbackWrapper System.Func*1System*Int32*1System*Boolean|(fun(arg:System.Int32|integer):System.Boolean|boolean)
---`Field Private Instance`
---@field _input FarseerPhysics.Collision.TOIInput
---`Field Private Instance`
---@field _myFixture FarseerPhysics.Dynamics.Fixture
---`Field Private Instance`
---@field _point1 Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field _point2 Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field _testPointAllFixtures System.Collections.Generic.List*1FarseerPhysics*Dynamics*Fixture|FarseerPhysics.Dynamics.Fixture[]
---`Field Private Instance`
---@field _watch System.Diagnostics.Stopwatch
---`Field Private Instance`
---@field _rayCastCallback System.Func*1FarseerPhysics*Dynamics*Fixture*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2*1System*Single*1System*Single|(fun(arg1:FarseerPhysics.Dynamics.Fixture, arg2:Microsoft.Xna.Framework.Vector2, arg3:Microsoft.Xna.Framework.Vector2, arg4:System.Single|number):System.Single|number)
---`Field Private Instance`
---@field _rayCastCallbackWrapper System.Func*1FarseerPhysics*Collision*RayCastInput*1FarseerPhysics*Dynamics*FixtureProxy*1System*Single|(fun(arg1:FarseerPhysics.Collision.RayCastInput, arg2:FarseerPhysics.Dynamics.FixtureProxy):System.Single|number)
---`Field NonPublic Instance`
---@field _worldHasNewFixture System.Boolean|boolean
---`Field Public Instance`
---@field Tag System.Object
---`Field Public Instance`
---@field BodyAdded FarseerPhysics.Dynamics.BodyDelegate|(fun(sender:FarseerPhysics.Dynamics.World, body:FarseerPhysics.Dynamics.Body))
---`Field Public Instance`
---@field BodyRemoved FarseerPhysics.Dynamics.BodyDelegate|(fun(sender:FarseerPhysics.Dynamics.World, body:FarseerPhysics.Dynamics.Body))
---`Field Public Instance`
---@field FixtureAdded FarseerPhysics.Dynamics.FixtureDelegate|(fun(sender:FarseerPhysics.Dynamics.World, body:FarseerPhysics.Dynamics.Body, fixture:FarseerPhysics.Dynamics.Fixture))
---`Field Public Instance`
---@field FixtureRemoved FarseerPhysics.Dynamics.FixtureDelegate|(fun(sender:FarseerPhysics.Dynamics.World, body:FarseerPhysics.Dynamics.Body, fixture:FarseerPhysics.Dynamics.Fixture))
---`Field Public Instance`
---@field JointAdded FarseerPhysics.Dynamics.JointDelegate|(fun(sender:FarseerPhysics.Dynamics.World, joint:FarseerPhysics.Dynamics.Joints.Joint))
---`Field Public Instance`
---@field JointRemoved FarseerPhysics.Dynamics.JointDelegate|(fun(sender:FarseerPhysics.Dynamics.World, joint:FarseerPhysics.Dynamics.Joints.Joint))
---`Field Public Instance`
---@field ControllerAdded FarseerPhysics.Dynamics.ControllerDelegate|(fun(sender:FarseerPhysics.Dynamics.World, controller:FarseerPhysics.Controllers.Controller))
---`Field Public Instance`
---@field ControllerRemoved FarseerPhysics.Dynamics.ControllerDelegate|(fun(sender:FarseerPhysics.Dynamics.World, controller:FarseerPhysics.Controllers.Controller))
---`Field Public Instance`
---@field ControllerList System.Collections.Generic.List*1FarseerPhysics*Controllers*Controller|FarseerPhysics.Controllers.Controller[]
---`Field Public Instance`
---@field Gravity Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field ContactManager FarseerPhysics.Dynamics.ContactManager
---`Field Public Instance`
---@field BodyList System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Public Instance`
---@field JointList System.Collections.Generic.List*1FarseerPhysics*Dynamics*Joints*Joint|FarseerPhysics.Dynamics.Joints.Joint[]
---`Field Private Static`
---@field _warmStarting System.Boolean|boolean
---`Field Private Static`
---@field _subStepping System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Fluid FarseerPhysics.Fluids.FluidSystem2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UpdateTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ContinuousPhysicsTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ControllersUpdateTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AddRemoveTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field NewContactsTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ContactsUpdateTime System.TimeSpan
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SolveUpdateTime System.TimeSpan
---`Getter Public Instance`
---@field ProxyCount System.Int32|integer
---`Getter Public Instance`
---@field ContactCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsLocked System.Boolean|boolean
---`Getter Public Instance`
---@field ContactList FarseerPhysics.Dynamics.Contacts.ContactListHead
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Island FarseerPhysics.Dynamics.Island
_G['FarseerPhysics']['Dynamics']['World'] = {}

---`Method Private Instance`
---@param proxyId System.Int32|integer
---@return System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['World'].QueryAABBCallbackWrapper = function(proxyId) end

---`Method Private Instance`
---@param rayCastInput FarseerPhysics.Collision.RayCastInput
---@param proxy FarseerPhysics.Dynamics.FixtureProxy
---@return System.Single|number
_G['FarseerPhysics']['Dynamics']['World'].RayCastCallbackWrapper = function(rayCastInput, proxy) end

---`Method Private Instance`
---@param step FarseerPhysics.Dynamics.TimeStep-ref
_G['FarseerPhysics']['Dynamics']['World'].Solve = function(step) end

---`Method Private Instance`
---@param step FarseerPhysics.Dynamics.TimeStep-ref
---@param iterations FarseerPhysics.Dynamics.SolverIterations-ref
_G['FarseerPhysics']['Dynamics']['World'].SolveTOI = function(step, iterations) end

---`Method Public Instance Virtual`
---@param body FarseerPhysics.Dynamics.Body
---@param findNewContacts System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['World'].Add = function(body, findNewContacts) end

---`Method Public Instance`
---@overload fun(joint:FarseerPhysics.Dynamics.Joints.Joint)
---@param controller FarseerPhysics.Controllers.Controller
_G['FarseerPhysics']['Dynamics']['World'].Add = function(controller) end

---`Method Public Instance Virtual`
---@param body FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].Remove = function(body) end

---`Method Public Instance`
---@overload fun(joint:FarseerPhysics.Dynamics.Joints.Joint)
---@param controller FarseerPhysics.Controllers.Controller
_G['FarseerPhysics']['Dynamics']['World'].Remove = function(controller) end

---`Method Public Instance`
---@overload fun(body:FarseerPhysics.Dynamics.Body, findNewContacts:System.Boolean|boolean)
---@param joint FarseerPhysics.Dynamics.Joints.Joint
_G['FarseerPhysics']['Dynamics']['World'].AddAsync = function(joint) end

---`Method Public Instance`
---@overload fun(body:FarseerPhysics.Dynamics.Body)
---@param joint FarseerPhysics.Dynamics.Joints.Joint
_G['FarseerPhysics']['Dynamics']['World'].RemoveAsync = function(joint) end

---`Method Public Instance`
_G['FarseerPhysics']['Dynamics']['World'].ProcessChanges = function() end

---`Method Public Instance`
---@overload fun(dt:System.TimeSpan)
---@overload fun(dt:System.TimeSpan, iterations:FarseerPhysics.Dynamics.SolverIterations-ref)
---@overload fun(dt:System.Single|number)
---@param dt System.Single|number
---@param iterations FarseerPhysics.Dynamics.SolverIterations-ref
_G['FarseerPhysics']['Dynamics']['World'].Step = function(dt, iterations) end

---`Method Public Instance`
_G['FarseerPhysics']['Dynamics']['World'].ClearForces = function() end

---`Method Public Instance`
---@overload fun(callback:System.Func*1FarseerPhysics*Dynamics*Fixture*1System*Boolean|(fun(arg:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean), aabb:FarseerPhysics.Collision.AABB-ref)
---@param aabb FarseerPhysics.Collision.AABB-ref
---@return System.Collections.Generic.List*1FarseerPhysics*Dynamics*Fixture|FarseerPhysics.Dynamics.Fixture[]
_G['FarseerPhysics']['Dynamics']['World'].QueryAABB = function(aabb) end

---`Method Public Instance`
---@overload fun(callback:System.Func*1FarseerPhysics*Dynamics*Fixture*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2*1System*Single*1System*Single|(fun(arg1:FarseerPhysics.Dynamics.Fixture, arg2:Microsoft.Xna.Framework.Vector2, arg3:Microsoft.Xna.Framework.Vector2, arg4:System.Single|number):System.Single|number), point1:Microsoft.Xna.Framework.Vector2, point2:Microsoft.Xna.Framework.Vector2, collisionCategory?:FarseerPhysics.Dynamics.Category)
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return System.Collections.Generic.List*1FarseerPhysics*Dynamics*Fixture|FarseerPhysics.Dynamics.Fixture[]
_G['FarseerPhysics']['Dynamics']['World'].RayCast = function(point1, point2) end

---`Method Public Instance`
---@param point Microsoft.Xna.Framework.Vector2
---@return FarseerPhysics.Dynamics.Fixture
_G['FarseerPhysics']['Dynamics']['World'].TestPoint = function(point) end

---`Method Private Instance`
---@param fixture FarseerPhysics.Dynamics.Fixture
---@return System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['World'].TestPointCallback = function(fixture) end

---`Method Public Instance`
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Collections.Generic.List*1FarseerPhysics*Dynamics*Fixture|FarseerPhysics.Dynamics.Fixture[]
_G['FarseerPhysics']['Dynamics']['World'].TestPointAll = function(point) end

---`Method Private Instance`
---@param fixture FarseerPhysics.Dynamics.Fixture
---@return System.Boolean|boolean
_G['FarseerPhysics']['Dynamics']['World'].TestPointAllCallback = function(fixture) end

---`Method Public Instance`
---@param newOrigin Microsoft.Xna.Framework.Vector2
_G['FarseerPhysics']['Dynamics']['World'].ShiftOrigin = function(newOrigin) end

---`Method Public Instance`
_G['FarseerPhysics']['Dynamics']['World'].Clear = function() end

---`Method Public Instance Virtual`
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateBody = function(position, rotation, bodyType, findNewContacts) end

---`Method Public Instance`
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateEdge = function(start, luaKey__end, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param vertices FarseerPhysics.Common.Vertices
---@param position? Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateChainShape = function(vertices, position, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param vertices FarseerPhysics.Common.Vertices
---@param position? Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateLoopShape = function(vertices, position, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param width System.Single|number
---@param height System.Single|number
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateRectangle = function(width, height, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param radius System.Single|number
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateCircle = function(radius, density, position, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param xRadius System.Single|number
---@param yRadius System.Single|number
---@param edges System.Int32|integer
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateEllipse = function(xRadius, yRadius, edges, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param vertices FarseerPhysics.Common.Vertices
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreatePolygon = function(vertices, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param list System.Collections.Generic.List*1FarseerPhysics*Common*Vertices|FarseerPhysics.Common.Vertices[]
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateCompoundPolygon = function(list, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param radius System.Single|number
---@param numberOfTeeth System.Int32|integer
---@param tipPercentage System.Single|number
---@param toothHeight System.Single|number
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateGear = function(radius, numberOfTeeth, tipPercentage, toothHeight, density, position, rotation, bodyType, collisionCategory, collidesWith) end

---`Method Public Instance`
---@overload fun(height:System.Single|number, topRadius:System.Single|number, topEdges:System.Int32|integer, bottomRadius:System.Single|number, bottomEdges:System.Int32|integer, density:System.Single|number, position?:Microsoft.Xna.Framework.Vector2, rotation?:System.Single|number, bodyType?:FarseerPhysics.BodyType, collisionCategory?:FarseerPhysics.Dynamics.Category, collidesWith?:FarseerPhysics.Dynamics.Category, findNewContacts?:System.Boolean|boolean):FarseerPhysics.Dynamics.Body
---@param height System.Single|number
---@param endRadius System.Single|number
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateCapsule = function(height, endRadius, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param width System.Single|number
---@param endRadius System.Single|number
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateCapsuleHorizontal = function(width, endRadius, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---`Method Public Instance`
---@param width System.Single|number
---@param height System.Single|number
---@param xRadius System.Single|number
---@param yRadius System.Single|number
---@param segments System.Int32|integer
---@param density System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateRoundedRectangle = function(width, height, xRadius, yRadius, segments, density, position, rotation, bodyType, collisionCategory, collidesWith) end

---`Method Public Instance`
---@param radians System.Single|number
---@param sides System.Int32|integer
---@param radius System.Single|number
---@param closed? System.Boolean|boolean
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateLineArc = function(radians, sides, radius, closed, position, rotation, bodyType, collisionCategory, collidesWith) end

---`Method Public Instance`
---@param density System.Single|number
---@param radians System.Single|number
---@param sides System.Int32|integer
---@param radius System.Single|number
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
_G['FarseerPhysics']['Dynamics']['World'].CreateSolidArc = function(density, radians, sides, radius, position, rotation, bodyType, collisionCategory, collidesWith) end

---`Method Public Instance`
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param linkWidth System.Single|number
---@param linkHeight System.Single|number
---@param numberOfLinks System.Int32|integer
---@param linkDensity System.Single|number
---@param attachRopeJoint System.Boolean|boolean
---@return FarseerPhysics.Common.Path
_G['FarseerPhysics']['Dynamics']['World'].CreateChain = function(start, luaKey__end, linkWidth, linkHeight, numberOfLinks, linkDensity, attachRopeJoint) end

---`Constructor Public Instance`
---@overload fun():FarseerPhysics.Dynamics.World
---@overload fun(gravity:Microsoft.Xna.Framework.Vector2):FarseerPhysics.Dynamics.World
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@return FarseerPhysics.Dynamics.World
_G['FarseerPhysics']['Dynamics']['World'] = function(broadPhase) end

---`Constructor Public Instance`
---@overload fun():FarseerPhysics.Dynamics.World
---@overload fun(gravity:Microsoft.Xna.Framework.Vector2):FarseerPhysics.Dynamics.World
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@return FarseerPhysics.Dynamics.World
_G['FarseerPhysics']['Dynamics']['World'].__new = function(broadPhase) end

