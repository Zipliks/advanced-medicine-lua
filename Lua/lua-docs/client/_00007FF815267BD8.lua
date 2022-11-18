---@meta
---@class Barotrauma.Sounds.HighpassFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['HighpassFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['HighpassFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.HighpassFilter
_G['Sounds']['HighpassFilter'] = function(sampleRate, frequency) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.HighpassFilter
_G['Sounds']['HighpassFilter'].__new = function(sampleRate, frequency) end

