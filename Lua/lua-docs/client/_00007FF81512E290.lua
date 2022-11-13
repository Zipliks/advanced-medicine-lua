---@meta
---@class Barotrauma.ContainedItemSprite : System.Object
---`Field Public Instance`
---@field Sprite Barotrauma.Sprite
---`Field Public Instance`
---@field UseWhenAttached System.Boolean|boolean
---`Field Public Instance`
---@field DecorativeSpriteBehavior Barotrauma.ContainedItemSprite.DecorativeSpriteBehaviorType
---`Field Public Instance`
---@field AllowedContainerIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field AllowedContainerTags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['ContainedItemSprite'] = {}

---`Method Public Instance`
---@param container Barotrauma.Item
---@return System.Boolean|boolean
_G['ContainedItemSprite'].MatchesContainer = function(container) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param path? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.ContainedItemSprite
_G['ContainedItemSprite'] = function(element, path, lazyLoad) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param path? System.String|string
---@param lazyLoad? System.Boolean|boolean
---@return Barotrauma.ContainedItemSprite
_G['ContainedItemSprite'].__new = function(element, path, lazyLoad) end

