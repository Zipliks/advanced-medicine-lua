---@meta
---@class Barotrauma.Traitor.TraitorMission : System.Object
---`Field Private Instance`
---@field allObjectives System.Collections.Generic.List*1Barotrauma*Traitor*Objective|Barotrauma.Traitor.Objective[]
---`Field Private Instance`
---@field pendingObjectives System.Collections.Generic.List*1Barotrauma*Traitor*Objective|Barotrauma.Traitor.Objective[]
---`Field Private Instance`
---@field completedObjectives System.Collections.Generic.List*1Barotrauma*Traitor*Objective|Barotrauma.Traitor.Objective[]
---`Field Public Instance`
---@field Traitors System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Traitor|{[System.String|string]:Barotrauma.Traitor}
---`Field Public Instance`
---@field Roles System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Traitor*TraitorMission*RoleFilter|{[System.String|string]:Barotrauma.Traitor.TraitorMission.RoleFilter|(fun(character:Barotrauma.Character):System.Boolean|boolean)}
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Private Static`
---@field wordsTxt System.String|string
---`Getter Public Instance`
---@field IsCompleted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartText System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CodeWords System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CodeResponse System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageSuccessTextId System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageSuccessDeadTextId System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageSuccessDetainedTextId System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageFailureTextId System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageFailureDeadTextId System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalEndMessageFailureDetainedTextId System.String|string
---`Getter Public Instance Virtual`
---@field GlobalEndMessageKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field GlobalEndMessageValues System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance`
---@field GlobalEndMessage System.String|string
_G['Traitor']['TraitorMission'] = {}

---`Method Public Instance`
---@param traitor Barotrauma.Traitor
---@return Barotrauma.Traitor.Objective
_G['Traitor']['TraitorMission'].GetCurrentObjective = function(traitor) end

---`Method NonPublic Instance`
---@param server Barotrauma.Networking.GameServer
---@param team Barotrauma.CharacterTeamType
---@param traitorRoleFilter Barotrauma.Traitor.TraitorMission.RoleFilter|(fun(character:Barotrauma.Character):System.Boolean|boolean)
---@return System.Collections.Generic.List*1System*Tuple*2Barotrauma*Networking*Client*2Barotrauma*Character|System.Tuple*1Barotrauma*Networking*Client*1Barotrauma*Character[]
_G['Traitor']['TraitorMission'].FindTraitorCandidates = function(server, team, traitorRoleFilter) end

---`Method NonPublic Instance`
---@return System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
_G['Traitor']['TraitorMission'].FindCharacters = function() end

---`Method NonPublic Instance`
---@param server Barotrauma.Networking.GameServer
---@param traitorManager Barotrauma.TraitorManager
---@param team Barotrauma.CharacterTeamType
---@return System.Collections.Generic.List*1System*Tuple*2System*String*2System*Tuple*3Barotrauma*Networking*Client*3Barotrauma*Character|System.Tuple*1System*String*1System*Tuple*2Barotrauma*Networking*Client*2Barotrauma*Character[]
_G['Traitor']['TraitorMission'].AssignTraitors = function(server, traitorManager, team) end

---`Method Public Instance`
---@param server Barotrauma.Networking.GameServer
---@param traitorManager Barotrauma.TraitorManager
---@param team Barotrauma.CharacterTeamType
---@return System.Boolean|boolean
_G['Traitor']['TraitorMission'].CanBeStarted = function(server, traitorManager, team) end

---`Method Public Instance`
---@param server Barotrauma.Networking.GameServer
---@param traitorManager Barotrauma.TraitorManager
---@param team Barotrauma.CharacterTeamType
---@return System.Boolean|boolean
_G['Traitor']['TraitorMission'].Start = function(server, traitorManager, team) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param winHandler Barotrauma.Traitor.TraitorMission.TraitorWinHandler|(fun())
_G['Traitor']['TraitorMission'].Update = function(deltaTime, winHandler) end

---`Method Public Instance`
---@param traitor Barotrauma.Character
---@param filter Barotrauma.Traitor.TraitorMission.CharacterFilter|(fun(character:Barotrauma.Character):System.Boolean|boolean)
---@param count? System.Int32|integer
---@param percentage? System.Single|number
---@return System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
_G['Traitor']['TraitorMission'].FindKillTarget = function(traitor, filter, count, percentage) end

