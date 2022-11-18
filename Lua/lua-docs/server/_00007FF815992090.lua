---@meta
---@class Barotrauma.HumanSwimFastParams : Barotrauma.HumanSwimParams
_G['HumanSwimFastParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.HumanSwimFastParams
_G['HumanSwimFastParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.HumanSwimFastParams
_G['HumanSwimFastParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['HumanSwimFastParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanSwimFastParams
_G['HumanSwimFastParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanSwimFastParams
_G['HumanSwimFastParams'].__new = function() end

