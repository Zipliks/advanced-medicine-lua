---@meta
---@class Barotrauma.Skill : System.Object
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Private Instance`
---@field level System.Single|number
---`Field Private Instance`
---@field iconJobId Barotrauma.Identifier
---`Field Public Instance`
---@field PriceMultiplier System.Single|number
---`Field Public Static`
---@field MaximumSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Level System.Single|number
---`Getter Public Instance`
---@field Icon Barotrauma.Sprite
_G['Skill'] = {}

---`Method Public Instance`
---@param value System.Single|number
---@param increasePastMax System.Boolean|boolean
_G['Skill'].IncreaseSkill = function(value, increasePastMax) end

---`Method Private Instance`
---@return Barotrauma.Identifier
_G['Skill'].GetIconJobId = function() end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.SkillPrefab, randSync:Barotrauma.Rand.RandSync):Barotrauma.Skill
---@param identifier Barotrauma.Identifier
---@param level System.Single|number
---@return Barotrauma.Skill
_G['Skill'] = function(identifier, level) end

---`Constructor Public Instance`
---@overload fun(prefab:Barotrauma.SkillPrefab, randSync:Barotrauma.Rand.RandSync):Barotrauma.Skill
---@param identifier Barotrauma.Identifier
---@param level System.Single|number
---@return Barotrauma.Skill
_G['Skill'].__new = function(identifier, level) end

