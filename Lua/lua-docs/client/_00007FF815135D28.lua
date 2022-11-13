---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.SoundPrefab}, {[System.String|string]:Barotrauma.SoundPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*SoundPrefab*1System*Boolean|(fun(arg1:Barotrauma.SoundPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*SoundPrefab|(fun(obj:Barotrauma.SoundPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*SoundPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*SoundPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*SoundPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*SoundPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*SoundPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*SoundPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*SoundPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.SoundPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.SoundPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*SoundPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*SoundPrefab|(fun(obj:Barotrauma.SoundPrefab):System.Boolean|boolean)
---@return Barotrauma.SoundPrefab
_G['PrefabCollection*1Barotrauma*SoundPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*SoundPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*SoundPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*SoundPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
_G['PrefabCollection*1Barotrauma*SoundPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*SoundPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*SoundPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*SoundPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*SoundPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*SoundPrefab
_G['PrefabCollection*1Barotrauma*SoundPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*SoundPrefab*1System*Boolean|(fun(arg1:Barotrauma.SoundPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*SoundPrefab|(fun(obj:Barotrauma.SoundPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
_G['PrefabCollection*1Barotrauma*SoundPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*SoundPrefab*1System*Boolean|(fun(arg1:Barotrauma.SoundPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*SoundPrefab|(fun(obj:Barotrauma.SoundPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab
_G['PrefabCollection*1Barotrauma*SoundPrefab'].__new = function(onSort) end

