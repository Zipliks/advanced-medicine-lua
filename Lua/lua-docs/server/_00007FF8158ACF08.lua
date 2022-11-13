---@meta
---@class Barotrauma.HireManager : System.Object
---`Field Public Instance`
---@field PendingHires System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Field Public Static`
---@field MaxAvailableCharacters System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvailableCharacters System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
_G['HireManager'] = {}

---`Method Public Instance`
---@param character Barotrauma.CharacterInfo
_G['HireManager'].RemoveCharacter = function(character) end

---`Method Public Instance`
---@param location Barotrauma.Location
---@param amount System.Int32|integer
_G['HireManager'].GenerateCharacters = function(location, amount) end

---`Method Public Instance`
_G['HireManager'].Remove = function() end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param newName System.String|string
_G['HireManager'].RenameCharacter = function(characterInfo, newName) end

---`Constructor Public Instance`
---@return Barotrauma.HireManager
_G['HireManager'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.HireManager
_G['HireManager'].__new = function() end