---`Method Public Instance`
---@param targets System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---@return System.String|string
_G['Traitor']['TraitorMission'].GetTargetNames = function(targets) end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, startText:System.String|string, globalEndMessageSuccessTextId:System.String|string, globalEndMessageSuccessDeadTextId:System.String|string, globalEndMessageSuccessDetainedTextId:System.String|string, globalEndMessageFailureTextId:System.String|string, globalEndMessageFailureDeadTextId:System.String|string, globalEndMessageFailureDetainedTextId:System.String|string, roles:System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2System*String*2Barotrauma*Traitor*TraitorMission*RoleFilter|(fun():System.Collections.Generic.KeyValuePair*1System*String*1Barotrauma*Traitor*TraitorMission*RoleFilter), objectives:System.Collections.Generic.ICollection*1Barotrauma*Traitor*Objective|(fun():Barotrauma.Traitor.Objective)):Barotrauma.Traitor.TraitorMission
---@return Barotrauma.Traitor.TraitorMission
_G['Traitor']['TraitorMission'] = function() end

---`Constructor Public Instance`
---@overload fun(identifier:Barotrauma.Identifier, startText:System.String|string, globalEndMessageSuccessTextId:System.String|string, globalEndMessageSuccessDeadTextId:System.String|string, globalEndMessageSuccessDetainedTextId:System.String|string, globalEndMessageFailureTextId:System.String|string, globalEndMessageFailureDeadTextId:System.String|string, globalEndMessageFailureDetainedTextId:System.String|string, roles:System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2System*String*2Barotrauma*Traitor*TraitorMission*RoleFilter|(fun():System.Collections.Generic.KeyValuePair*1System*String*1Barotrauma*Traitor*TraitorMission*RoleFilter), objectives:System.Collections.Generic.ICollection*1Barotrauma*Traitor*Objective|(fun():Barotrauma.Traitor.Objective)):Barotrauma.Traitor.TraitorMission
---@return Barotrauma.Traitor.TraitorMission
_G['Traitor']['TraitorMission'].__new = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, startText:System.String|string, globalEndMessageSuccessTextId:System.String|string, globalEndMessageSuccessDeadTextId:System.String|string, globalEndMessageSuccessDetainedTextId:System.String|string, globalEndMessageFailureTextId:System.String|string, globalEndMessageFailureDeadTextId:System.String|string, globalEndMessageFailureDetainedTextId:System.String|string, roles:System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2System*String*2Barotrauma*Traitor*TraitorMission*RoleFilter|(fun():System.Collections.Generic.KeyValuePair*1System*String*1Barotrauma*Traitor*TraitorMission*RoleFilter), objectives:System.Collections.Generic.ICollection*1Barotrauma*Traitor*Objective|(fun():Barotrauma.Traitor.Objective)):Barotrauma.Traitor.TraitorMission
---@return Barotrauma.Traitor.TraitorMission
_G['Traitor']['TraitorMission'] = function() end

---`Constructor Private Static`
---@overload fun(identifier:Barotrauma.Identifier, startText:System.String|string, globalEndMessageSuccessTextId:System.String|string, globalEndMessageSuccessDeadTextId:System.String|string, globalEndMessageSuccessDetainedTextId:System.String|string, globalEndMessageFailureTextId:System.String|string, globalEndMessageFailureDeadTextId:System.String|string, globalEndMessageFailureDetainedTextId:System.String|string, roles:System.Collections.Generic.IEnumerable*1System*Collections*Generic*KeyValuePair*2System*String*2Barotrauma*Traitor*TraitorMission*RoleFilter|(fun():System.Collections.Generic.KeyValuePair*1System*String*1Barotrauma*Traitor*TraitorMission*RoleFilter), objectives:System.Collections.Generic.ICollection*1Barotrauma*Traitor*Objective|(fun():Barotrauma.Traitor.Objective)):Barotrauma.Traitor.TraitorMission
---@return Barotrauma.Traitor.TraitorMission
_G['Traitor']['TraitorMission'].__new = function() end

