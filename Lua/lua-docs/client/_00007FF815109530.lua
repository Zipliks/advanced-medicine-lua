---@meta
---@class Barotrauma.Level : Barotrauma.Entity
---`Field Private Instance`
---@field renderer Barotrauma.LevelRenderer
---`Field Private Instance`
---@field backgroundCreatureManager Barotrauma.BackgroundCreatureManager
---`Field Private Instance`
---@field cellGrid System.Collections.Generic.List|System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[][]
---`Field Private Instance`
---@field cells System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
---`Field Public Instance`
---@field AbyssIslands System.Collections.Generic.List*1Barotrauma*Level*AbyssIsland|Barotrauma.Level.AbyssIsland[]
---`Field Public Instance`
---@field siteCoordsX System.Collections.Generic.List*1System*Double|System.Double|number[]
---`Field Public Instance`
---@field siteCoordsY System.Collections.Generic.List*1System*Double|System.Double|number[]
---`Field Public Instance`
---@field distanceField System.Collections.Generic.List*1System*ValueTuple*2Microsoft*Xna*Framework*Point*2System*Double|System.ValueTuple*1Microsoft*Xna*Framework*Point*1System*Double[]
---`Field Private Instance`
---@field startPosition Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field endPosition Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field borders Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field bodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field bottomPositions System.Collections.Generic.List*1Microsoft*Xna*Framework*Point|Microsoft.Xna.Framework.Point[]
---`Field Private Instance`
---@field networkUpdateTimer System.Single|number
---`Field Private Instance`
---@field startExitPosition Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field endExitPosition Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field beaconSonar Barotrauma.Items.Components.Sonar
---`Field Private Instance`
---@field preSelectedStartOutpost Barotrauma.SubmarineInfo
---`Field Private Instance`
---@field preSelectedEndOutpost Barotrauma.SubmarineInfo
---`Field Public Instance`
---@field LevelData Barotrauma.LevelData
---`Field Private Instance`
---@field equalityCheckValues System.Collections.Generic.Dictionary*1Barotrauma*Level*LevelGenStage*1System*Int32|{[Barotrauma.Level.LevelGenStage]:System.Int32|integer}
---`Field Private Instance`
---@field tempCells System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
---`Field Private Instance`
---@field wreckPositions System.Collections.Generic.Dictionary*1Barotrauma*Submarine*1System*Collections*Generic*List*2Microsoft*Xna*Framework*Vector2|{[Barotrauma.Submarine]:System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]}
---`Field Private Instance`
---@field blockedRects System.Collections.Generic.Dictionary*1Barotrauma*Submarine*1System*Collections*Generic*List*2Microsoft*Xna*Framework*Rectangle|{[Barotrauma.Submarine]:System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]}
---`Field Private Static`
---@field loaded Barotrauma.Level
---`Field Public Static`
---@field ForcedDifficulty System.Nullable*1System*Single|number
---`Field Private Static`
---@field nextPathPointId System.Int32|integer
---`Field Public Static`
---@field MaxEntityDepth System.Int32|integer
---`Field Public Static`
---@field ShaftHeight System.Single|number
---`Field Public Static`
---@field OutsideBoundsCurrentMargin System.Single|number
---`Field Public Static`
---@field OutsideBoundsCurrentMarginExponential System.Single|number
---`Field Public Static`
---@field OutsideBoundsCurrentHardLimit System.Single|number
---`Field Public Static`
---@field MaxSubmarineWidth System.Int32|integer
---`Field Public Static`
---@field ExitDistance System.Single|number
---`Field Public Static`
---@field GridCellSize System.Int32|integer
---`Field Private Static`
---@field NetworkUpdateInterval System.Single|number
---`Field Public Static`
---@field DefaultRealWorldCrushDepth System.Single|number
---`Getter Public Instance`
---@field BackgroundCreatureManager Barotrauma.BackgroundCreatureManager
---`Getter Public Instance`
---@field Renderer Barotrauma.LevelRenderer
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Loaded Barotrauma.Level
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AbyssArea Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field AbyssStart System.Int32|integer
---`Getter Public Instance`
---@field AbyssEnd System.Int32|integer
---`Getter Public Instance`
---@field StartPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field StartExitPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Size Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field EndPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field EndExitPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BottomPos System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SeaFloorTopPos System.Int32|integer
---`Getter Public Instance`
---@field CrushDepth System.Single|number
---`Getter Public Instance`
---@field RealWorldCrushDepth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SeaFloor Barotrauma.LevelWall
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Ruins System.Collections.Generic.List*1Barotrauma*RuinGeneration*Ruin|Barotrauma.RuinGeneration.Ruin[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Wrecks System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BeaconStation Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExtraWalls System.Collections.Generic.List*1Barotrauma*LevelWall|Barotrauma.LevelWall[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UnsyncedExtraWalls System.Collections.Generic.List*1Barotrauma*LevelWall|Barotrauma.LevelWall[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Tunnels System.Collections.Generic.List*1Barotrauma*Level*Tunnel|Barotrauma.Level.Tunnel[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Caves System.Collections.Generic.List*1Barotrauma*Level*Cave|Barotrauma.Level.Cave[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PositionsOfInterest System.Collections.Generic.List*1Barotrauma*Level*InterestingPosition|Barotrauma.Level.InterestingPosition[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartOutpost Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EndOutpost Barotrauma.Submarine
---`Getter Public Instance`
---@field EqualityCheckValues System.Collections.Generic.IReadOnlyDictionary*1Barotrauma*Level*LevelGenStage*1System*Int32|{[Barotrauma.Level.LevelGenStage]:System.Int32|integer}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EntitiesBeforeGenerate System.Collections.Generic.List*1Barotrauma*Entity|Barotrauma.Entity[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EntityCountBeforeGenerate System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EntityCountAfterGenerate System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TopBarrier FarseerPhysics.Dynamics.Body
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BottomBarrier FarseerPhysics.Dynamics.Body
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LevelObjectManager Barotrauma.LevelObjectManager
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Generating System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartLocation Barotrauma.Location
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EndLocation Barotrauma.Location
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Mirrored System.Boolean|boolean
---`Getter Public Instance`
---@field Seed System.String|string
---`Getter Public Instance`
---@field Difficulty System.Single|number
---`Getter Public Instance`
---@field Type Barotrauma.LevelData.LevelType
---`Getter Public Static`
---@field IsLoadedOutpost System.Boolean|boolean
---`Getter Public Static`
---@field IsLoadedFriendlyOutpost System.Boolean|boolean
---`Getter Public Instance`
---@field GenerationParams Barotrauma.LevelGenerationParams
---`Getter Public Instance`
---@field BackgroundTextureColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field BackgroundColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field WallColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field PathPoints System.Collections.Generic.List*1Barotrauma*Level*PathPoint|Barotrauma.Level.PathPoint[]
---`Getter Public Instance`
---@field AbyssResources System.Collections.Generic.List*1Barotrauma*Level*ClusterLocation|Barotrauma.Level.ClusterLocation[]
_G['Level'] = {}

---`Method Private Instance`
---@param tunnel Barotrauma.Level.Tunnel
---@param parentTunnel Barotrauma.Level.Tunnel
_G['Level'].GenerateWaypoints = function(tunnel, parentTunnel) end

---`Method Private Instance`
---@overload fun(tunnel:Barotrauma.Level.Tunnel, parentTunnel:Barotrauma.Level.Tunnel)
---@param wp1 Barotrauma.WayPoint
---@param wp2 Barotrauma.WayPoint
---@param interval System.Single|number
---@return System.Collections.Generic.List*1Barotrauma*WayPoint|Barotrauma.WayPoint[]
_G['Level'].ConnectWaypoints = function(wp1, wp2, interval) end

---`Method Private Static`
---@overload fun(worldPosition:Microsoft.Xna.Framework.Vector2, otherTunnel:Barotrauma.Level.Tunnel):Barotrauma.WayPoint
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param waypoints System.Collections.Generic.IEnumerable*1Barotrauma*WayPoint|(fun():Barotrauma.WayPoint)
---@param filter? System.Func*1Barotrauma*WayPoint*1System*Boolean|(fun(arg:Barotrauma.WayPoint):System.Boolean|boolean)
---@return Barotrauma.WayPoint
_G['Level'].FindClosestWayPoint = function(worldPosition, waypoints, filter) end

---`Method Private Instance`
---@param emptyCells System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
---@param minDistance System.Single|number
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].GetTooCloseCells = function(emptyCells, minDistance) end

---`Method Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param minDistance System.Single|number
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].GetTooCloseCells = function(position, minDistance) end

---`Method Private Instance`
_G['Level'].GenerateAbyssPositions = function() end

---`Method Private Instance`
_G['Level'].GenerateAbyssArea = function() end

---`Method Private Instance`
_G['Level'].GenerateAbyssGeometry = function() end

---`Method Private Instance`
_G['Level'].GenerateSeaFloorPositions = function() end

---`Method Private Instance`
_G['Level'].GenerateSeaFloor = function() end

---`Method Private Instance`
---@param parentTunnel Barotrauma.Level.Tunnel
_G['Level'].GenerateCaves = function(parentTunnel) end

---`Method Private Instance`
---@param caveParams Barotrauma.CaveGenerationParams
---@param parentTunnel Barotrauma.Level.Tunnel
---@param cavePos Microsoft.Xna.Framework.Point
---@param caveSize Microsoft.Xna.Framework.Point
_G['Level'].GenerateCave = function(caveParams, parentTunnel, cavePos, caveSize) end

---`Method Private Instance`
---@param ruinPos Microsoft.Xna.Framework.Point
---@param mirror System.Boolean|boolean
_G['Level'].GenerateRuin = function(ruinPos, mirror) end

---`Method Private Instance`
---@param ruin Barotrauma.RuinGeneration.Ruin
_G['Level'].GenerateRuinWayPoints = function(ruin) end

---`Method Private Instance`
---@param minDistance System.Double|number
---@param asCloseAsPossible System.Boolean|boolean
---@param limits? System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@return Microsoft.Xna.Framework.Point
_G['Level'].FindPosAwayFromMainPath = function(minDistance, asCloseAsPossible, limits) end

---`Method Private Instance`
---@param ruinPositions System.Collections.Generic.List*1Microsoft*Xna*Framework*Point|Microsoft.Xna.Framework.Point[]
_G['Level'].CalculateTunnelDistanceField = function(ruinPositions) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param tunnel Barotrauma.Level.Tunnel
---@return System.Double|number
_G['Level'].GetDistToTunnel = function(position, tunnel) end

---`Method Private Instance`
---@overload fun(edges:System.Collections.Generic.IEnumerable*1Voronoi2*GraphEdge|(fun():Voronoi2.GraphEdge), position:Microsoft.Xna.Framework.Vector2, health?:System.Nullable*1System*Single|number):Barotrauma.DestructibleLevelWall
---@param vertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param position Microsoft.Xna.Framework.Vector2
---@param health? System.Nullable*1System*Single|number
---@return Barotrauma.DestructibleLevelWall
_G['Level'].CreateIceChunk = function(vertices, position, health) end

---`Method Private Instance`
---@param usedSpireEdges System.Collections.Generic.List*1Voronoi2*GraphEdge|Voronoi2.GraphEdge[]
---@return Barotrauma.DestructibleLevelWall
_G['Level'].CreateIceSpire = function(usedSpireEdges) end

---`Method Private Instance`
_G['Level'].GenerateItems = function() end

---`Method Public Instance`
---@param prefab Barotrauma.ItemPrefab
---@param requiredAmount System.Int32|integer
---@param positionType Barotrauma.Level.PositionType
---@param rotation System.Single-ref
---@param targetCaves? System.Collections.Generic.IEnumerable*1Barotrauma*Level*Cave|(fun():Barotrauma.Level.Cave)
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['Level'].GenerateMissionResources = function(prefab, requiredAmount, positionType, rotation, targetCaves) end

---`Method Private Instance`
---@return System.Collections.Generic.List*1Barotrauma*Level*ClusterLocation|Barotrauma.Level.ClusterLocation[]
_G['Level'].GetAllValidClusterLocations = function() end

---`Method Private Instance`
---@param resourcePrefab Barotrauma.ItemPrefab
---@param resourceCount System.Int32|integer
---@param location Barotrauma.Level.ClusterLocation
---@param placedResources System.Collections.Generic.List
---@param edgeLength? System.Nullable*1System*Single|number
---@param maxResourceOverlap? System.Single|number
_G['Level'].PlaceResources = function(resourcePrefab, resourceCount, location, placedResources, edgeLength, maxResourceOverlap) end

---`Method Public Instance`
---@param spawnPosType Barotrauma.Level.PositionType
---@param randomSpread System.Single|number
---@param minDistFromSubs System.Single|number
---@param offsetFromWall? System.Single|number
---@param filter? System.Func*1Barotrauma*Level*InterestingPosition*1System*Boolean|(fun(arg:Barotrauma.Level.InterestingPosition):System.Boolean|boolean)
---@return Microsoft.Xna.Framework.Vector2
_G['Level'].GetRandomItemPos = function(spawnPosType, randomSpread, minDistFromSubs, offsetFromWall, filter) end

---`Method Public Instance`
---@param useSyncedRand System.Boolean|boolean
---@param positionType Barotrauma.Level.PositionType
---@param minDistFromSubs System.Single|number
---@param position Microsoft.Xna.Framework.Vector2-ref
---@param awayPoint Microsoft.Xna.Framework.Vector2
---@param minDistFromPoint System.Single|number
---@param filter? System.Func*1Barotrauma*Level*InterestingPosition*1System*Boolean|(fun(arg:Barotrauma.Level.InterestingPosition):System.Boolean|boolean)
---@return System.Boolean|boolean
_G['Level'].TryGetInterestingPositionAwayFromPoint = function(useSyncedRand, positionType, minDistFromSubs, position, awayPoint, minDistFromPoint, filter) end

---`Method Public Instance`
---@overload fun(useSyncedRand:System.Boolean|boolean, positionType:Barotrauma.Level.PositionType, minDistFromSubs:System.Single|number, position:Microsoft.Xna.Framework.Vector2-ref, filter?:System.Func*1Barotrauma*Level*InterestingPosition*1System*Boolean|(fun(arg:Barotrauma.Level.InterestingPosition):System.Boolean|boolean), suppressWarning?:System.Boolean|boolean):System.Boolean|boolean
---@param useSyncedRand System.Boolean|boolean
---@param positionType Barotrauma.Level.PositionType
---@param minDistFromSubs System.Single|number
---@param position Microsoft.Xna.Framework.Point-ref
---@param awayPoint Microsoft.Xna.Framework.Vector2
---@param minDistFromPoint? System.Single|number
---@param filter? System.Func*1Barotrauma*Level*InterestingPosition*1System*Boolean|(fun(arg:Barotrauma.Level.InterestingPosition):System.Boolean|boolean)
---@param suppressWarning? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Level'].TryGetInterestingPosition = function(useSyncedRand, positionType, minDistFromSubs, position, awayPoint, minDistFromPoint, filter, suppressWarning) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Level'].Update = function(deltaTime, cam) end

---`Method Public Instance`
---@param xPosition System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['Level'].GetBottomPosition = function(xPosition) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].GetAllCells = function() end

---`Method Public Instance`
---@param worldPos Microsoft.Xna.Framework.Vector2
---@param searchDepth? System.Int32|integer
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].GetCells = function(worldPos, searchDepth) end

---`Method Public Instance`
---@param worldPos Microsoft.Xna.Framework.Vector2
---@return Voronoi2.VoronoiCell
_G['Level'].GetClosestCell = function(worldPos) end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Point
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].CreatePathToClosestTunnel = function(pos) end

---`Method Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, minDist:System.Single|number):System.Boolean|boolean
---@param position Microsoft.Xna.Framework.Point
---@param minDist System.Single|number
---@return System.Boolean|boolean
_G['Level'].IsCloseToStart = function(position, minDist) end

---`Method Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, minDist:System.Single|number):System.Boolean|boolean
---@param position Microsoft.Xna.Framework.Point
---@param minDist System.Single|number
---@return System.Boolean|boolean
_G['Level'].IsCloseToEnd = function(position, minDist) end

---`Method Private Instance`
---@param subName System.String|string
---@param contentFile Barotrauma.ContentFile
---@param type Barotrauma.SubmarineType
---@return Barotrauma.Submarine
_G['Level'].SpawnSubOnPath = function(subName, contentFile, type) end

---`Method Private Instance`
_G['Level'].CreateWrecks = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Level'].HasStartOutpost = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Level'].HasEndOutpost = function() end

---`Method Private Instance`
_G['Level'].CreateOutposts = function() end

---`Method Private Instance`
_G['Level'].CreateBeaconStation = function() end

---`Method Public Instance`
_G['Level'].PrepareBeaconStation = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Level'].CheckBeaconActive = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Level'].IsModeStartOutpostCompatible = function() end

---`Method Public Instance`
_G['Level'].SpawnCorpses = function() end

---`Method Public Instance`
_G['Level'].SpawnNPCs = function() end

---`Method Public Instance`
---@param worldPositionY System.Single|number
---@return System.Single|number
_G['Level'].GetRealWorldDepth = function(worldPositionY) end

---`Method Public Instance`
---@param newStartLocation Barotrauma.Location
_G['Level'].DebugSetStartLocation = function(newStartLocation) end

---`Method Public Instance`
---@param newEndLocation Barotrauma.Location
_G['Level'].DebugSetEndLocation = function(newEndLocation) end

---`Method Public Instance Virtual`
_G['Level'].Remove = function() end

---`Method Public Instance`
_G['Level'].ReloadTextures = function() end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
_G['Level'].DrawDebugOverlay = function(spriteBatch, cam) end

---`Method Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
_G['Level'].DrawBack = function(graphics, spriteBatch, cam) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
_G['Level'].DrawFront = function(spriteBatch, cam) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Level'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param stage Barotrauma.Level.LevelGenStage
_G['Level'].GenerateEqualityCheckValue = function(stage) end

---`Method Private Instance`
---@param stage Barotrauma.Level.LevelGenStage
---@param value System.Int32|integer
_G['Level'].SetEqualityCheckValue = function(stage, value) end

---`Method Private Instance`
_G['Level'].ClearEqualityCheckValues = function() end

---`Method Public Static`
---@param levelData Barotrauma.LevelData
---@param mirror System.Boolean|boolean
---@param startLocation Barotrauma.Location
---@param endLocation Barotrauma.Location
---@param startOutpost? Barotrauma.SubmarineInfo
---@param endOutpost? Barotrauma.SubmarineInfo
---@return Barotrauma.Level
_G['Level'].Generate = function(levelData, mirror, startLocation, endLocation, startOutpost, endOutpost) end

---`Method Private Instance`
---@param mirror System.Boolean|boolean
---@param startLocation Barotrauma.Location
---@param endLocation Barotrauma.Location
_G['Level'].Generate = function(mirror, startLocation, endLocation) end

---`Method Private Instance`
---@param startPosition Microsoft.Xna.Framework.Point
---@param endPosition Microsoft.Xna.Framework.Point
---@param pathBorders Microsoft.Xna.Framework.Rectangle
---@param parentTunnel Barotrauma.Level.Tunnel
---@param variance System.Single|number
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Point|Microsoft.Xna.Framework.Point[]
_G['Level'].GeneratePathNodes = function(startPosition, endPosition, pathBorders, parentTunnel, variance) end

---`Method Private Instance`
---@param holeProbability System.Single|number
---@param limits Microsoft.Xna.Framework.Rectangle
---@param submarineSize System.Int32|integer
---@return System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
_G['Level'].CreateHoles = function(holeProbability, limits, submarineSize) end

---`Method Private Instance`
---@param pathCells System.Collections.Generic.List*1Voronoi2*VoronoiCell|Voronoi2.VoronoiCell[]
---@param minWidth System.Single|number
_G['Level'].EnlargePath = function(pathCells, minWidth) end

---`Constructor Private Instance`
---@param levelData Barotrauma.LevelData
---@return Barotrauma.Level
_G['Level'] = function(levelData) end

---`Constructor Private Instance`
---@param levelData Barotrauma.LevelData
---@return Barotrauma.Level
_G['Level'].__new = function(levelData) end

