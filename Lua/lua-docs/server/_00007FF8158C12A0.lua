---@meta
---@class Barotrauma.LevelObjectManager : Barotrauma.Entity
---`Field Private Instance`
---@field objects System.Collections.Generic.List*1Barotrauma*LevelObject|Barotrauma.LevelObject[]
---`Field Private Instance`
---@field updateableObjects System.Collections.Generic.List*1Barotrauma*LevelObject|Barotrauma.LevelObject[]
---`Field Private Instance`
---@field objectGrid System.Collections.Generic.List|System.Collections.Generic.List*1Barotrauma*LevelObject|Barotrauma.LevelObject[][]
---`Field Private Static`
---@field objectsInRange System.Collections.Generic.HashSet*1Barotrauma*LevelObject|Barotrauma.LevelObject[]
---`Field Private Static`
---@field GridSize System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalForceDecreaseTimer System.Single|number
_G['LevelObjectManager'] = {}

---`Method Public Instance`
---@param level Barotrauma.Level
---@param amount System.Int32|integer
_G['LevelObjectManager'].PlaceObjects = function(level, amount) end

---`Method Public Instance`
---@param level Barotrauma.Level
---@param cave Barotrauma.Level.Cave
---@param nestPosition Microsoft.Xna.Framework.Vector2
---@param nestRadius System.Single|number
---@param objectAmount System.Int32|integer
_G['LevelObjectManager'].PlaceNestObjects = function(level, cave, nestPosition, nestRadius, objectAmount) end

---`Method Private Instance`
---@param prefab Barotrauma.LevelObjectPrefab
---@param spawnPosition Barotrauma.LevelObjectManager.SpawnPosition
---@param level Barotrauma.Level
---@param parentCave? Barotrauma.Level.Cave
_G['LevelObjectManager'].PlaceObject = function(prefab, spawnPosition, level, parentCave) end

---`Method Private Instance`
---@param newObject Barotrauma.LevelObject
---@param level Barotrauma.Level
_G['LevelObjectManager'].AddObject = function(newObject, level) end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Point
_G['LevelObjectManager'].GetGridIndices = function(worldPosition) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1Barotrauma*LevelObject|(fun():Barotrauma.LevelObject)
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*LevelObject|(fun():Barotrauma.LevelObject)
_G['LevelObjectManager'].GetAllObjects = function(worldPosition, radius) end

---`Method Private Instance`
---@param cells System.Collections.Generic.IEnumerable*1Voronoi2*VoronoiCell|(fun():Voronoi2.VoronoiCell)
---@param spawnPosType Barotrauma.LevelObjectPrefab.SpawnPosType
---@param checkFlags? System.Boolean|boolean
---@return System.Collections.Generic.List*1Barotrauma*LevelObjectManager*SpawnPosition|Barotrauma.LevelObjectManager.SpawnPosition[]
_G['LevelObjectManager'].GetAvailableSpawnPositions = function(cells, spawnPosType, checkFlags) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['LevelObjectManager'].Update = function(deltaTime) end

---`Method Private Instance`
---@param triggeredObject Barotrauma.LevelObject
---@param trigger Barotrauma.LevelTrigger
---@param triggerer Barotrauma.Entity
_G['LevelObjectManager'].OnObjectTriggered = function(triggeredObject, trigger, triggerer) end

---`Method Private Instance`
---@overload fun(level:Barotrauma.Level, availablePrefabs:System.Collections.Generic.IList*1Barotrauma*LevelObjectPrefab|Barotrauma.LevelObjectPrefab[]):Barotrauma.LevelObjectPrefab
---@param caveParams Barotrauma.CaveGenerationParams
---@param availablePrefabs System.Collections.Generic.IList*1Barotrauma*LevelObjectPrefab|Barotrauma.LevelObjectPrefab[]
---@param requireCaveSpecificOverride System.Boolean|boolean
---@return Barotrauma.LevelObjectPrefab
_G['LevelObjectManager'].GetRandomPrefab = function(caveParams, availablePrefabs, requireCaveSpecificOverride) end

---`Method Public Instance Virtual`
_G['LevelObjectManager'].Remove = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['LevelObjectManager'].ServerEventWrite = function(msg, c, extraData) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.LevelObjectManager
---@return Barotrauma.LevelObjectManager
_G['LevelObjectManager'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.LevelObjectManager
---@return Barotrauma.LevelObjectManager
_G['LevelObjectManager'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.LevelObjectManager
---@return Barotrauma.LevelObjectManager
_G['LevelObjectManager'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.LevelObjectManager
---@return Barotrauma.LevelObjectManager
_G['LevelObjectManager'].__new = function() end

