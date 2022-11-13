---@meta
---@class Barotrauma.Submarine : Barotrauma.Entity
---`Field Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Field Private Instance`
---@field upgradeEventIdentifier Barotrauma.Identifier
---`Field Private Instance`
---@field subBody Barotrauma.SubmarineBody
---`Field Public Instance`
---@field ConnectedDockingPorts System.Collections.Generic.Dictionary*1Barotrauma*Submarine*1Barotrauma*Items*Components*DockingPort|{[Barotrauma.Submarine]:Barotrauma.Items.Components.DockingPort}
---`Field Private Instance`
---@field prevPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field networkUpdateTimer System.Single|number
---`Field Private Instance`
---@field entityGrid Barotrauma.EntityGrid
---`Field Public Instance`
---@field ShowSonarMarker System.Boolean|boolean
---`Field Private Instance`
---@field realWorldCrushDepth System.Nullable*1System*Single|number
---`Field Private Instance`
---@field submarineSpecificIDTag System.Nullable*1System*Int32|integer
---`Field Private Instance`
---@field ballastFloraTimer System.Single|number
---`Field Private Instance`
---@field connectedSubs System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Field Private Instance`
---@field flippedX System.Boolean|boolean
---`Field Private Instance`
---@field outdoorNodes System.Collections.Generic.List*1Barotrauma*PathNode|Barotrauma.PathNode[]
---`Field Private Instance`
---@field obstructedNodes System.Collections.Generic.Dictionary*1Barotrauma*Submarine*1System*Collections*Generic*HashSet*2Barotrauma*PathNode|{[Barotrauma.Submarine]:System.Collections.Generic.HashSet*1Barotrauma*PathNode|Barotrauma.PathNode[]}
---`Field Public Static`
---@field HiddenSubStartPosition Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field LockX System.Boolean|boolean
---`Field Public Static`
---@field LockY System.Boolean|boolean
---`Field Public Static`
---@field GridSize Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field MainSubs Barotrauma.Submarine-arr|Barotrauma.Submarine[]
---`Field Private Static`
---@field loaded System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Field Private Static`
---@field visibleEntities System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Static`
---@field lastPickedPosition Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field lastPickedFraction System.Single|number
---`Field Private Static`
---@field lastPickedFixture FarseerPhysics.Dynamics.Fixture
---`Field Private Static`
---@field lastPickedNormal Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field bodyDist System.Collections.Generic.Dictionary*1FarseerPhysics*Dynamics*Body*1System*Single|{[FarseerPhysics.Dynamics.Body]:System.Single|number}
---`Field Private Static`
---@field bodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Info Barotrauma.SubmarineInfo
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HiddenSubPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IdOffset System.UInt16|integer
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field MainSub Barotrauma.Submarine
---`Getter Public Static`
---@field VisibleEntities System.Collections.Generic.IEnumerable*1Barotrauma*MapEntity|(fun():Barotrauma.MapEntity)
---`Getter Public Instance`
---@field DockedTo System.Collections.Generic.IEnumerable*1Barotrauma*Submarine|(fun():Barotrauma.Submarine)
---`Getter Public Static`
---@field LastPickedPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Static`
---@field LastPickedFraction System.Single|number
---`Getter Public Static`
---@field LastPickedFixture FarseerPhysics.Dynamics.Fixture
---`Getter Public Static`
---@field LastPickedNormal Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Loading System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GodMode System.Boolean|boolean
---`Getter Public Static`
---@field Loaded System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Getter Public Instance`
---@field SubBody Barotrauma.SubmarineBody
---`Getter Public Instance`
---@field PhysicsBody Barotrauma.PhysicsBody
---`Getter Public Instance`
---@field Borders Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field VisibleBorders Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RealWorldCrushDepth System.Single|number
---`Getter Public Instance`
---@field RealWorldDepth System.Single|number
---`Getter Public Instance`
---@field AtEndExit System.Boolean|boolean
---`Getter Public Instance`
---@field AtStartExit System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DrawPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Velocity Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field HullVertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Getter Public Instance`
---@field SubmarineSpecificIDTag System.Int32|integer
---`Getter Public Instance`
---@field AtDamageDepth System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ImmuneToBallastFlora System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field WreckAI Barotrauma.WreckAI
---`Getter Public Instance`
---@field FlippedX System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Unloading System.Boolean|boolean
---`Getter Private Instance`
---@field OutdoorNodes System.Collections.Generic.List*1Barotrauma*PathNode|Barotrauma.PathNode[]
_G['Submarine'] = {}

