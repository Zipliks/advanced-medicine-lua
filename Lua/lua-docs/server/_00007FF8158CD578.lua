---@meta
---@class Barotrauma.DeconstructItem : System.ValueType
---`Field Public Instance`
---@field ItemIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field Amount System.Int32|integer
---`Field Public Instance`
---@field MinCondition System.Single|number
---`Field Public Instance`
---@field MaxCondition System.Single|number
---`Field Public Instance`
---@field OutConditionMin System.Single|number
---`Field Public Instance`
---@field OutConditionMax System.Single|number
---`Field Public Instance`
---@field CopyCondition System.Boolean|boolean
---`Field Public Instance`
---@field RequiredDeconstructor System.String-arr|System.String|string[]
---`Field Public Instance`
---@field RequiredOtherItem System.String-arr|System.String|string[]
---`Field Public Instance`
---@field ActivateButtonText System.String|string
---`Field Public Instance`
---@field InfoText System.String|string
---`Field Public Instance`
---@field InfoTextOnOtherItemMissing System.String|string
---`Field Public Instance`
---@field Commonness System.Single|number
_G['DeconstructItem'] = {}

---`Method Public Instance`
---@param deconstructor Barotrauma.Item
---@return System.Boolean|boolean
_G['DeconstructItem'].IsValidDeconstructor = function(deconstructor) end

---`Constructor Public Instance`
---@param element System.Xml.Linq.XElement
---@param parentDebugName Barotrauma.Identifier
---@return Barotrauma.DeconstructItem
_G['DeconstructItem'] = function(element, parentDebugName) end

---`Constructor Public Instance`
---@param element System.Xml.Linq.XElement
---@param parentDebugName Barotrauma.Identifier
---@return Barotrauma.DeconstructItem
_G['DeconstructItem'].__new = function(element, parentDebugName) end

