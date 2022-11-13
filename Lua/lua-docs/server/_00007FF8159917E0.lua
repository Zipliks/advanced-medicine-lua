---@meta
---@class Barotrauma.HumanRunParams : Barotrauma.HumanGroundedParams
_G['HumanRunParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.HumanRunParams
_G['HumanRunParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.HumanRunParams
_G['HumanRunParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['HumanRunParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanRunParams
_G['HumanRunParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanRunParams
_G['HumanRunParams'].__new = function() end

