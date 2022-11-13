---@meta
---@class Barotrauma.Rand : System.Object
---`Field Private Static`
---@field localRandom System.Random
---`Field Private Static`
---@field syncedRandom System.Collections.Generic.Dictionary*1Barotrauma*Rand*RandSync*1System*Random|{[Barotrauma.Rand.RandSync]:System.Random}
---`Field Public Static`
---@field ThreadId System.Int32|integer
_G['Rand'] = {}

---`Method Public Static`
---@param randSync Barotrauma.Rand.RandSync
---@return System.Random
_G['Rand'].GetRNG = function(randSync) end

---`Method Public Static`
---@param seed System.Int32|integer
_G['Rand'].SetLocalRandom = function(seed) end

---`Method Public Static`
---@param seed System.Int32|integer
_G['Rand'].SetSyncedSeed = function(seed) end

---`Method Private Static`
---@param sync Barotrauma.Rand.RandSync
_G['Rand'].CheckRandThreadSafety = function(sync) end

---`Method Public Static`
---@overload fun(minimum:System.Single|number, maximum:System.Single|number, sync?:Barotrauma.Rand.RandSync):System.Single|number
---@overload fun(minimum:System.Double|number, maximum:System.Double|number, sync?:Barotrauma.Rand.RandSync):System.Double|number
---@param minimum System.Int32|integer
---@param maximum System.Int32|integer
---@param sync? Barotrauma.Rand.RandSync
---@return System.Int32|integer
_G['Rand'].Range = function(minimum, maximum, sync) end

---`Method Public Static`
---@param max System.Int32|integer
---@param sync? Barotrauma.Rand.RandSync
---@return System.Int32|integer
_G['Rand'].Int = function(max, sync) end

---`Method Public Static`
---@overload fun(length:System.Single|number, sync?:Barotrauma.Rand.RandSync):Microsoft.Xna.Framework.Vector2
---@param length System.Double|number
---@param sync? Barotrauma.Rand.RandSync
---@return Voronoi2.DoubleVector2
_G['Rand'].Vector = function(length, sync) end

---`Method Public Static`
---@param sync? Barotrauma.Rand.RandSync
---@return System.Single|number
_G['Rand'].Value = function(sync) end

---`Method Public Static`
---@param randomAlpha? System.Boolean|boolean
---@param sync? Barotrauma.Rand.RandSync
---@return Microsoft.Xna.Framework.Color
_G['Rand'].Color = function(randomAlpha, sync) end

---`Constructor Private Static`
---@return Barotrauma.Rand
_G['Rand'] = function() end

---`Constructor Private Static`
---@return Barotrauma.Rand
_G['Rand'].__new = function() end

