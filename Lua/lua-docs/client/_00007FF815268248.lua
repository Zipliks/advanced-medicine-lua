---@meta
---@class Barotrauma.Sounds.PeakFilter : Barotrauma.Sounds.BiQuad
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BandWidth System.Double|number
_G['Sounds']['PeakFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['PeakFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param bandWidth System.Double|number
---@param peakGainDB System.Double|number
---@return Barotrauma.Sounds.PeakFilter
_G['Sounds']['PeakFilter'] = function(sampleRate, frequency, bandWidth, peakGainDB) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param bandWidth System.Double|number
---@param peakGainDB System.Double|number
---@return Barotrauma.Sounds.PeakFilter
_G['Sounds']['PeakFilter'].__new = function(sampleRate, frequency, bandWidth, peakGainDB) end

