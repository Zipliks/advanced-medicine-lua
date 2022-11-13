---@meta
---@class Barotrauma.TraitorManager : System.Object
---`Field Public Instance`
---@field Missions System.Collections.Generic.Dictionary*1Barotrauma*CharacterTeamType*1Barotrauma*Traitor*TraitorMission|{[Barotrauma.CharacterTeamType]:Barotrauma.Traitor.TraitorMission}
---`Field Private Instance`
---@field startCountdown System.Single|number
---`Field Private Instance`
---@field server Barotrauma.Networking.GameServer
---`Field Public Static`
---@field Random System.Random
---`Getter Public Instance`
---@field Traitors System.Collections.Generic.IEnumerable*1Barotrauma*Traitor|(fun():Barotrauma.Traitor)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShouldEndRound System.Boolean|boolean
_G['TraitorManager'] = {}

---`Method Public Static`
---@param n System.Int32|integer
---@return System.Int32|integer
_G['TraitorManager'].RandomInt = function(n) end

---`Method Public Static`
---@return System.Double|number
_G['TraitorManager'].RandomDouble = function() end

---`Method Public Instance`
---@param team Barotrauma.CharacterTeamType
---@return System.String|string
_G['TraitorManager'].GetCodeWords = function(team) end

---`Method Public Instance`
---@param team Barotrauma.CharacterTeamType
---@return System.String|string
_G['TraitorManager'].GetCodeResponse = function(team) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['TraitorManager'].IsTraitor = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.String|string
_G['TraitorManager'].GetTraitorRole = function(character) end

---`Method Public Instance`
---@param server Barotrauma.Networking.GameServer
_G['TraitorManager'].Start = function(server) end

---`Method Public Instance`
_G['TraitorManager'].SkipStartDelay = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['TraitorManager'].Update = function(deltaTime) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
_G['TraitorManager'].GetEndResults = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.TraitorManager
---@return Barotrauma.TraitorManager
_G['TraitorManager'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.TraitorManager
---@return Barotrauma.TraitorManager
_G['TraitorManager'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.TraitorManager
---@return Barotrauma.TraitorManager
_G['TraitorManager'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.TraitorManager
---@return Barotrauma.TraitorManager
_G['TraitorManager'].__new = function() end

