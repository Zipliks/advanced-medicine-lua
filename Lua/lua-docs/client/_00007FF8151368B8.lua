---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*DamageSound : System.Object, {[Barotrauma.Identifier]:Barotrauma.DamageSound}, {[System.String|string]:Barotrauma.DamageSound}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*DamageSound*1System*Boolean|(fun(arg1:Barotrauma.DamageSound, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*DamageSound|(fun(obj:Barotrauma.DamageSound))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*DamageSound|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*DamageSound)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*DamageSound|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*DamageSound)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*DamageSound'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.DamageSound
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*DamageSound'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*DamageSound'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.DamageSound-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.DamageSound-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*DamageSound'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*DamageSound|(fun(obj:Barotrauma.DamageSound):System.Boolean|boolean)
---@return Barotrauma.DamageSound
_G['PrefabCollection*1Barotrauma*DamageSound'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*DamageSound'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.DamageSound
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*DamageSound'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.DamageSound
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*DamageSound'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.DamageSound
_G['PrefabCollection*1Barotrauma*DamageSound'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*DamageSound'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*DamageSound'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*DamageSound'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*DamageSound'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*DamageSound
_G['PrefabCollection*1Barotrauma*DamageSound'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*DamageSound
---@overload fun(onAdd:System.Action*1Barotrauma*DamageSound*1System*Boolean|(fun(arg1:Barotrauma.DamageSound, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*DamageSound|(fun(obj:Barotrauma.DamageSound)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*DamageSound
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*DamageSound
_G['PrefabCollection*1Barotrauma*DamageSound'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*DamageSound
---@overload fun(onAdd:System.Action*1Barotrauma*DamageSound*1System*Boolean|(fun(arg1:Barotrauma.DamageSound, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*DamageSound|(fun(obj:Barotrauma.DamageSound)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*DamageSound
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*DamageSound
_G['PrefabCollection*1Barotrauma*DamageSound'].__new = function(onSort) end

