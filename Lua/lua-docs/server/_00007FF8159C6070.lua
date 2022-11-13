---@meta
---@class Barotrauma.Traitor : System.Object
---`Field Public Instance`
---@field Character Barotrauma.Character
---`Getter Public Instance`
---@field Role System.String|string
---`Getter Public Instance`
---@field Mission Barotrauma.Traitor.TraitorMission
---`Getter Public Instance`
---@field CurrentObjective Barotrauma.Traitor.Objective
_G['Traitor'] = {}

---`Method Public Instance`
---@param server Barotrauma.Networking.GameServer
---@param codeWords System.String|string
---@param codeResponse System.String|string
---@param messageSender Barotrauma.Traitor.MessageSender|(fun(message:System.String|string))
_G['Traitor'].Greet = function(server, codeWords, codeResponse, messageSender) end

---`Method Public Instance`
---@param serverText System.String|string
---@param iconIdentifier Barotrauma.Identifier
_G['Traitor'].SendChatMessage = function(serverText, iconIdentifier) end

---`Method Public Instance`
---@param serverText System.String|string
---@param iconIdentifier Barotrauma.Identifier
_G['Traitor'].SendChatMessageBox = function(serverText, iconIdentifier) end

---`Method Public Instance`
---@param objectiveText System.String|string
---@param iconIdentifier Barotrauma.Identifier
_G['Traitor'].UpdateCurrentObjective = function(objectiveText, iconIdentifier) end

---`Constructor Public Instance`
---@param mission Barotrauma.Traitor.TraitorMission
---@param role System.String|string
---@param character Barotrauma.Character
---@return Barotrauma.Traitor
_G['Traitor'] = function(mission, role, character) end

---`Constructor Public Instance`
---@param mission Barotrauma.Traitor.TraitorMission
---@param role System.String|string
---@param character Barotrauma.Character
---@return Barotrauma.Traitor
_G['Traitor'].__new = function(mission, role, character) end

