---@meta
---@class Barotrauma.Sounds.BandpassFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['BandpassFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['BandpassFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.BandpassFilter
_G['Sounds']['BandpassFilter'] = function(sampleRate, frequency) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@return Barotrauma.Sounds.BandpassFilter
_G['Sounds']['BandpassFilter'].__new = function(sampleRate, frequency) end

