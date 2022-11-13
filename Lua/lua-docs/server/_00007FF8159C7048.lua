---@meta
---@class Barotrauma.Traitor.Goal : System.Object
---`Getter Public Instance`
---@field Traitors System.Collections.Generic.HashSet*1Barotrauma*Traitor|Barotrauma.Traitor[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Mission Barotrauma.Traitor.TraitorMission
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field StatusTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field InfoTextId System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field CompletedTextId System.String|string
---`Getter Public Instance Virtual`
---@field StatusValueTextId System.String|string
---`Getter Public Instance Virtual`
---@field StatusTextKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field InfoTextKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Virtual`
---@field CompletedTextKeys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance Abstract Virtual`
---@field IsCompleted System.Boolean|boolean
_G['Traitor']['Goal'] = {}

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['Traitor']['Goal'].StatusTextValues = function(traitor) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['Traitor']['Goal'].InfoTextValues = function(traitor) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['Traitor']['Goal'].CompletedTextValues = function(traitor) end

---`Method NonPublic Instance Virtual`
---@param traitor Barotrauma.Traitor
---@param textId System.String|string
---@param keys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param values System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@return System.String|string
_G['Traitor']['Goal'].FormatText = function(traitor, textId, keys, values) end

---`Method NonPublic Instance Virtual`
---@param traitor Barotrauma.Traitor
---@param textId System.String|string
---@param keys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param values System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@return System.String|string
_G['Traitor']['Goal'].GetStatusText = function(traitor, textId, keys, values) end

---`Method NonPublic Instance Virtual`
---@param traitor Barotrauma.Traitor
---@param textId System.String|string
---@param keys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param values System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@return System.String|string
_G['Traitor']['Goal'].GetInfoText = function(traitor, textId, keys, values) end

---`Method NonPublic Instance Virtual`
---@param traitor Barotrauma.Traitor
---@param textId System.String|string
---@param keys System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param values System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@return System.String|string
_G['Traitor']['Goal'].GetCompletedText = function(traitor, textId, keys, values) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.String|string
_G['Traitor']['Goal'].StatusText = function(traitor) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.String|string
_G['Traitor']['Goal'].InfoText = function(traitor) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.String|string
_G['Traitor']['Goal'].CompletedText = function(traitor) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.Boolean|boolean
_G['Traitor']['Goal'].IsStarted = function(traitor) end

---`Method Public Instance Virtual`
---@param traitors System.Collections.Generic.ICollection*1Barotrauma*Traitor|(fun():Barotrauma.Traitor)
---@return System.Boolean|boolean
_G['Traitor']['Goal'].CanBeCompleted = function(traitors) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Traitor']['Goal'].IsEnemy = function(character) end

---`Method Public Instance Virtual`
---@param structure Barotrauma.Structure
---@return System.Boolean|boolean
_G['Traitor']['Goal'].IsAllowedToDamage = function(structure) end

---`Method Public Instance Virtual`
---@param traitor Barotrauma.Traitor
---@return System.Boolean|boolean
_G['Traitor']['Goal'].Start = function(traitor) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['Traitor']['Goal'].Update = function(deltaTime) end

---`Constructor NonPublic Instance`
---@return Barotrauma.Traitor.Goal
_G['Traitor']['Goal'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Traitor.Goal
_G['Traitor']['Goal'].__new = function() end

