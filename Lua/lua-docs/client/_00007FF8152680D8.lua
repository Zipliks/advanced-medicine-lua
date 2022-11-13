---@meta
---@class Barotrauma.Sounds.LowShelfFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['LowShelfFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['LowShelfFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param gainDB System.Double|number
---@return Barotrauma.Sounds.LowShelfFilter
_G['Sounds']['LowShelfFilter'] = function(sampleRate, frequency, gainDB) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param gainDB System.Double|number
---@return Barotrauma.Sounds.LowShelfFilter
_G['Sounds']['LowShelfFilter'].__new = function(sampleRate, frequency, gainDB) end

