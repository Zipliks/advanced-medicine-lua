---@meta
---@class Barotrauma.TraitorMissionPrefab : System.Object
---`Field Public Instance`
---@field Roles System.Collections.Generic.Dictionary*1System*String*1Barotrauma*TraitorMissionPrefab*Role|{[System.String|string]:Barotrauma.TraitorMissionPrefab.Role}
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Public Instance`
---@field StartText System.String|string
---`Field Public Instance`
---@field EndMessageSuccessText System.String|string
---`Field Public Instance`
---@field EndMessageSuccessDeadText System.String|string
---`Field Public Instance`
---@field EndMessageSuccessDetainedText System.String|string
---`Field Public Instance`
---@field EndMessageFailureText System.String|string
---`Field Public Instance`
---@field EndMessageFailureDeadText System.String|string
---`Field Public Instance`
---@field EndMessageFailureDetainedText System.String|string
---`Field Public Instance`
---@field Objectives System.Collections.Generic.List*1Barotrauma*TraitorMissionPrefab*ObjectiveBase|Barotrauma.TraitorMissionPrefab.ObjectiveBase[]
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*TraitorMissionPrefab*TraitorMissionEntry|(fun():Barotrauma.TraitorMissionPrefab.TraitorMissionEntry)
_G['TraitorMissionPrefab'] = {}

---`Method Public Static`
---@return Barotrauma.TraitorMissionPrefab
_G['TraitorMissionPrefab'].RandomPrefab = function() end

---`Method Public Instance`
---@return Barotrauma.Traitor.TraitorMission
_G['TraitorMissionPrefab'].Instantiate = function() end

---`Method NonPublic Instance`
---@param goalRoot System.Xml.Linq.XElement
---@return Barotrauma.TraitorMissionPrefab.Goal
_G['TraitorMissionPrefab'].LoadGoal = function(goalRoot) end

---`Method NonPublic Instance`
---@param objectiveRoot System.Xml.Linq.XElement
---@param allRoles System.String-arr|System.String|string[]
---@return Barotrauma.TraitorMissionPrefab.Objective
_G['TraitorMissionPrefab'].LoadObjective = function(objectiveRoot, allRoles) end

---`Method NonPublic Instance`
---@param roleRoot System.Xml.Linq.XElement
---@return Barotrauma.TraitorMissionPrefab.Role
_G['TraitorMissionPrefab'].LoadRole = function(roleRoot) end

---`Constructor Public Instance`
---@overload fun(missionRoot:Barotrauma.ContentXElement):Barotrauma.TraitorMissionPrefab
---@return Barotrauma.TraitorMissionPrefab
_G['TraitorMissionPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(missionRoot:Barotrauma.ContentXElement):Barotrauma.TraitorMissionPrefab
---@return Barotrauma.TraitorMissionPrefab
_G['TraitorMissionPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(missionRoot:Barotrauma.ContentXElement):Barotrauma.TraitorMissionPrefab
---@return Barotrauma.TraitorMissionPrefab
_G['TraitorMissionPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(missionRoot:Barotrauma.ContentXElement):Barotrauma.TraitorMissionPrefab
---@return Barotrauma.TraitorMissionPrefab
_G['TraitorMissionPrefab'].__new = function() end

