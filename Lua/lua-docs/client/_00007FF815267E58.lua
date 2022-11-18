---@meta
---@class Barotrauma.Sounds.NotchFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['NotchFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['NotchFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.NotchFilter
_G['Sounds']['NotchFilter'] = function(sampleRate, frequency) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.NotchFilter
_G['Sounds']['NotchFilter'].__new = function(sampleRate, frequency) end

