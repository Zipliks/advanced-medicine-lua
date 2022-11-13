---@meta
---@class Barotrauma.FishWalkParams : Barotrauma.FishGroundedParams
---`Field NonPublic Static`
---@field Empty Barotrauma.FishWalkParams
_G['FishWalkParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['FishWalkParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.FishWalkParams
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.FishWalkParams
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.FishWalkParams
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.FishWalkParams
---@return Barotrauma.FishWalkParams
_G['FishWalkParams'].__new = function() end

