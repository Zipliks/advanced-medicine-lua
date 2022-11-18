---@meta
---@class Barotrauma.RoundSound : System.Object
---`Field Public Instance`
---@field Sound Barotrauma.Sounds.Sound
---`Field Public Instance`
---@field Volume System.Single|number
---`Field Public Instance`
---@field Range System.Single|number
---`Field Public Instance`
---@field FrequencyMultiplierRange Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Stream System.Boolean|boolean
---`Field Public Instance`
---@field IgnoreMuffling System.Boolean|boolean
---`Field Public Instance`
---@field Filename System.String|string
---`Field Private Static`
---@field roundSounds System.Collections.Generic.List*1Barotrauma*RoundSound|Barotrauma.RoundSound[]
_G['RoundSound'] = {}

---`Method Public Instance`
---@return System.Single|number
_G['RoundSound'].GetRandomFrequencyMultiplier = function() end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param stream? System.Boolean|boolean
---@return Barotrauma.RoundSound
_G['RoundSound'].Load = function(element, stream) end

---`Method Public Static`
---@param roundSound Barotrauma.RoundSound
_G['RoundSound'].Reload = function(roundSound) end

---`Method Private Static`
---@param roundSound Barotrauma.RoundSound
_G['RoundSound'].Remove = function(roundSound) end

---`Method Public Static`
_G['RoundSound'].RemoveAllRoundSounds = function() end

---`Constructor Private Instance`
---@overload fun(element:Barotrauma.ContentXElement, sound:Barotrauma.Sounds.Sound):Barotrauma.RoundSound
---@return Barotrauma.RoundSound
_G['RoundSound'] = function() end

---`Constructor Private Instance`
---@overload fun(element:Barotrauma.ContentXElement, sound:Barotrauma.Sounds.Sound):Barotrauma.RoundSound
---@return Barotrauma.RoundSound
_G['RoundSound'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, sound:Barotrauma.Sounds.Sound):Barotrauma.RoundSound
---@return Barotrauma.RoundSound
_G['RoundSound'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, sound:Barotrauma.Sounds.Sound):Barotrauma.RoundSound
---@return Barotrauma.RoundSound
_G['RoundSound'].__new = function() end

