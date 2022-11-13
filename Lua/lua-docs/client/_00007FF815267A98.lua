---@meta
---@class Barotrauma.Sounds.LowpassFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['LowpassFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['LowpassFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.LowpassFilter
_G['Sounds']['LowpassFilter'] = function(sampleRate, frequency) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.LowpassFilter
_G['Sounds']['LowpassFilter'].__new = function(sampleRate, frequency) end