---`Method Public Static`
---@param position Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Submarine
_G['Submarine'].FindContaining = function(position) end

---`Method Public Static`
---@param submarineElement System.Xml.Linq.XElement
---@return Microsoft.Xna.Framework.Rectangle
_G['Submarine'].GetBorders = function(submarineElement) end

---`Method NonPublic Instance Virtual`
---@param id System.UInt16|integer
---@param submarine Barotrauma.Submarine
---@return System.UInt16|integer
_G['Submarine'].DetermineID = function(id, submarine) end

---`Method Public Static`
---@param info Barotrauma.SubmarineInfo
---@param unloadPrevious System.Boolean|boolean
---@param linkedRemap? Barotrauma.IdRemap
---@return Barotrauma.Submarine
_G['Submarine'].Load = function(info, unloadPrevious, linkedRemap) end

---`Method Private Instance`
_G['Submarine'].ResetCrushDepth = function() end

---`Method Public Static`
---@param moveAmount Microsoft.Xna.Framework.Vector2
---@param entities System.Collections.Generic.IEnumerable*1Barotrauma*MapEntity|(fun():Barotrauma.MapEntity)
_G['Submarine'].RepositionEntities = function(moveAmount, entities) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Submarine'].CheckFuel = function() end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Submarine'].SaveToXElement = function(element) end

---`Method Public Instance`
---@param filePath System.String|string
---@param previewImage? System.IO.MemoryStream
---@return System.Boolean|boolean
_G['Submarine'].TrySaveAs = function(filePath, previewImage) end

---`Method Public Static`
_G['Submarine'].Unload = function() end

---`Method Public Instance Virtual`
_G['Submarine'].Remove = function() end

---`Method Public Instance`
_G['Submarine'].Dispose = function() end

---`Method Private Instance`
_G['Submarine'].GenerateOutdoorNodes = function() end

---`Method Public Instance`
---@overload fun()
---@param otherSub Barotrauma.Submarine
_G['Submarine'].DisableObstructedWayPoints = function(otherSub) end

---`Method Public Instance`
---@param otherSub Barotrauma.Submarine
_G['Submarine'].EnableObstructedWaypoints = function(otherSub) end

---`Method Public Instance`
_G['Submarine'].RefreshOutdoorNodes = function() end

---`Method Public Instance`
---@param item Barotrauma.Item
---@param onlyPrimary System.Boolean|boolean
---@param checkTransferConditions? System.Boolean|boolean
---@param allowConnectedSubs? System.Boolean|boolean
---@return Barotrauma.Item
_G['Submarine'].FindContainerFor = function(item, onlyPrimary, checkTransferConditions, allowConnectedSubs) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['Submarine'].ServerWritePosition = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Submarine'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Submarine'].ToString = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['Submarine'].CalculateBasePrice = function() end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@param deltaTime System.Single|number
---@param probability System.Single|number
_G['Submarine'].AttemptBallastFloraInfection = function(identifier, deltaTime, probability) end

---`Method Public Instance`
_G['Submarine'].MakeWreck = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Submarine'].CreateWreckAI = function() end

---`Method Public Instance`
_G['Submarine'].DisableWreckAI = function() end

---`Method Public Instance`
---@param checkd? System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---@return Microsoft.Xna.Framework.Rectangle
_G['Submarine'].GetDockedBorders = function(checkd) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
_G['Submarine'].GetConnectedSubs = function() end

---`Method Private Instance`
---@param subs System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
_G['Submarine'].GetConnectedSubsRecursive = function(subs) end

---`Method Public Instance`
---@param spawnPos Microsoft.Xna.Framework.Vector2
---@param submarineSize? System.Nullable*1Microsoft*Xna*Framework*Point
---@param subDockingPortOffset? System.Single|number
---@param verticalMoveDir? System.Int32|integer
---@return Microsoft.Xna.Framework.Vector2
_G['Submarine'].FindSpawnPos = function(spawnPos, submarineSize, subDockingPortOffset, verticalMoveDir) end

---`Method Public Instance`
---@param interpolate? System.Boolean|boolean
_G['Submarine'].UpdateTransform = function(interpolate) end

---`Method Public Static`
---@param position Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Submarine'].VectorToWorldGrid = function(position) end

