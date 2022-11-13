---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab : System.Object, {[Barotrauma.Identifier]:Barotrauma.TalentPrefab}, {[System.String|string]:Barotrauma.TalentPrefab}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*TalentPrefab*1System*Boolean|(fun(arg1:Barotrauma.TalentPrefab, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*TalentPrefab|(fun(obj:Barotrauma.TalentPrefab))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentPrefab)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*TalentPrefab|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentPrefab)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*TalentPrefab'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.TalentPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentPrefab'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*TalentPrefab'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.TalentPrefab-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.TalentPrefab-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentPrefab'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*TalentPrefab|(fun(obj:Barotrauma.TalentPrefab):System.Boolean|boolean)
---@return Barotrauma.TalentPrefab
_G['PrefabCollection*1Barotrauma*TalentPrefab'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentPrefab'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentPrefab
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentPrefab'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentPrefab
_G['PrefabCollection*1Barotrauma*TalentPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentPrefab'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentPrefab'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentPrefab'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*TalentPrefab'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*TalentPrefab
_G['PrefabCollection*1Barotrauma*TalentPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*TalentPrefab*1System*Boolean|(fun(arg1:Barotrauma.TalentPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*TalentPrefab|(fun(obj:Barotrauma.TalentPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
_G['PrefabCollection*1Barotrauma*TalentPrefab'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
---@overload fun(onAdd:System.Action*1Barotrauma*TalentPrefab*1System*Boolean|(fun(arg1:Barotrauma.TalentPrefab, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*TalentPrefab|(fun(obj:Barotrauma.TalentPrefab)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*TalentPrefab
_G['PrefabCollection*1Barotrauma*TalentPrefab'].__new = function(onSort) end

