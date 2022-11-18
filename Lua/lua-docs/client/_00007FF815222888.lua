---@meta
---@class Barotrauma.Items.Components.GeneticMaterial : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field materialName Barotrauma.LocalizedString
---`Field Private Instance`
---@field targetCharacter Barotrauma.Character
---`Field Private Instance`
---@field selectedEffect Barotrauma.AfflictionPrefab
---`Field Private Instance`
---@field selectedTaintedEffect Barotrauma.AfflictionPrefab
---`Field Private Instance`
---@field tainted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TooltipValueMin System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TooltipValueMax System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Effect System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TaintedEffect Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Tainted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SelectedTaintedEffect Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ConditionIncreaseOnCombineMin System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ConditionIncreaseOnCombineMax System.Single|number
_G['Components']['GeneticMaterial'] = {}

---`Method Public Instance Virtual`
---@param name Barotrauma.LocalizedString-ref
---@param description Barotrauma.LocalizedString-ref
_G['Components']['GeneticMaterial'].AddTooltipInfo = function(name, description) end

---`Method Public Instance`
---@param deconstructor Barotrauma.Items.Components.Deconstructor
---@param buttonText Barotrauma.LocalizedString-ref
---@param infoText Barotrauma.LocalizedString-ref
_G['Components']['GeneticMaterial'].ModifyDeconstructInfo = function(deconstructor, buttonText, infoText) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['GeneticMaterial'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance`
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@return System.Boolean|boolean
_G['Components']['GeneticMaterial'].CanBeCombinedWith = function(otherGeneticMaterial) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['GeneticMaterial'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['GeneticMaterial'].Update = function(deltaTime, cam) end

---`Method Public Instance`
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@param user Barotrauma.Character
---@return Barotrauma.Items.Components.GeneticMaterial.CombineResult
_G['Components']['GeneticMaterial'].Combine = function(otherGeneticMaterial, user) end

---`Method Private Instance`
---@return System.Single|number
_G['Components']['GeneticMaterial'].GetCombinedEffectStrength = function() end

---`Method Private Instance`
---@return System.Single|number
_G['Components']['GeneticMaterial'].GetCombinedTaintedEffectStrength = function() end

---`Method Private Instance`
---@param user Barotrauma.Character
---@return System.Single|number
_G['Components']['GeneticMaterial'].GetTaintedProbabilityOnRefine = function(user) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@return System.Single|number
_G['Components']['GeneticMaterial'].GetTaintedProbabilityOnCombine = function(user) end

---`Method Private Instance`
_G['Components']['GeneticMaterial'].MakeTainted = function() end

---`Method Public Static`
---@param prefab Barotrauma.ItemPrefab
---@param element System.Xml.Linq.XElement
---@return Barotrauma.LocalizedString
_G['Components']['GeneticMaterial'].TryCreateName = function(prefab, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GeneticMaterial
_G['Components']['GeneticMaterial'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GeneticMaterial
_G['Components']['GeneticMaterial'].__new = function(item, element) end

