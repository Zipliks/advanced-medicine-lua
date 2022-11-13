---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.ItemPrefab}, {[System.String|string]:Barotrauma.ItemPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*ItemPrefab*1System*Boolean|(fun(arg1:Barotrauma.ItemPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*ItemPrefab|(fun(obj:Barotrauma.ItemPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*ItemPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*ItemPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*ItemPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*ItemPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*ItemPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.ItemPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*ItemPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*ItemPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.ItemPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.ItemPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*ItemPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*ItemPrefab|(fun(obj:Barotrauma.ItemPrefab):System.Boolean|boolean)
---@return Barotrauma.ItemPrefab
_G['PrefabCollection*1Barotrauma*ItemPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*ItemPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.ItemPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*ItemPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.ItemPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*ItemPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.ItemPrefab
_G['PrefabCollection*1Barotrauma*ItemPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*ItemPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*ItemPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*ItemPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*ItemPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*ItemPrefab
_G['PrefabCollection*1Barotrauma*ItemPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*ItemPrefab*1System*Boolean|(fun(arg1:Barotrauma.ItemPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*ItemPrefab|(fun(obj:Barotrauma.ItemPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
_G['PrefabCollection*1Barotrauma*ItemPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*ItemPrefab*1System*Boolean|(fun(arg1:Barotrauma.ItemPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*ItemPrefab|(fun(obj:Barotrauma.ItemPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab
_G['PrefabCollection*1Barotrauma*ItemPrefab'].__new = function(onSort) end

