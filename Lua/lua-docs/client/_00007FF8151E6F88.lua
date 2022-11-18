---@meta
---@class Barotrauma.HumanSwimSlowParams : Barotrauma.HumanSwimParams
_G['HumanSwimSlowParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.HumanSwimSlowParams
_G['HumanSwimSlowParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.HumanSwimSlowParams
_G['HumanSwimSlowParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['HumanSwimSlowParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanSwimSlowParams
_G['HumanSwimSlowParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanSwimSlowParams
_G['HumanSwimSlowParams'].__new = function() end

