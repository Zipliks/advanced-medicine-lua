---@meta
---@class Barotrauma.Items.Components.Deconstructor : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field progressTimer System.Single|number
---`Field Private Instance`
---@field progressState System.Single|number
---`Field Private Instance`
---@field hasPower System.Boolean|boolean
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Private Instance`
---@field userDeconstructorSpeedMultiplier System.Single|number
---`Field Private Instance`
---@field inputContainer Barotrauma.Items.Components.ItemContainer
---`Field Private Instance`
---@field outputContainer Barotrauma.Items.Components.ItemContainer
---`Field Private Static`
---@field TinkeringSpeedIncrease System.Single|number
---`Getter Public Instance`
---@field InputContainer Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance`
---@field OutputContainer Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeconstructItemsSimultaneously System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeconstructionSpeed System.Single|number
_G['Components']['Deconstructor'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['Deconstructor'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Deconstructor'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
_G['Components']['Deconstructor'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Deconstructor'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param targetItem Barotrauma.Item
---@param inputItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@param validDeconstructItems System.Collections.Generic.List*1Barotrauma*DeconstructItem|Barotrauma.DeconstructItem[]
---@param allowRemove? System.Boolean|boolean
_G['Components']['Deconstructor'].ProcessItem = function(targetItem, inputItems, validDeconstructItems, allowRemove) end

---`Method Private Instance`
_G['Components']['Deconstructor'].PutItemsToLinkedContainer = function() end

---`Method Private Instance`
_G['Components']['Deconstructor'].MoveInputQueue = function() end

---`Method Private Instance`
---@param checkRequiredOtherItems? System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1System*ValueTuple*2Barotrauma*Item*2Barotrauma*DeconstructItem|(fun():System.ValueTuple*1Barotrauma*Item*1Barotrauma*DeconstructItem)
_G['Components']['Deconstructor'].GetAvailableOutputs = function(checkRequiredOtherItems) end

---`Method Private Instance`
---@param active System.Boolean|boolean
---@param user? Barotrauma.Character
_G['Components']['Deconstructor'].SetActive = function(active, user) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Deconstructor
_G['Components']['Deconstructor'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Deconstructor
_G['Components']['Deconstructor'].__new = function(item, element) end