---`Method Public Instance`
---@param onlyHulls? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Rectangle
_G['Submarine'].CalculateDimensions = function(onlyHulls) end

---`Method Public Static`
---@param pos Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
_G['Submarine'].AbsRect = function(pos, size) end

---`Method Public Static`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param pos Microsoft.Xna.Framework.Vector2
---@param inclusive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Submarine'].RectContains = function(rect, pos, inclusive) end

---`Method Public Static`
---@param rect1 Microsoft.Xna.Framework.Rectangle
---@param rect2 Microsoft.Xna.Framework.Rectangle
---@param inclusive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Submarine'].RectsOverlap = function(rect1, rect2, inclusive) end

---`Method Public Static`
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param ignoredBodies? System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
---@param collisionCategory? System.Nullable*1FarseerPhysics*Dynamics*Category
---@param ignoreSensors? System.Boolean|boolean
---@param customPredicate? System.Predicate*1FarseerPhysics*Dynamics*Fixture|(fun(obj:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean)
---@param allowInsideFixture? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['Submarine'].PickBody = function(rayStart, rayEnd, ignoredBodies, collisionCategory, ignoreSensors, customPredicate, allowInsideFixture) end

---`Method Public Static`
---@param body FarseerPhysics.Dynamics.Body
---@return System.Single|number
_G['Submarine'].LastPickedBodyDist = function(body) end

---`Method Public Static`
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param ignoredBodies? System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
---@param collisionCategory? System.Nullable*1FarseerPhysics*Dynamics*Category
---@param ignoreSensors? System.Boolean|boolean
---@param customPredicate? System.Predicate*1FarseerPhysics*Dynamics*Fixture|(fun(obj:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean)
---@param allowInsideFixture? System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
_G['Submarine'].PickBodies = function(rayStart, rayEnd, ignoredBodies, collisionCategory, ignoreSensors, customPredicate, allowInsideFixture) end

---`Method Private Static`
---@param fixture FarseerPhysics.Dynamics.Fixture
---@param ignoredBodies? System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
---@param collisionCategory? System.Nullable*1FarseerPhysics*Dynamics*Category
---@param ignoreSensors? System.Boolean|boolean
---@param customPredicate? System.Predicate*1FarseerPhysics*Dynamics*Fixture|(fun(obj:FarseerPhysics.Dynamics.Fixture):System.Boolean|boolean)
---@return System.Boolean|boolean
_G['Submarine'].CheckFixtureCollision = function(fixture, ignoredBodies, collisionCategory, ignoreSensors, customPredicate) end

---`Method Public Static`
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param ignoreLevel? System.Boolean|boolean
---@param ignoreSubs? System.Boolean|boolean
---@param ignoreSensors? System.Boolean|boolean
---@param ignoreDisabledWalls? System.Boolean|boolean
---@param ignoreBranches? System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['Submarine'].CheckVisibility = function(rayStart, rayEnd, ignoreLevel, ignoreSubs, ignoreSensors, ignoreDisabledWalls, ignoreBranches) end

---`Method Public Instance`
---@param parents? System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
_G['Submarine'].FlipX = function(parents) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Submarine'].Update = function(deltaTime) end

---`Method Public Instance`
---@param force Microsoft.Xna.Framework.Vector2
_G['Submarine'].ApplyForce = function(force) end

---`Method Public Instance`
_G['Submarine'].EnableMaintainPosition = function() end

---`Method Public Instance`
_G['Submarine'].NeutralizeBallast = function() end

---`Method Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
_G['Submarine'].SetPrevTransform = function(position) end

---`Method Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param checkd? System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---@param forceUndockFromStaticSubmarines? System.Boolean|boolean
_G['Submarine'].SetPosition = function(position, checkd, forceUndockFromStaticSubmarines) end

---`Method Public Static`
---@param sub Barotrauma.Submarine
---@param dockedSub Barotrauma.Submarine
---@return System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['Submarine'].CalculateDockOffset = function(sub, dockedSub) end

---`Method Public Instance`
---@param amount Microsoft.Xna.Framework.Vector2
_G['Submarine'].Translate = function(amount) end

---`Method Public Static`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param ignoreOutposts? System.Boolean|boolean
---@param ignoreOutsideLevel? System.Boolean|boolean
---@param ignoreRespawnShuttle? System.Boolean|boolean
---@param teamType? System.Nullable*1Barotrauma*CharacterTeamType
---@return Barotrauma.Submarine
_G['Submarine'].FindClosest = function(worldPosition, ignoreOutposts, ignoreOutsideLevel, ignoreRespawnShuttle, teamType) end

---`Method Public Instance`
---@param otherSub Barotrauma.Submarine
---@return System.Boolean|boolean
_G['Submarine'].IsConnectedTo = function(otherSub) end

---`Method Public Instance`
---@param alsoFromConnectedSubs System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
_G['Submarine'].GetHulls = function(alsoFromConnectedSubs) end

---`Method Public Instance`
---@param alsoFromConnectedSubs System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*Gap|Barotrauma.Gap[]
_G['Submarine'].GetGaps = function(alsoFromConnectedSubs) end

---`Method Public Instance`
---@param alsoFromConnectedSubs System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['Submarine'].GetItems = function(alsoFromConnectedSubs) end

---`Method Public Instance`
---@param alsoFromConnectedSubs System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*WayPoint|Barotrauma.WayPoint[]
_G['Submarine'].GetWaypoints = function(alsoFromConnectedSubs) end

---`Method Public Instance`
---@param alsoFromConnectedSubs System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*Structure|Barotrauma.Structure[]
_G['Submarine'].GetWalls = function(alsoFromConnectedSubs) end

---`Method Public Instance`
---@overload fun(includingConnectedSubs:System.Boolean|boolean, list:System.Collections.Generic.List*1Barotrauma*Submarine*T|Barotrauma.Submarine.T[]):System.Collections.Generic.List*1Barotrauma*Submarine*T|Barotrauma.Submarine.T[]
---@param includingConnectedSubs System.Boolean|boolean
---@param list System.Collections.Generic.IEnumerable*1Barotrauma*Submarine*T|(fun():Barotrauma.Submarine.T)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Submarine*T|(fun():Barotrauma.Submarine.T)
_G['Submarine'].GetEntities = function(includingConnectedSubs, list) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Items*Components*ItemContainer*2System*Int32|System.ValueTuple*1Barotrauma*Items*Components*ItemContainer*1System*Int32[]
_G['Submarine'].GetCargoContainers = function() end

---`Method Public Instance`
---@param entity Barotrauma.MapEntity
---@param includingConnectedSubs System.Boolean|boolean
---@param allowDifferentTeam? System.Boolean|boolean
---@param allowDifferentType? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Submarine'].IsEntityFoundOnThisSub = function(entity, includingConnectedSubs, allowDifferentTeam, allowDifferentType) end

---`Constructor Public Instance`
---@overload fun(info:Barotrauma.SubmarineInfo, showWarningMessages?:System.Boolean|boolean, loadEntities?:System.Func*1Barotrauma*Submarine*1System*Collections*Generic*List*2Barotrauma*MapEntity|(fun(arg:Barotrauma.Submarine):System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]), linkedRemap?:Barotrauma.IdRemap):Barotrauma.Submarine
---@return Barotrauma.Submarine
_G['Submarine'] = function() end

---`Constructor Public Instance`
---@overload fun(info:Barotrauma.SubmarineInfo, showWarningMessages?:System.Boolean|boolean, loadEntities?:System.Func*1Barotrauma*Submarine*1System*Collections*Generic*List*2Barotrauma*MapEntity|(fun(arg:Barotrauma.Submarine):System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]), linkedRemap?:Barotrauma.IdRemap):Barotrauma.Submarine
---@return Barotrauma.Submarine
_G['Submarine'].__new = function() end

---`Constructor Private Static`
---@overload fun(info:Barotrauma.SubmarineInfo, showWarningMessages?:System.Boolean|boolean, loadEntities?:System.Func*1Barotrauma*Submarine*1System*Collections*Generic*List*2Barotrauma*MapEntity|(fun(arg:Barotrauma.Submarine):System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]), linkedRemap?:Barotrauma.IdRemap):Barotrauma.Submarine
---@return Barotrauma.Submarine
_G['Submarine'] = function() end

---`Constructor Private Static`
---@overload fun(info:Barotrauma.SubmarineInfo, showWarningMessages?:System.Boolean|boolean, loadEntities?:System.Func*1Barotrauma*Submarine*1System*Collections*Generic*List*2Barotrauma*MapEntity|(fun(arg:Barotrauma.Submarine):System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]), linkedRemap?:Barotrauma.IdRemap):Barotrauma.Submarine
---@return Barotrauma.Submarine
_G['Submarine'].__new = function() end

