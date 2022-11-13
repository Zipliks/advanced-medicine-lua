---@meta
---@class Barotrauma.Sounds.SoundBuffers : System.Object
---`Field Private Instance`
---@field sound Barotrauma.Sounds.Sound
---`Field Private Static`
---@field bufferPool System.Collections.Generic.HashSet*1System*UInt32|System.UInt32|integer[]
---`Field Public Static`
---@field MaxBuffers System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field BuffersGenerated System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AlBuffer System.UInt32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AlMuffledBuffer System.UInt32|integer
_G['SoundBuffers'] = {}

---`Method Public Instance Virtual`
_G['SoundBuffers'].Dispose = function() end

---`Method Public Static`
_G['SoundBuffers'].ClearPool = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['SoundBuffers'].RequestAlBuffers = function() end

---`Constructor Public Instance`
---@overload fun(sound:Barotrauma.Sounds.Sound):Barotrauma.Sounds.SoundBuffers
---@return Barotrauma.Sounds.SoundBuffers
_G['SoundBuffers'] = function() end

---`Constructor Public Instance`
---@overload fun(sound:Barotrauma.Sounds.Sound):Barotrauma.Sounds.SoundBuffers
---@return Barotrauma.Sounds.SoundBuffers
_G['SoundBuffers'].__new = function() end

---`Constructor Private Static`
---@overload fun(sound:Barotrauma.Sounds.Sound):Barotrauma.Sounds.SoundBuffers
---@return Barotrauma.Sounds.SoundBuffers
_G['SoundBuffers'] = function() end

---`Constructor Private Static`
---@overload fun(sound:Barotrauma.Sounds.Sound):Barotrauma.Sounds.SoundBuffers
---@return Barotrauma.Sounds.SoundBuffers
_G['SoundBuffers'].__new = function() end

