---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.GUIPrefab}, {[System.String|string]:Barotrauma.GUIPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*GUIPrefab*1System*Boolean|(fun(arg1:Barotrauma.GUIPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*GUIPrefab|(fun(obj:Barotrauma.GUIPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUIPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUIPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*GUIPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUIPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*GUIPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.GUIPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUIPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*GUIPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.GUIPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.GUIPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUIPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*GUIPrefab|(fun(obj:Barotrauma.GUIPrefab):System.Boolean|boolean)
---@return Barotrauma.GUIPrefab
_G['PrefabCollection*1Barotrauma*GUIPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUIPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.GUIPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUIPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.GUIPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUIPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.GUIPrefab
_G['PrefabCollection*1Barotrauma*GUIPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUIPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUIPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUIPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*GUIPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*GUIPrefab
_G['PrefabCollection*1Barotrauma*GUIPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*GUIPrefab*1System*Boolean|(fun(arg1:Barotrauma.GUIPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*GUIPrefab|(fun(obj:Barotrauma.GUIPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
_G['PrefabCollection*1Barotrauma*GUIPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*GUIPrefab*1System*Boolean|(fun(arg1:Barotrauma.GUIPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*GUIPrefab|(fun(obj:Barotrauma.GUIPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*GUIPrefab
_G['PrefabCollection*1Barotrauma*GUIPrefab'].__new = function(onSort) end

