---@meta
---@class Barotrauma.PropertyConditional : System.Object
---`Field Public Instance`
---@field Type Barotrauma.PropertyConditional.ConditionType
---`Field Public Instance`
---@field Operator Barotrauma.PropertyConditional.OperatorType
---`Field Public Instance`
---@field AttributeName Barotrauma.Identifier
---`Field Public Instance`
---@field AttributeValue System.String|string
---`Field Public Instance`
---@field SplitAttributeValue System.String-arr|System.String|string[]
---`Field Public Instance`
---@field FloatValue System.Nullable*1System*Single|number
---`Field Public Instance`
---@field TargetItemComponentName System.String|string
---`Field Public Instance`
---@field TargetSelf System.Boolean|boolean
---`Field Public Instance`
---@field TargetContainer System.Boolean|boolean
---`Field Public Instance`
---@field TargetGrandParent System.Boolean|boolean
---`Field Public Instance`
---@field TargetContainedItem System.Boolean|boolean
_G['PropertyConditional'] = {}

---`Method Public Static`
---@param attribute System.Xml.Linq.XAttribute
---@return System.Boolean|boolean
_G['PropertyConditional'].IsValid = function(attribute) end

---`Method Public Static`
---@param op System.String|string
---@return Barotrauma.PropertyConditional.OperatorType
_G['PropertyConditional'].GetOperatorType = function(op) end

---`Method Public Instance`
---@overload fun(target:Barotrauma.ISerializableEntity):System.Boolean|boolean
---@param target Barotrauma.ISerializableEntity
---@param checkContained System.Boolean|boolean
---@return System.Boolean|boolean
_G['PropertyConditional'].Matches = function(target, checkContained) end

---`Method Private Instance`
---@param target Barotrauma.ISerializableEntity
---@param property Barotrauma.SerializableProperty
---@return System.Boolean|boolean
_G['PropertyConditional'].Matches = function(target, property) end

---`Method Private Instance`
---@param target Barotrauma.ISerializableEntity
---@return System.Boolean|boolean
_G['PropertyConditional'].MatchesTagCondition = function(target) end

---`Method Public Instance`
---@param targetTag Barotrauma.Identifier
---@return System.Boolean|boolean
_G['PropertyConditional'].MatchesTagCondition = function(targetTag) end

---`Constructor Public Instance`
---@param attribute System.Xml.Linq.XAttribute
---@return Barotrauma.PropertyConditional
_G['PropertyConditional'] = function(attribute) end

---`Constructor Public Instance`
---@param attribute System.Xml.Linq.XAttribute
---@return Barotrauma.PropertyConditional
_G['PropertyConditional'].__new = function(attribute) end

