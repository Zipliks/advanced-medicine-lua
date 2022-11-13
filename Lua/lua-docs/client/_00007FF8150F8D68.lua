---@meta
---@class Barotrauma.WayPoint : Barotrauma.MapEntity
---`Field NonPublic Instance`
---@field spawnType Barotrauma.SpawnType
---`Field Private Instance`
---@field idCardTags System.String-arr|System.String|string[]
---`Field Private Instance`
---@field ladderId System.UInt16|integer
---`Field Public Instance`
---@field Ladders Barotrauma.Items.Components.Ladder
---`Field Public Instance`
---@field Stairs Barotrauma.Structure
---`Field Private Instance`
---@field tags System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field isObstructed System.Boolean|boolean
---`Field Private Instance`
---@field gapId System.UInt16|integer
---`Field Public Instance`
---@field Tunnel Barotrauma.Level.Tunnel
---`Field Public Instance`
---@field Ruin Barotrauma.RuinGeneration.Ruin
---`Field Private Static`
---@field iconSprites System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Sprite|{[System.String|string]:Barotrauma.Sprite}
---`Field Public Static`
---@field WayPointList System.Collections.Generic.List*1Barotrauma*WayPoint|Barotrauma.WayPoint[]
---`Field Public Static`
---@field ShowWayPoints System.Boolean|boolean
---`Field Public Static`
---@field ShowSpawnPoints System.Boolean|boolean
---`Field Private Static`
---@field WaypointSize System.Int32|integer
---`Field Private Static`
---@field SpawnPointSize System.Int32|integer
---`Field Public Static`
---@field LadderWaypointInterval System.Single|number
---`Getter Public Instance Virtual`
---@field SelectableInEditor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ConnectedGap Barotrauma.Gap
---`Getter Public Instance`
---@field ConnectedDoor Barotrauma.Items.Components.Door
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentHull Barotrauma.Hull
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnType Barotrauma.SpawnType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OnLinksChanged System.Action*1Barotrauma*WayPoint|(fun(obj:Barotrauma.WayPoint))
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IdCardDesc System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IdCardTags System.String-arr|System.String|string[]
---`Getter Public Instance`
---@field Tags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AssignedJob Barotrauma.JobPrefab
_G['WayPoint'] = {}

---`Method Public Instance Virtual`
---@param worldView Microsoft.Xna.Framework.Rectangle
---@return System.Boolean|boolean
_G['WayPoint'].IsVisible = function(worldView) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param back? System.Boolean|boolean
_G['WayPoint'].Draw = function(spriteBatch, editing, back) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param drawPos Microsoft.Xna.Framework.Vector2
_G['WayPoint'].Draw = function(spriteBatch, drawPos) end

---`Method Public Instance Virtual`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['WayPoint'].IsMouseOn = function(position) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['WayPoint'].IsHidden = function() end

---`Method Public Instance Virtual`
---@param cam Barotrauma.Camera
---@param deltaTime System.Single|number
_G['WayPoint'].UpdateEditing = function(cam, deltaTime) end

---`Method Private Instance`
---@param worldPos Microsoft.Xna.Framework.Vector2
---@param list System.Collections.Generic.IEnumerable*1Barotrauma*WayPoint*T|(fun():Barotrauma.WayPoint.T)
---@param match System.Action*1Barotrauma*WayPoint*T|(fun(obj:Barotrauma.WayPoint.T))
---@param noMatch System.Action*1Barotrauma*WayPoint*T|(fun(obj:Barotrauma.WayPoint.T))
---@param inflate? System.Int32|integer
_G['WayPoint'].UpdateLinkedEntity = function(worldPos, list, match, noMatch, inflate) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['WayPoint'].ChangeSpawnType = function(button, obj) end

---`Method Private Instance`
---@return Barotrauma.GUIComponent
_G['WayPoint'].CreateEditingHUD = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.MapEntity
_G['WayPoint'].Clone = function() end

---`Method Public Static`
---@param submarine Barotrauma.Submarine
---@return System.Boolean|boolean
_G['WayPoint'].GenerateSubWaypoints = function(submarine) end

---`Method Private Instance`
---@param waypointList System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*WayPoint*2System*Int32|(fun():System.ValueTuple*1Barotrauma*WayPoint*1System*Int32)
---@param tolerance System.Single|number
---@param ignoredBody? FarseerPhysics.Dynamics.Body
---@param ignored? System.Collections.Generic.IEnumerable*1Barotrauma*WayPoint|(fun():Barotrauma.WayPoint)
---@param filter? System.Func*1System*ValueTuple*2Barotrauma*WayPoint*2System*Int32*1System*Boolean|(fun(arg:System.ValueTuple*1Barotrauma*WayPoint*1System*Int32):System.Boolean|boolean)
---@return Barotrauma.WayPoint
_G['WayPoint'].FindClosestOutside = function(waypointList, tolerance, ignoredBody, ignored, filter) end

