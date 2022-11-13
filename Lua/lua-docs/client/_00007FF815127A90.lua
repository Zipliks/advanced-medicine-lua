---@meta
---@class Barotrauma.CoreEntityPrefab : Barotrauma.MapEntityPrefab
---`Field Private Instance`
---@field constructor System.Reflection.ConstructorInfo
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*CoreEntityPrefab|(fun():Barotrauma.CoreEntityPrefab)
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field HullPrefab Barotrauma.CoreEntityPrefab
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field GapPrefab Barotrauma.CoreEntityPrefab
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field WayPointPrefab Barotrauma.CoreEntityPrefab
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field SpawnPointPrefab Barotrauma.CoreEntityPrefab
---`Getter Public Instance Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance Virtual`
---@field OriginalName System.String|string
---`Getter Public Instance Virtual`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---@field Tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field AllowedLinks System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field Category Barotrauma.MapEntityCategory
---`Getter Public Instance Virtual`
---@field Aliases System.Collections.Immutable.ImmutableHashSet*1System*String|System.String|string[]
_G['CoreEntityPrefab'] = {}

---`Method Public Static`
_G['CoreEntityPrefab'].InitCorePrefabs = function() end

---`Method NonPublic Instance Virtual`
---@param rect Microsoft.Xna.Framework.Rectangle
_G['CoreEntityPrefab'].CreateInstance = function(rect) end

---`Method Public Instance Virtual`
_G['CoreEntityPrefab'].Dispose = function() end

---`Constructor Private Instance`
---@overload fun(identifier:Barotrauma.Identifier, constructor:System.Reflection.ConstructorInfo, resizeHorizontal?:System.Boolean|boolean, resizeVertical?:System.Boolean|boolean, linkable?:System.Boolean|boolean, allowedLinks?:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), aliases?:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):Barotrauma.CoreEntityPrefab
---@return Barotrauma.CoreEntityPrefab
_G['CoreEntityPrefab'] = function() end

---`Constructor Private Instance`
---@overload fun(identifier:Barotrauma.Identifier, constructor:System.Reflection.ConstructorInfo, resizeHorizontal?:System.Boolean|boolean, resizeVertical?:System.Boolean|boolean, linkable?:System.Boolean|boolean, allowedLinks?:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), aliases?:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):Barotrauma.CoreEntityPrefab
---@return Barotrauma.CoreEntityPrefab
_G['CoreEntityPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, constructor:System.Reflection.ConstructorInfo, resizeHorizontal?:System.Boolean|boolean, resizeVertical?:System.Boolean|boolean, linkable?:System.Boolean|boolean, allowedLinks?:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), aliases?:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):Barotrauma.CoreEntityPrefab
---@return Barotrauma.CoreEntityPrefab
_G['CoreEntityPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, constructor:System.Reflection.ConstructorInfo, resizeHorizontal?:System.Boolean|boolean, resizeVertical?:System.Boolean|boolean, linkable?:System.Boolean|boolean, allowedLinks?:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), aliases?:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)):Barotrauma.CoreEntityPrefab
---@return Barotrauma.CoreEntityPrefab
_G['CoreEntityPrefab'].__new = function() end

