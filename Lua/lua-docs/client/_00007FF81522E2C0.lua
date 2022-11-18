---@meta
---@class Barotrauma.StructurePrefab : Barotrauma.MapEntityPrefab
---`Field Public Instance`
---@field BackgroundSpriteColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field DecorativeSprites System.Collections.Immutable.ImmutableArray*1Barotrauma*DecorativeSprite|Barotrauma.DecorativeSprite[]
---`Field Public Instance`
---@field DecorativeSpriteGroups System.Collections.Immutable.ImmutableDictionary*1System*Int32*1System*Collections*Immutable*ImmutableArray*2Barotrauma*DecorativeSprite|{[System.Int32|integer]:System.Collections.Immutable.ImmutableArray*1Barotrauma*DecorativeSprite|Barotrauma.DecorativeSprite[]}
---`Field Public Instance`
---@field ConfigElement Barotrauma.ContentXElement
---`Field Public Instance`
---@field CanSpriteFlipX System.Boolean|boolean
---`Field Public Instance`
---@field CanSpriteFlipY System.Boolean|boolean
---`Field Public Instance`
---@field IsHorizontal System.Nullable*1System*Boolean|boolean
---`Field Public Instance`
---@field BackgroundSprite Barotrauma.Sprite
---`Field Private Instance`
---@field health System.Single|number
---`Field NonPublic Instance`
---@field textureScale Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*StructurePrefab|(fun():Barotrauma.StructurePrefab)
---`Getter Public Instance Virtual`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance`
---@field ScaledSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance Virtual`
---@field OriginalName System.String|string
---`Getter Public Instance Virtual`
---@field Tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field AllowedLinks System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field Category Barotrauma.MapEntityCategory
---`Getter Public Instance Virtual`
---@field Aliases System.Collections.Immutable.ImmutableHashSet*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Body System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BodyRotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BodyWidth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BodyHeight System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BodyOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Platform System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowAttachItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinHealth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Health System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IndestructibleInOutposts System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CastShadow System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StairDirection Barotrauma.Direction
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StairAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field NoAITarget System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamageSound System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TextureScale Microsoft.Xna.Framework.Vector2
_G['StructurePrefab'] = {}

---`Method Public Instance Virtual`
---@param cam Barotrauma.Camera
_G['StructurePrefab'].UpdatePlacing = function(cam) end

---`Method Public Instance Virtual`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, cam:Barotrauma.Camera)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param placeRect Microsoft.Xna.Framework.Rectangle
---@param scale? System.Single|number
---@param spriteEffects? Microsoft.Xna.Framework.Graphics.SpriteEffects
_G['StructurePrefab'].DrawPlacing = function(spriteBatch, placeRect, scale, spriteEffects) end

---`Method NonPublic Instance Virtual`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['StructurePrefab'].DetermineIdentifier = function(element) end

---`Method NonPublic Instance Virtual`
---@param rect Microsoft.Xna.Framework.Rectangle
_G['StructurePrefab'].CreateInstance = function(rect) end

---`Method Public Instance Virtual`
_G['StructurePrefab'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.StructureFile):Barotrauma.StructurePrefab
---@return Barotrauma.StructurePrefab
_G['StructurePrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.StructureFile):Barotrauma.StructurePrefab
---@return Barotrauma.StructurePrefab
_G['StructurePrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.StructureFile):Barotrauma.StructurePrefab
---@return Barotrauma.StructurePrefab
_G['StructurePrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.StructureFile):Barotrauma.StructurePrefab
---@return Barotrauma.StructurePrefab
_G['StructurePrefab'].__new = function() end

