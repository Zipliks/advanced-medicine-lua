---@meta
---@class Barotrauma.FishSwimSlowParams : Barotrauma.FishSwimParams
_G['FishSwimSlowParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.FishSwimSlowParams
_G['FishSwimSlowParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.FishSwimSlowParams
_G['FishSwimSlowParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['FishSwimSlowParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.FishSwimSlowParams
_G['FishSwimSlowParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.FishSwimSlowParams
_G['FishSwimSlowParams'].__new = function() end

