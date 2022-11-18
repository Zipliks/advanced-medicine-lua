---@meta
---@class Barotrauma.Job : System.Object
---`Field Private Instance`
---@field prefab Barotrauma.JobPrefab
---`Field Private Instance`
---@field skills System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*Skill|{[Barotrauma.Identifier]:Barotrauma.Skill}
---`Field Public Instance`
---@field Variant System.Int32|integer
---`Getter Public Instance`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance`
---@field Description Barotrauma.LocalizedString
---`Getter Public Instance`
---@field Prefab Barotrauma.JobPrefab
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PrimarySkill Barotrauma.Skill
_G['Job'] = {}

---`Method Public Static`
---@param randSync Barotrauma.Rand.RandSync
---@return Barotrauma.Job
_G['Job'].Random = function(randSync) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Skill|(fun():Barotrauma.Skill)
_G['Job'].GetSkills = function() end

---`Method Public Instance`
---@param skillIdentifier Barotrauma.Identifier
---@return System.Single|number
_G['Job'].GetSkillLevel = function(skillIdentifier) end

---`Method Public Instance`
---@param skillIdentifier Barotrauma.Identifier
---@return Barotrauma.Skill
_G['Job'].GetSkill = function(skillIdentifier) end

---`Method Public Instance`
---@param newSkills System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
_G['Job'].OverrideSkills = function(newSkills) end

---`Method Public Instance`
---@param skillIdentifier Barotrauma.Identifier
---@param increase System.Single|number
---@param increasePastMax System.Boolean|boolean
_G['Job'].IncreaseSkillLevel = function(skillIdentifier, increase, increasePastMax) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param spawnPoint? Barotrauma.WayPoint
_G['Job'].GiveJobItems = function(character, spawnPoint) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param itemElement System.Xml.Linq.XElement
---@param spawnPoint? Barotrauma.WayPoint
---@param parentItem? Barotrauma.Item
_G['Job'].InitializeJobItem = function(character, itemElement, spawnPoint, parentItem) end

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Job'].Save = function(parentElement) end

---`Constructor Public Instance`
---@overload fun(jobPrefab:Barotrauma.JobPrefab):Barotrauma.Job
---@overload fun(jobPrefab:Barotrauma.JobPrefab, randSync:Barotrauma.Rand.RandSync, variant:System.Int32|integer, ...:Barotrauma.Skill):Barotrauma.Job
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Job
_G['Job'] = function(element) end

---`Constructor Public Instance`
---@overload fun(jobPrefab:Barotrauma.JobPrefab):Barotrauma.Job
---@overload fun(jobPrefab:Barotrauma.JobPrefab, randSync:Barotrauma.Rand.RandSync, variant:System.Int32|integer, ...:Barotrauma.Skill):Barotrauma.Job
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Job
_G['Job'].__new = function(element) end

