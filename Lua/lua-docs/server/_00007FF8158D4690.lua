---@meta
---@class Barotrauma.PrefabCollection*1Barotrauma*TalentTree : System.Object, {[Barotrauma.Identifier]:Barotrauma.TalentTree}, {[System.String|string]:Barotrauma.TalentTree}
---`Field Private Instance`
---@field OnAdd System.Action*1Barotrauma*TalentTree*1System*Boolean|(fun(arg1:Barotrauma.TalentTree, arg2:System.Boolean|boolean))
---`Field Private Instance`
---@field OnRemove System.Action*1Barotrauma*TalentTree|(fun(obj:Barotrauma.TalentTree))
---`Field Private Instance`
---@field OnSort System.Action|(fun())
---`Field Private Instance`
---@field OnAddOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field OnRemoveOverrideFile System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))
---`Field Private Instance`
---@field prefabs System.Collections.Concurrent.ConcurrentDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentTree|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentTree)
---`Field Private Instance`
---@field overrideFiles System.Collections.Generic.HashSet*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Field Private Instance`
---@field topMostOverrideFile Barotrauma.ContentFile
---`Field Private Instance`
---@field implementsVariants System.Boolean|boolean
---`Getter Public Instance`
---@field AllPrefabs System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2Barotrauma*Identifier*2Barotrauma*PrefabSelector*3Barotrauma*TalentTree|(fun():System.Collections.Generic.KeyValuePair*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*TalentTree)
---`Getter Public Instance`
---@field Keys System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*TalentTree'] = {}

---`Method Private Instance`
---@param prefab Barotrauma.TalentTree
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentTree'].IsPrefabOverriddenByFile = function(prefab) end

---`Method Private Instance`
---@overload fun(prefabIdentifier:Barotrauma.Identifier)
---@param identifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['PrefabCollection*1Barotrauma*TalentTree'].HandleInheritance = function(identifiers) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, result:Barotrauma.TalentTree-ref):System.Boolean|boolean
---@param identifier System.String|string
---@param result Barotrauma.TalentTree-ref
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentTree'].TryGet = function(identifier, result) end

---`Method Public Instance`
---@param predicate System.Predicate*1Barotrauma*TalentTree|(fun(obj:Barotrauma.TalentTree):System.Boolean|boolean)
---@return Barotrauma.TalentTree
_G['PrefabCollection*1Barotrauma*TalentTree'].Find = function(predicate) end

---`Method Public Instance`
---@overload fun(identifier:Barotrauma.Identifier):System.Boolean|boolean
---@param k System.String|string
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentTree'].ContainsKey = function(k) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentTree
---@return System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentTree'].IsOverride = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentTree
---@param isOverride System.Boolean|boolean
_G['PrefabCollection*1Barotrauma*TalentTree'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.TalentTree
_G['PrefabCollection*1Barotrauma*TalentTree'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentTree'].RemoveByFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentTree'].AddOverrideFile = function(file) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
_G['PrefabCollection*1Barotrauma*TalentTree'].RemoveOverrideFile = function(file) end

---`Method Public Instance`
_G['PrefabCollection*1Barotrauma*TalentTree'].SortAll = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*TalentTree
_G['PrefabCollection*1Barotrauma*TalentTree'].GetEnumerator = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*TalentTree
---@overload fun(onAdd:System.Action*1Barotrauma*TalentTree*1System*Boolean|(fun(arg1:Barotrauma.TalentTree, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*TalentTree|(fun(obj:Barotrauma.TalentTree)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*TalentTree
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*TalentTree
_G['PrefabCollection*1Barotrauma*TalentTree'] = function(onSort) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.PrefabCollection*1Barotrauma*TalentTree
---@overload fun(onAdd:System.Action*1Barotrauma*TalentTree*1System*Boolean|(fun(arg1:Barotrauma.TalentTree, arg2:System.Boolean|boolean)), onRemove:System.Action*1Barotrauma*TalentTree|(fun(obj:Barotrauma.TalentTree)), onSort:System.Action|(fun()), onAddOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile)), onRemoveOverrideFile:System.Action*1Barotrauma*ContentFile|(fun(obj:Barotrauma.ContentFile))):Barotrauma.PrefabCollection*1Barotrauma*TalentTree
---@param onSort System.Action|(fun())
---@return Barotrauma.PrefabCollection*1Barotrauma*TalentTree
_G['PrefabCollection*1Barotrauma*TalentTree'].__new = function(onSort) end

