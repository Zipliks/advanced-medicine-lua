---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*JobPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.JobPrefab}, {[System.String|string]:Barotrauma.JobPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*JobPrefab*1System*Boolean|(fun(arg1:Barotrauma.JobPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*JobPrefab|(fun(obj:Barotrauma.JobPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*JobPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*JobPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*JobPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*JobPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*JobPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.JobPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*JobPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*JobPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.JobPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.JobPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*JobPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*JobPrefab|(fun(obj:Barotrauma.JobPrefab):System.Boolean|boolean)
---@return Barotrauma.JobPrefab
_G['PrefabCollection*1Barotrauma*JobPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*JobPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.JobPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*JobPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.JobPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*JobPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.JobPrefab
_G['PrefabCollection*1Barotrauma*JobPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*JobPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*JobPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*JobPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*JobPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*JobPrefab
_G['PrefabCollection*1Barotrauma*JobPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*JobPrefab*1System*Boolean|(fun(arg1:Barotrauma.JobPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*JobPrefab|(fun(obj:Barotrauma.JobPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
_G['PrefabCollection*1Barotrauma*JobPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*JobPrefab*1System*Boolean|(fun(arg1:Barotrauma.JobPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*JobPrefab|(fun(obj:Barotrauma.JobPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*JobPrefab
_G['PrefabCollection*1Barotrauma*JobPrefab'].__new = function(onSort) end

