---@meta
---@class Barotrauma.MapEntity : Barotrauma.Entity
---`Field Public Instance`
---@field Prefab Barotrauma.MapEntityPrefab
---`Field NonPublic Instance`
---@field linkedToID System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field Public Instance`
---@field unresolvedLinkedToID System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field NonPublic Instance`
---@field Upgrades System.Collections.Generic.List*1Barotrauma*Upgrade|Barotrauma.Upgrade[]
---`Field Public Instance`
---@field DisallowedUpgradeSet System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field linkedTo System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field NonPublic Instance`
---@field flippedX System.Boolean|boolean
---`Field NonPublic Instance`
---@field flippedY System.Boolean|boolean
---`Field Public Instance`
---@field ShouldBeSaved System.Boolean|boolean
---`Field NonPublic Instance`
---@field rect Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field ExternalHighlight System.Boolean|boolean
---`Field Private Instance`
---@field isHighlighted System.Boolean|boolean
---`Field Private Instance`
---@field _spriteOverrideDepth System.Single|number
---`Field Public Instance`
---@field OriginalModuleIndex System.Int32|integer
---`Field Public Instance`
---@field OriginalContainerIndex System.Int32|integer
---`Field Private Instance`
---@field mapLoadedCalled System.Boolean|boolean
---`Field Public Static`
---@field mapEntityList System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Public Static`
---@field MapEntityUpdateInterval System.Int32|integer
---`Field Public Static`
---@field GapUpdateInterval System.Int32|integer
---`Field Public Static`
---@field PoweredUpdateInterval System.Int32|integer
---`Field Private Static`
---@field mapEntityUpdateTick System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisallowedUpgrades System.String|string
---`Getter Public Instance`
---@field FlippedX System.Boolean|boolean
---`Getter Public Instance`
---@field FlippedY System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsHighlighted System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field WorldRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance Virtual`
---@field DrawBelowWater System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field DrawOverWater System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Linkable System.Boolean|boolean
---`Getter Public Instance`
---@field AllowedLinks System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---`Getter Public Instance`
---@field ResizeHorizontal System.Boolean|boolean
---`Getter Public Instance`
---@field ResizeVertical System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RectWidth System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RectHeight System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteDepthOverrideIsSet System.Boolean|boolean
---`Getter Public Instance`
---@field SpriteOverrideDepth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpriteDepth System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Scale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HiddenInGame System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SoundRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SightRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field RemoveIfLinkedOutpostDoorInUse System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Layer System.String|string
---`Getter Public Instance Virtual`
---@field Name System.String|string
_G['MapEntity'] = {}

---`Method Public Instance`
---@param entity Barotrauma.MapEntity
_G['MapEntity'].AddLinked = function(entity) end

---`Method NonPublic Instance`
---@param element System.Xml.Linq.XElement
---@param idRemap Barotrauma.IdRemap
_G['MapEntity'].ParseLinks = function(element, idRemap) end

---`Method Public Instance`
---@param childRemap Barotrauma.IdRemap
_G['MapEntity'].ResolveLinks = function(childRemap) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['MapEntity'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['MapEntity'].IsMouseOn = function(position) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['MapEntity'].HasUpgrade = function(identifier) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.Upgrade
_G['MapEntity'].GetUpgrade = function(identifier) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Barotrauma*Upgrade|Barotrauma.Upgrade[]
_G['MapEntity'].GetUpgrades = function() end

---`Method Public Instance`
---@param upgrade Barotrauma.Upgrade
---@param createNetworkEvent? System.Boolean|boolean
_G['MapEntity'].SetUpgrade = function(upgrade, createNetworkEvent) end

---`Method Public Instance Virtual`
---@param upgrade Barotrauma.Upgrade
---@param createNetworkEvent? System.Boolean|boolean
---@return System.Boolean|boolean
_G['MapEntity'].AddUpgrade = function(upgrade, createNetworkEvent) end

---`Method Public Instance Abstract Virtual`
---@return Barotrauma.MapEntity
_G['MapEntity'].Clone = function() end

---`Method Public Static`
---@param entitiesToClone System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@return System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['MapEntity'].Clone = function(entitiesToClone) end

---`Method NonPublic Instance`
_G['MapEntity'].InsertToList = function() end

---`Method Public Instance Virtual`
_G['MapEntity'].ShallowRemove = function() end

---`Method Public Instance Virtual`
_G['MapEntity'].Remove = function() end

---`Method Public Static`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['MapEntity'].UpdateAll = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['MapEntity'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['MapEntity'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['MapEntity'].FlipY = function(relativeToSub) end

---`Method Public Static`
---@param submarine Barotrauma.Submarine
---@param parentElement System.Xml.Linq.XElement
---@param filePath System.String|string
---@param idOffset System.Int32|integer
---@return System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['MapEntity'].LoadAll = function(submarine, parentElement, filePath, idOffset) end

---`Method Public Static`
---@param entities System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---@param updateHulls System.Boolean|boolean
_G['MapEntity'].MapLoaded = function(entities, updateHulls) end

---`Method Public Static`
---@param entities System.Collections.Generic.IEnumerable*1Barotrauma*MapEntity|(fun():Barotrauma.MapEntity)
_G['MapEntity'].InitializeLoadedLinks = function(entities) end

---`Method Public Instance Virtual`
_G['MapEntity'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['MapEntity'].Save = function(parentElement) end

---`Method Public Instance`
---@param e Barotrauma.MapEntity
_G['MapEntity'].RemoveLinked = function(e) end

---`Method Public Instance`
---@param list? System.Collections.Generic.HashSet*1Barotrauma*MapEntity*T|Barotrauma.MapEntity.T[]
---@param maxDepth? System.Nullable*1System*Int32|integer
---@param filter? System.Func*1Barotrauma*MapEntity*T*1System*Boolean|(fun(arg:Barotrauma.MapEntity.T):System.Boolean|boolean)
---@return System.Collections.Generic.HashSet*1Barotrauma*MapEntity*T|Barotrauma.MapEntity.T[]
_G['MapEntity'].GetLinkedEntities = function(list, maxDepth, filter) end

---`Method Private Static`
---@param mapEntity Barotrauma.MapEntity
---@param linkedTargets System.Collections.Generic.HashSet*1Barotrauma*MapEntity*T|Barotrauma.MapEntity.T[]
---@param depth System.Int32-ref
---@param maxDepth? System.Nullable*1System*Int32|integer
---@param filter? System.Func*1Barotrauma*MapEntity*T*1System*Boolean|(fun(arg:Barotrauma.MapEntity.T):System.Boolean|boolean)
_G['MapEntity'].GetLinkedEntitiesRecursive = function(mapEntity, linkedTargets, depth, maxDepth, filter) end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.MapEntityPrefab, submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.MapEntity
---@return Barotrauma.MapEntity
_G['MapEntity'] = function() end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.MapEntityPrefab, submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.MapEntity
---@return Barotrauma.MapEntity
_G['MapEntity'].__new = function() end

---`Constructor Private Static`
---@overload fun(prefab:Barotrauma.MapEntityPrefab, submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.MapEntity
---@return Barotrauma.MapEntity
_G['MapEntity'] = function() end

---`Constructor Private Static`
---@overload fun(prefab:Barotrauma.MapEntityPrefab, submarine:Barotrauma.Submarine, id:System.UInt16|integer):Barotrauma.MapEntity
---@return Barotrauma.MapEntity
_G['MapEntity'].__new = function() end

