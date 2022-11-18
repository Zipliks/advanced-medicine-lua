---@meta
---@class Barotrauma.ConditionalSprite : System.Object
---`Field Public Instance`
---@field conditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---`Field Public Instance`
---@field Comparison Barotrauma.PropertyConditional.Comparison
---`Field Public Instance`
---@field Exclusive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Target Barotrauma.ISerializableEntity
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DeformableSprite Barotrauma.DeformableSprite
---`Getter Public Instance`
---@field ActiveSprite Barotrauma.Sprite
_G['ConditionalSprite'] = {}

---`Method Public Instance`
_G['ConditionalSprite'].CheckConditionals = function() end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param target Barotrauma.ISerializableEntity
---@param file? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.ConditionalSprite
_G['ConditionalSprite'] = function(element, target, file, lazyLoad) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param target Barotrauma.ISerializableEntity
---@param file? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.ConditionalSprite
_G['ConditionalSprite'].__new = function(element, target, file, lazyLoad) end

