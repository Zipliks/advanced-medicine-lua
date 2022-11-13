---@meta
---@class Barotrauma.Sounds.HighShelfFilter : Barotrauma.Sounds.BiQuad
_G['Sounds']['HighShelfFilter'] = {}

---`Method NonPublic Instance Virtual`
_G['Sounds']['HighShelfFilter'].CalculateBiQuadCoefficients = function() end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param gainDB System.Double|number
---@return Barotrauma.Sounds.HighShelfFilter
_G['Sounds']['HighShelfFilter'] = function(sampleRate, frequency, gainDB) end

---`Constructor Public Instance`
---@param sampleRate System.Int32|integer
---@param frequency System.Double|number
---@param gainDB System.Double|number
---@return Barotrauma.Sounds.HighShelfFilter
_G['Sounds']['HighShelfFilter'].__new = function(sampleRate, frequency, gainDB) end

