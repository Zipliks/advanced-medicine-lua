---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic : System.Object, {[Barotrauma.Identifier]:Barotrauma.BackgroundMusic}, {[System.String|string]:Barotrauma.BackgroundMusic}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*BackgroundMusic*1System*Boolean|(fun(arg1:Barotrauma.BackgroundMusic, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*BackgroundMusic|(fun(obj:Barotrauma.BackgroundMusic))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*BackgroundMusic|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*BackgroundMusic)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*BackgroundMusic|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*BackgroundMusic)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*BackgroundMusic'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.BackgroundMusic
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.BackgroundMusic-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.BackgroundMusic-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*BackgroundMusic|(fun(obj:Barotrauma.BackgroundMusic):System.Boolean|boolean)
---@return Barotrauma.BackgroundMusic
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.BackgroundMusic
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.BackgroundMusic
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.BackgroundMusic
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*BackgroundMusic
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
---@overload fun(onAdd:System.Action*1Barotrauma*BackgroundMusic*1System*Boolean|(fun(arg1:Barotrauma.BackgroundMusic, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*BackgroundMusic|(fun(obj:Barotrauma.BackgroundMusic)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
_G['PrefabCollection*1Barotrauma*BackgroundMusic'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
---@overload fun(onAdd:System.Action*1Barotrauma*BackgroundMusic*1System*Boolean|(fun(arg1:Barotrauma.BackgroundMusic, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*BackgroundMusic|(fun(obj:Barotrauma.BackgroundMusic)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*BackgroundMusic
_G['PrefabCollection*1Barotrauma*BackgroundMusic'].__new = function(onSort) end

