---@meta
---@class Barotrauma.Entity : System.Object
---`Field NonPublic Instance`
---@field aiTarget Barotrauma.AITarget
---`Field Public Instance`
---@field ID System.UInt16|integer
---`Field Private Instance`
---@field spawnTime System.Double|number
---`Field Public Instance`
---@field CreationStackTrace System.String|string
---`Field Public Instance`
---@field CreationIndex System.UInt64|integer
---`Field Private Static`
---@field dictionary System.Collections.Generic.Dictionary*1System*UInt16*1Barotrauma*Entity|{[System.UInt16|integer]:Barotrauma.Entity}
---`Field Public Static`
---@field Spawner Barotrauma.EntitySpawner
---`Field Private Static`
---@field creationCounter System.UInt64|integer
---`Field Private Static`
---@field creationCounterMutex System.Object
---`Field Public Static`
---@field NullEntityID System.UInt16|integer
---`Field Public Static`
---@field EntitySpawnerID System.UInt16|integer
---`Field Public Static`
---@field RespawnManagerID System.UInt16|integer
---`Field Public Static`
---@field DummyID System.UInt16|integer
---`Field Public Static`
---@field ReservedIDStart System.UInt16|integer
---`Field Public Static`
---@field MaxEntityCount System.UInt16|integer
---`Getter Public Static`
---@field EntityCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Removed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IdFreed System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field DrawPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field Submarine Barotrauma.Submarine
---`Getter Public Instance`
---@field AiTarget Barotrauma.AITarget
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InDetectable System.Boolean|boolean
---`Getter Public Instance`
---@field SpawnTime System.Double|number
---`Getter Public Instance`
---@field ErrorLine System.String|string
_G['Entity'] = {}

---`Method Public Static`
---@return System.Collections.Generic.IReadOnlyCollection*1Barotrauma*Entity|(fun():Barotrauma.Entity)
_G['Entity'].GetEntities = function() end

---`Method NonPublic Instance Virtual`
---@param id System.UInt16|integer
---@param submarine Barotrauma.Submarine
---@return System.UInt16|integer
_G['Entity'].DetermineID = function(id, submarine) end

---`Method Private Static`
---@param idOffset System.UInt16|integer
---@return System.UInt16|integer
_G['Entity'].FindFreeId = function(idOffset) end

---`Method Public Static`
---@param minBlockSize System.Int32|integer
---@return System.Int32|integer
_G['Entity'].FindFreeIdBlock = function(minBlockSize) end

---`Method Public Static`
---@param ID System.UInt16|integer
---@return Barotrauma.Entity
_G['Entity'].FindEntityByID = function(ID) end

---`Method Public Static`
_G['Entity'].RemoveAll = function() end

---`Method Public Instance`
_G['Entity'].FreeID = function() end

---`Method Public Instance Virtual`
_G['Entity'].Remove = function() end

---`Method Public Static`
---@param count System.Int32|integer
---@param filename System.String|string
_G['Entity'].DumpIds = function(count, filename) end

---`Constructor Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Entity
---@return Barotrauma.Entity
_G['Entity'] = function() end

---`Constructor Public Instance`
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Entity
---@return Barotrauma.Entity
_G['Entity'].__new = function() end

---`Constructor Private Static`
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Entity
---@return Barotrauma.Entity
_G['Entity'] = function() end

---`Constructor Private Static`
---@overload fun(submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.Entity
---@return Barotrauma.Entity
_G['Entity'].__new = function() end

