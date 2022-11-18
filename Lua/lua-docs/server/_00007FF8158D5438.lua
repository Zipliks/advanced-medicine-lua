---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.OrderPrefab}, {[System.String|string]:Barotrauma.OrderPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*OrderPrefab*1System*Boolean|(fun(arg1:Barotrauma.OrderPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*OrderPrefab|(fun(obj:Barotrauma.OrderPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*OrderPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*OrderPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*OrderPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*OrderPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*OrderPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.OrderPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*OrderPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*OrderPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.OrderPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.OrderPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*OrderPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*OrderPrefab|(fun(obj:Barotrauma.OrderPrefab):System.Boolean|boolean)
---@return Barotrauma.OrderPrefab
_G['PrefabCollection*1Barotrauma*OrderPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*OrderPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.OrderPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*OrderPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.OrderPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*OrderPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.OrderPrefab
_G['PrefabCollection*1Barotrauma*OrderPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*OrderPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*OrderPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*OrderPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*OrderPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*OrderPrefab
_G['PrefabCollection*1Barotrauma*OrderPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*OrderPrefab*1System*Boolean|(fun(arg1:Barotrauma.OrderPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*OrderPrefab|(fun(obj:Barotrauma.OrderPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
_G['PrefabCollection*1Barotrauma*OrderPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*OrderPrefab*1System*Boolean|(fun(arg1:Barotrauma.OrderPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*OrderPrefab|(fun(obj:Barotrauma.OrderPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*OrderPrefab
_G['PrefabCollection*1Barotrauma*OrderPrefab'].__new = function(onSort) end

