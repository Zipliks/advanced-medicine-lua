---@meta
---@class Barotrauma.HumanWalkParams : Barotrauma.HumanGroundedParams
_G['HumanWalkParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.HumanWalkParams
_G['HumanWalkParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.HumanWalkParams
_G['HumanWalkParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['HumanWalkParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanWalkParams
_G['HumanWalkParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanWalkParams
_G['HumanWalkParams'].__new = function() end

