---@meta
---@class Barotrauma.FishRunParams : Barotrauma.FishGroundedParams
---`Field NonPublic Static`
---@field Empty Barotrauma.FishRunParams
_G['FishRunParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.FishRunParams
_G['FishRunParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.FishRunParams
_G['FishRunParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['FishRunParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.FishRunParams
---@return Barotrauma.FishRunParams
_G['FishRunParams'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.FishRunParams
---@return Barotrauma.FishRunParams
_G['FishRunParams'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.FishRunParams
---@return Barotrauma.FishRunParams
_G['FishRunParams'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.FishRunParams
---@return Barotrauma.FishRunParams
_G['FishRunParams'].__new = function() end

