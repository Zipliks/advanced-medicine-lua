---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*GUISound : System.Object, {[Barotrauma.Identifier]:Barotrauma.GUISound}, {[System.String|string]:Barotrauma.GUISound}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*GUISound*1System*Boolean|(fun(arg1:Barotrauma.GUISound, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*GUISound|(fun(obj:Barotrauma.GUISound))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUISound|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUISound)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*GUISound|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*GUISound)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*GUISound'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.GUISound
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUISound'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*GUISound'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.GUISound-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.GUISound-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUISound'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*GUISound|(fun(obj:Barotrauma.GUISound):System.Boolean|boolean)
---@return Barotrauma.GUISound
_G['PrefabCollection*1Barotrauma*GUISound'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUISound'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.GUISound
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUISound'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.GUISound
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*GUISound'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.GUISound
_G['PrefabCollection*1Barotrauma*GUISound'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUISound'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUISound'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*GUISound'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*GUISound'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*GUISound
_G['PrefabCollection*1Barotrauma*GUISound'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*GUISound
---@overload fun(onAdd:System.Action*1Barotrauma*GUISound*1System*Boolean|(fun(arg1:Barotrauma.GUISound, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*GUISound|(fun(obj:Barotrauma.GUISound)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*GUISound
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*GUISound
_G['PrefabCollection*1Barotrauma*GUISound'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*GUISound
---@overload fun(onAdd:System.Action*1Barotrauma*GUISound*1System*Boolean|(fun(arg1:Barotrauma.GUISound, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*GUISound|(fun(obj:Barotrauma.GUISound)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*GUISound
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*GUISound
_G['PrefabCollection*1Barotrauma*GUISound'].__new = function(onSort) end

