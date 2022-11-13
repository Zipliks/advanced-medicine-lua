---@meta
---@class Barotrauma.Event : System.Object
---`Field Private Instance`
---@field Finished System.Action|(fun())
---`Field NonPublic Instance`
---@field isFinished System.Boolean|boolean
---`Field NonPublic Instance`
---@field prefab Barotrauma.EventPrefab
---`Field Public Instance`
---@field SpawnPosFilter System.Func*1Barotrauma*Level*InterestingPosition*1System*Boolean|(fun(arg:Barotrauma.Level.InterestingPosition):System.Boolean|boolean)
---`Getter Public Instance`
---@field Prefab Barotrauma.EventPrefab
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ParentSet Barotrauma.EventSet
---`Getter Public Instance`
---@field IsFinished System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field DebugDrawPos Microsoft.Xna.Framework.Vector2
_G['Event'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['Event'].ToString = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentFile|(fun():Barotrauma.ContentFile)
_G['Event'].GetFilesToPreload = function() end

---`Method Public Instance Virtual`
---@param parentSet? Barotrauma.EventSet
_G['Event'].Init = function(parentSet) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['Event'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
_G['Event'].Finish = function() end

---`Method Public Instance Virtual`
---@return System.Boolean|boolean
_G['Event'].LevelMeetsRequirements = function() end

---`Constructor Public Instance`
---@param prefab Barotrauma.EventPrefab
---@return Barotrauma.Event
_G['Event'] = function(prefab) end

---`Constructor Public Instance`
---@param prefab Barotrauma.EventPrefab
---@return Barotrauma.Event
_G['Event'].__new = function(prefab) end

