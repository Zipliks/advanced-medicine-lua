---@meta
---@class Barotrauma.Items.Components.Planter : Barotrauma.Items.Components.Pickable
---`Field Public Instance`
---@field PlantSlots System.Collections.Generic.Dictionary*1System*Int32*1Barotrauma*Items*Components*PlantSlot|{[System.Int32|integer]:Barotrauma.Items.Components.PlantSlot}
---`Field Private Instance`
---@field fertilizer System.Single|number
---`Field Public Instance`
---@field GrowableSeeds Barotrauma.Items.Components.Growable-arr|Barotrauma.Items.Components.Growable[]
---`Field Private Instance`
---@field SuitableFertilizer System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]
---`Field Private Instance`
---@field SuitableSeeds System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]
---`Field Private Instance`
---@field container Barotrauma.Items.Components.ItemContainer
---`Field Private Instance`
---@field growthTickTimer System.Single|number
---`Field Private Instance`
---@field lightComponents System.Collections.Generic.List*1Barotrauma*Items*Components*LightComponent|Barotrauma.Items.Components.LightComponent[]
---`Field Public Static`
---@field NullSlot Barotrauma.Items.Components.PlantSlot
---`Field Private Static`
---@field NullItem Barotrauma.Items.Components.SuitablePlantItem
---`Field Public Static`
---@field GrowthTickDelay System.Single|number
---`Field Private Static`
---@field MsgFertilizer System.String|string
---`Field Private Static`
---@field MsgSeed System.String|string
---`Field Private Static`
---@field MsgHarvest System.String|string
---`Field Private Static`
---@field MsgUprooting System.String|string
---`Field Private Static`
---@field MsgFertilizing System.String|string
---`Field Private Static`
---@field MsgPlanting System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Fertilizer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FertilizerCapacity System.Single|number
_G['Components']['Planter'] = {}

---`Method Public Instance Virtual`
_G['Components']['Planter'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param addMessage System.Boolean|boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['Components']['Planter'].HasRequiredItems = function(character, addMessage, msg) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Planter'].Pick = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Planter'].OnPicked = function(character) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Planter'].TryHarvest = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Planter'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@return Barotrauma.Items.Components.SuitablePlantItem
_G['Components']['Planter'].GetSuitableItem = function(character) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['Planter'].HasAnyFinishedGrowing = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Planter
---@return Barotrauma.Items.Components.Planter
_G['Components']['Planter'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Planter
---@return Barotrauma.Items.Components.Planter
_G['Components']['Planter'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Planter
---@return Barotrauma.Items.Components.Planter
_G['Components']['Planter'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Planter
---@return Barotrauma.Items.Components.Planter
_G['Components']['Planter'].__new = function() end

