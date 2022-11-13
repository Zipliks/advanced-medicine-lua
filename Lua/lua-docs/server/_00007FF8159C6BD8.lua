---@meta
---@class Barotrauma.Traitor.Objective : System.Object
---`Field Private Instance`
---@field shuffleGoalsCount System.Int32|integer
---`Field Private Instance`
---@field allGoals System.Collections.Generic.List*1Barotrauma*Traitor*Goal|Barotrauma.Traitor.Goal[]
---`Field Private Instance`
---@field activeGoals System.Collections.Generic.List*1Barotrauma*Traitor*Goal|Barotrauma.Traitor.Goal[]
---`Field Private Instance`
---@field pendingGoals System.Collections.Generic.List*1Barotrauma*Traitor*Goal|Barotrauma.Traitor.Goal[]
---`Field Private Instance`
---@field completedGoals System.Collections.Generic.List*1Barotrauma*Traitor*Goal|Barotrauma.Traitor.Goal[]
---`Field Public Instance`
---@field Roles System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Traitor Barotrauma.Traitor
---`Getter Public Instance`
---@field IsCompleted System.Boolean|boolean
---`Getter Public Instance`
---@field IsPartiallyCompleted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsStarted System.Boolean|boolean
---`Getter Public Instance`
---@field CanBeCompleted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InfoText System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field GoalInfoFormatId System.String|string
---`Getter Public Instance`
---@field GoalInfos System.String|string
---`Getter Public Instance`
---@field AllGoalInfos System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field StartMessageTextId System.String|string
---`Getter Public Instance Virtual`
---@field StartMessageKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field StartMessageValues System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field StartMessageText Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field StartMessageServerTextId System.String|string
---`Getter Public Instance Virtual`
---@field StartMessageServerKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field StartMessageServerValues System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field StartMessageServerText Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageSuccessTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageSuccessDeadTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageSuccessDetainedTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageFailureTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageFailureDeadTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field EndMessageFailureDetainedTextId System.String|string
---`Getter Public Instance Virtual`
---@field EndMessageKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field EndMessageValues System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field EndMessageText System.String|string
_G['Traitor']['Objective'] = {}

---`Method Public Instance`
---@param traitors System.Collections.Generic.ICollection*1Barotrauma*Traitor|(fun():Barotrauma.Traitor)
---@return System.Boolean|boolean
_G['Traitor']['Objective'].CanBeStarted = function(traitors) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Traitor']['Objective'].IsEnemy = function(character) end

---`Method Public Instance`
---@param structure Barotrauma.Structure
---@return System.Boolean|boolean
_G['Traitor']['Objective'].IsAllowedToDamage = function(structure) end

---`Method Public Instance`
---@param traitor Barotrauma.Traitor
---@return System.Boolean|boolean
_G['Traitor']['Objective'].Start = function(traitor) end

---`Method Public Instance`
_G['Traitor']['Objective'].StartMessage = function() end

---`Method Public Instance`
_G['Traitor']['Objective'].EndMessage = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Traitor']['Objective'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param infoText System.String|string
---@param shuffleGoalsCount System.Int32|integer
---@param roles System.Collections.Generic.ICollection*1System*String|(fun():System.String|string)
---@param goals System.Collections.Generic.ICollection*1Barotrauma*Traitor*Goal|(fun():Barotrauma.Traitor.Goal)
---@return Barotrauma.Traitor.Objective
_G['Traitor']['Objective'] = function(infoText, shuffleGoalsCount, roles, goals) end

---`Constructor Public Instance`
---@param infoText System.String|string
---@param shuffleGoalsCount System.Int32|integer
---@param roles System.Collections.Generic.ICollection*1System*String|(fun():System.String|string)
---@param goals System.Collections.Generic.ICollection*1Barotrauma*Traitor*Goal|(fun():Barotrauma.Traitor.Goal)
---@return Barotrauma.Traitor.Objective
_G['Traitor']['Objective'].__new = function(infoText, shuffleGoalsCount, roles, goals) end

