---@meta
---@class Barotrauma.EntitySpawner : Barotrauma.Entity
---`Field Private Instance`
---@field spawnQueue System.Collections.Generic.Queue*1Barotrauma*EntitySpawner*IEntitySpawnInfo|(fun():Barotrauma.EntitySpawner.IEntitySpawnInfo)
---`Field Private Instance`
---@field removeQueue System.Collections.Generic.Queue*1Barotrauma*Entity|(fun():Barotrauma.Entity)
_G['EntitySpawner'] = {}

---`Method Public Instance`
---@param spawnOrRemove Barotrauma.EntitySpawner.SpawnOrRemove
_G['EntitySpawner'].CreateNetworkEvent = function(spawnOrRemove) end

---`Method Public Instance Virtual`
---@param message Barotrauma.Networking.IWriteMessage
---@param client Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['EntitySpawner'].ServerEventWrite = function(message, client, extraData) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['EntitySpawner'].ToString = function() end

---`Method Public Instance`
---@overload fun(itemPrefab:Barotrauma.ItemPrefab, worldPosition:Microsoft.Xna.Framework.Vector2, condition?:System.Nullable*1System*Single|number, quality?:System.Nullable*1System*Int32|integer, onSpawned?:System.Action*1Barotrauma*Item|(fun(obj:Barotrauma.Item)))
---@overload fun(itemPrefab:Barotrauma.ItemPrefab, position:Microsoft.Xna.Framework.Vector2, sub:Barotrauma.Submarine, condition?:System.Nullable*1System*Single|number, quality?:System.Nullable*1System*Int32|integer, onSpawned?:System.Action*1Barotrauma*Item|(fun(obj:Barotrauma.Item)))
---@param itemPrefab Barotrauma.ItemPrefab
---@param inventory Barotrauma.Inventory
---@param condition? System.Nullable*1System*Single|number
---@param quality? System.Nullable*1System*Int32|integer
---@param onSpawned? System.Action*1Barotrauma*Item|(fun(obj:Barotrauma.Item))
---@param spawnIfInventoryFull? System.Boolean|boolean
---@param ignoreLimbSlots? System.Boolean|boolean
---@param slot? Barotrauma.InvSlotType
_G['EntitySpawner'].AddItemToSpawnQueue = function(itemPrefab, inventory, condition, quality, onSpawned, spawnIfInventoryFull, ignoreLimbSlots, slot) end

---`Method Public Instance`
---@overload fun(speciesName:Barotrauma.Identifier, worldPosition:Microsoft.Xna.Framework.Vector2, onSpawn?:System.Action*1Barotrauma*Character|(fun(obj:Barotrauma.Character)))
---@overload fun(speciesName:Barotrauma.Identifier, position:Microsoft.Xna.Framework.Vector2, sub:Barotrauma.Submarine, onSpawn?:System.Action*1Barotrauma*Character|(fun(obj:Barotrauma.Character)))
---@param speciesName Barotrauma.Identifier
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param characterInfo Barotrauma.CharacterInfo
---@param onSpawn? System.Action*1Barotrauma*Character|(fun(obj:Barotrauma.Character))
_G['EntitySpawner'].AddCharacterToSpawnQueue = function(speciesName, worldPosition, characterInfo, onSpawn) end

---`Method Public Instance`
---@param entity Barotrauma.Entity
_G['EntitySpawner'].AddEntityToRemoveQueue = function(entity) end

---`Method Public Instance`
---@param item Barotrauma.Item
_G['EntitySpawner'].AddItemToRemoveQueue = function(item) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*EntitySpawner*IEntitySpawnInfo|(fun(obj:Barotrauma.EntitySpawner.IEntitySpawnInfo):System.Boolean|boolean)
---@return System.Boolean|boolean
_G['EntitySpawner'].IsInSpawnQueue = function(predicate) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*EntitySpawner*IEntitySpawnInfo|(fun(obj:Barotrauma.EntitySpawner.IEntitySpawnInfo):System.Boolean|boolean)
---@return System.Int32|integer
_G['EntitySpawner'].CountSpawnQueue = function(predicate) end

---`Method Public Instance`
---@param entity Barotrauma.Entity
---@return System.Boolean|boolean
_G['EntitySpawner'].IsInRemoveQueue = function(entity) end

---`Method Public Instance`
---@param createNetworkEvents? System.Boolean|boolean
_G['EntitySpawner'].Update = function(createNetworkEvents) end

---`Method Private Instance`
---@param spawnOrRemove Barotrauma.EntitySpawner.SpawnOrRemove
_G['EntitySpawner'].CreateNetworkEventProjSpecific = function(spawnOrRemove) end

---`Method Public Instance`
_G['EntitySpawner'].Reset = function() end

---`Constructor Public Instance`
---@return Barotrauma.EntitySpawner
_G['EntitySpawner'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.EntitySpawner
_G['EntitySpawner'].__new = function() end