---`Method Private Instance`
---@param dir System.Int32|integer
---@param horizontalSearch System.Boolean|boolean
---@param tolerance Microsoft.Xna.Framework.Vector2
---@param ignoredBody? FarseerPhysics.Dynamics.Body
---@param ignored? System.Collections.Generic.IEnumerable*1Barotrauma*WayPoint|(fun():Barotrauma.WayPoint)
---@param filter? System.Func*1Barotrauma*WayPoint*1System*Boolean|(fun(arg:Barotrauma.WayPoint):System.Boolean|boolean)
---@return Barotrauma.WayPoint
_G['WayPoint'].FindClosest = function(dir, horizontalSearch, tolerance, ignoredBody, ignored, filter) end

---`Method Public Instance`
---@param wayPoint2 Barotrauma.WayPoint
_G['WayPoint'].ConnectTo = function(wayPoint2) end

---`Method Public Static`
---@param spawnType? Barotrauma.SpawnType
---@param assignedJob? Barotrauma.JobPrefab
---@param sub? Barotrauma.Submarine
---@param useSyncedRand? System.Boolean|boolean
---@param spawnPointTag? System.String|string
---@param ignoreSubmarine? System.Boolean|boolean
---@return Barotrauma.WayPoint
_G['WayPoint'].GetRandom = function(spawnType, assignedJob, sub, useSyncedRand, spawnPointTag, ignoreSubmarine) end

---`Method Public Static`
---@param crew System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---@param submarine Barotrauma.Submarine
---@return Barotrauma.WayPoint-arr|Barotrauma.WayPoint[]
_G['WayPoint'].SelectCrewSpawnPoints = function(crew, submarine) end

---`Method Public Instance`
_G['WayPoint'].FindHull = function() end

---`Method Public Instance Virtual`
_G['WayPoint'].OnMapLoaded = function() end

---`Method Private Instance`
---@return Barotrauma.Structure
_G['WayPoint'].FindStairs = function() end

---`Method Public Instance`
_G['WayPoint'].InitializeLinks = function() end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param submarine Barotrauma.Submarine
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.WayPoint
_G['WayPoint'].Load = function(element, submarine, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['WayPoint'].Save = function(parentElement) end

---`Method Public Instance Virtual`
_G['WayPoint'].ShallowRemove = function() end

---`Method Public Instance Virtual`
_G['WayPoint'].Remove = function() end

---`Constructor Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, spawnType:Barotrauma.SpawnType, submarine:Barotrauma.Submarine, gap?:Barotrauma.Gap):Barotrauma.WayPoint
---@overload fun(prefab:Barotrauma.MapEntityPrefab, rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.WayPoint
---@overload fun(newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.WayPoint
---@overload fun(type:Barotrauma.WayPoint.Type, newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine, id?:System.UInt16|integer):Barotrauma.WayPoint
---@return Barotrauma.WayPoint
_G['WayPoint'] = function() end

---`Constructor Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, spawnType:Barotrauma.SpawnType, submarine:Barotrauma.Submarine, gap?:Barotrauma.Gap):Barotrauma.WayPoint
---@overload fun(prefab:Barotrauma.MapEntityPrefab, rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.WayPoint
---@overload fun(newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.WayPoint
---@overload fun(type:Barotrauma.WayPoint.Type, newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine, id?:System.UInt16|integer):Barotrauma.WayPoint
---@return Barotrauma.WayPoint
_G['WayPoint'].__new = function() end

---`Constructor Private Static`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, spawnType:Barotrauma.SpawnType, submarine:Barotrauma.Submarine, gap?:Barotrauma.Gap):Barotrauma.WayPoint
---@overload fun(prefab:Barotrauma.MapEntityPrefab, rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.WayPoint
---@overload fun(newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.WayPoint
---@overload fun(type:Barotrauma.WayPoint.Type, newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine, id?:System.UInt16|integer):Barotrauma.WayPoint
---@return Barotrauma.WayPoint
_G['WayPoint'] = function() end

---`Constructor Private Static`
---@overload fun(position:Microsoft.Xna.Framework.Vector2, spawnType:Barotrauma.SpawnType, submarine:Barotrauma.Submarine, gap?:Barotrauma.Gap):Barotrauma.WayPoint
---@overload fun(prefab:Barotrauma.MapEntityPrefab, rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.WayPoint
---@overload fun(newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.WayPoint
---@overload fun(type:Barotrauma.WayPoint.Type, newRect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine, id?:System.UInt16|integer):Barotrauma.WayPoint
---@return Barotrauma.WayPoint
_G['WayPoint'].__new = function() end

