---@meta
---@class Barotrauma.CharacterHealth.LimbHealth : System.Object
---`Field Public Instance`
---@field IndicatorSprite Barotrauma.Sprite
---`Field Public Instance`
---@field HighlightSprite Barotrauma.Sprite
---`Field Public Instance`
---@field HighlightArea Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field VitalityMultipliers System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Public Instance`
---@field VitalityTypeMultipliers System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
_G['CharacterHealth']['LimbHealth'] = {}

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterHealth.LimbHealth
---@param element Barotrauma.ContentXElement
---@param characterHealth Barotrauma.CharacterHealth
---@return Barotrauma.CharacterHealth.LimbHealth
_G['CharacterHealth']['LimbHealth'] = function(element, characterHealth) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterHealth.LimbHealth
---@param element Barotrauma.ContentXElement
---@param characterHealth Barotrauma.CharacterHealth
---@return Barotrauma.CharacterHealth.LimbHealth
_G['CharacterHealth']['LimbHealth'].__new = function(element, characterHealth) end

