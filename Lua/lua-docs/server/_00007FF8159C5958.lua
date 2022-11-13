---@meta
---@class Barotrauma.TraitorMissionResult : System.Object
---`Field Public Instance`
---@field EndMessage System.String|string
---`Field Public Instance`
---@field MissionIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field Success System.Boolean|boolean
---`Field Public Instance`
---@field Characters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
_G['TraitorMissionResult'] = {}

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['TraitorMissionResult'].ServerWrite = function(msg) end

---`Constructor Public Instance`
---@overload fun(mission:Barotrauma.Traitor.TraitorMission):Barotrauma.TraitorMissionResult
---@param identifier Barotrauma.Identifier
---@param globalEndMessage System.String|string
---@param isCompleted System.Boolean|boolean
---@param characters? Barotrauma.Character-arr|Barotrauma.Character[]
---@return Barotrauma.TraitorMissionResult
_G['TraitorMissionResult'] = function(identifier, globalEndMessage, isCompleted, characters) end

---`Constructor Public Instance`
---@overload fun(mission:Barotrauma.Traitor.TraitorMission):Barotrauma.TraitorMissionResult
---@param identifier Barotrauma.Identifier
---@param globalEndMessage System.String|string
---@param isCompleted System.Boolean|boolean
---@param characters? Barotrauma.Character-arr|Barotrauma.Character[]
---@return Barotrauma.TraitorMissionResult
_G['TraitorMissionResult'].__new = function(identifier, globalEndMessage, isCompleted, characters) end

