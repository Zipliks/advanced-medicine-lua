---@meta
---@class Barotrauma.HumanCrouchParams : Barotrauma.HumanGroundedParams
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MoveDownAmountWhenStationary System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExtraHeadAngleWhenStationary System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExtraTorsoAngleWhenStationary System.Single|number
_G['HumanCrouchParams'] = {}

---`Method Public Static`
---@param character Barotrauma.Character
---@return Barotrauma.HumanCrouchParams
_G['HumanCrouchParams'].GetDefaultAnimParams = function(character) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param fileName? System.String|string
---@return Barotrauma.HumanCrouchParams
_G['HumanCrouchParams'].GetAnimParams = function(character, fileName) end

---`Method Public Instance Virtual`
_G['HumanCrouchParams'].StoreSnapshot = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanCrouchParams
_G['HumanCrouchParams'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HumanCrouchParams
_G['HumanCrouchParams'].__new = function() end

