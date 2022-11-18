---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.CharacterPrefab}, {[System.String|string]:Barotrauma.CharacterPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*CharacterPrefab*1System*Boolean|(fun(arg1:Barotrauma.CharacterPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*CharacterPrefab|(fun(obj:Barotrauma.CharacterPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*CharacterPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*CharacterPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*CharacterPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*CharacterPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*CharacterPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.CharacterPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.CharacterPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.CharacterPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*CharacterPrefab|(fun(obj:Barotrauma.CharacterPrefab):System.Boolean|boolean)
---@return Barotrauma.CharacterPrefab
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.CharacterPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.CharacterPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.CharacterPrefab
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*CharacterPrefab
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*CharacterPrefab*1System*Boolean|(fun(arg1:Barotrauma.CharacterPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*CharacterPrefab|(fun(obj:Barotrauma.CharacterPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
_G['PrefabCollection*1Barotrauma*CharacterPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*CharacterPrefab*1System*Boolean|(fun(arg1:Barotrauma.CharacterPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*CharacterPrefab|(fun(obj:Barotrauma.CharacterPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab
_G['PrefabCollection*1Barotrauma*CharacterPrefab'].__new = function(onSort) end

