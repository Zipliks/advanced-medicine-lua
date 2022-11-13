---@meta
---@class Barotrauma.DecorativeSprite : System.Object
---`Field Private Instance`
---@field rotationSpeedRadians System.Single|number
---`Field Private Instance`
---@field absRotationSpeedRadians System.Single|number
---`Field Private Instance`
---@field rotationRadians System.Single|number
---`Field Private Instance`
---@field randomRotationRadians Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field scale System.Single|number
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Offset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OffsetAnim Barotrauma.DecorativeSprite.AnimationType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OffsetAnimSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RotationSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomRotation Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Scale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomScale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RotationAnim Barotrauma.DecorativeSprite.AnimationType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomGroupID System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field IsActiveConditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field AnimationConditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
_G['DecorativeSprite'] = {}

---`Method Public Instance`
---@param offsetState System.Single-ref
---@param randomOffsetMultiplier Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['DecorativeSprite'].GetOffset = function(offsetState, randomOffsetMultiplier, rotation) end

---`Method Public Instance`
---@param rotationState System.Single-ref
---@param randomRotationFactor System.Single|number
---@return System.Single|number
_G['DecorativeSprite'].GetRotation = function(rotationState, randomRotationFactor) end

---`Method Public Instance`
---@param randomScaleModifier System.Single|number
---@return System.Single|number
_G['DecorativeSprite'].GetScale = function(randomScaleModifier) end

---`Method Public Static`
---@param spriteGroups System.Collections.Immutable.ImmutableDictionary*1System*Int32*1System*Collections*Immutable*ImmutableArray*2Barotrauma*DecorativeSprite|{[System.Int32|integer]:System.Collections.Immutable.ImmutableArray*1Barotrauma*DecorativeSprite|Barotrauma.DecorativeSprite[]}
---@param animStates System.Collections.Generic.Dictionary*1Barotrauma*DecorativeSprite*1Barotrauma*DecorativeSprite*State|{[Barotrauma.DecorativeSprite]:Barotrauma.DecorativeSprite.State}
---@param entityID System.Int32|integer
---@param deltaTime System.Single|number
---@param checkConditional System.Func*1Barotrauma*PropertyConditional*1System*Boolean|(fun(arg:Barotrauma.PropertyConditional):System.Boolean|boolean)
_G['DecorativeSprite'].UpdateSpriteStates = function(spriteGroups, animStates, entityID, deltaTime, checkConditional) end

---`Method Public Instance`
_G['DecorativeSprite'].Remove = function() end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param path? System.String|string
---@param file? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.DecorativeSprite
_G['DecorativeSprite'] = function(element, path, file, lazyLoad) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param path? System.String|string
---@param file? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.DecorativeSprite
_G['DecorativeSprite'].__new = function(element, path, file, lazyLoad) end

