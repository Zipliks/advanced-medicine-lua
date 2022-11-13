---@meta
---@class Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab : System.Object
---`Field Private Instance`
---@field rwl System.Threading.ReaderWriterLockSlim
---`Field Private Instance`
---@field basePrefabInternal Barotrauma.SoundPrefab
---`Field Private Instance`
---@field overrides System.Collections.Generic.List*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Getter Public Instance`
---@field BasePrefab Barotrauma.SoundPrefab
---`Getter Public Instance`
---@field ActivePrefab Barotrauma.SoundPrefab
---`Getter Public Instance`
---@field IsEmpty System.Boolean|boolean
---`Getter Private Instance`
---@field activePrefabInternal Barotrauma.SoundPrefab
---`Getter Private Instance`
---@field isEmptyInternal System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'] = {}

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].Add = function(prefab, isOverride) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].RemoveIfContains = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].Remove = function(prefab) end

---`Method Public Instance`
---@param file Barotrauma.ContentFile
---@param callback? System.Action*1Barotrauma*SoundPrefab|(fun(obj:Barotrauma.SoundPrefab))
_G['PrefabSelector*1Barotrauma*SoundPrefab'].RemoveByFile = function(file, callback) end

---`Method Public Instance`
_G['PrefabSelector*1Barotrauma*SoundPrefab'].Sort = function() end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].Contains = function(prefab) end

---`Method Public Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].IsOverride = function(prefab) end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
---@param isOverride System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].AddInternal = function(prefab, isOverride) end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].RemoveIfContainsInternal = function(prefab) end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].RemoveInternal = function(prefab) end

---`Method Private Instance`
_G['PrefabSelector*1Barotrauma*SoundPrefab'].SortInternal = function() end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].ContainsInternal = function(prefab) end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Int32|integer
_G['PrefabSelector*1Barotrauma*SoundPrefab'].IndexOfInternal = function(prefab) end

---`Method Private Instance`
---@param prefab Barotrauma.SoundPrefab
---@return System.Boolean|boolean
_G['PrefabSelector*1Barotrauma*SoundPrefab'].IsOverrideInternal = function(prefab) end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].GetEnumerator = function() end

---`Constructor Public Instance`
---@return Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab
_G['PrefabSelector*1Barotrauma*SoundPrefab'].__new = function() end

