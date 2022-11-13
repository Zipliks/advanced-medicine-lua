---@meta
---@class Barotrauma.DeformableSprite : System.Object
---`Field Private Instance`
---@field initialized System.Boolean|boolean
---`Field Private Instance`
---@field triangleCount System.Int32|integer
---`Field Private Instance`
---@field vertexBuffer Microsoft.Xna.Framework.Graphics.VertexBuffer
---`Field Private Instance`
---@field flippedVertexBuffer Microsoft.Xna.Framework.Graphics.VertexBuffer
---`Field Private Instance`
---@field indexBuffer Microsoft.Xna.Framework.Graphics.IndexBuffer
---`Field Private Instance`
---@field uvTopLeft Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field uvBottomRight Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field uvTopLeftFlipped Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field uvBottomRightFlipped Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field deformAmount Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field deformArrayWidth System.Int32|integer
---`Field Private Instance`
---@field deformArrayHeight System.Int32|integer
---`Field Private Instance`
---@field subDivX System.Int32|integer
---`Field Private Instance`
---@field subDivY System.Int32|integer
---`Field Private Instance`
---@field spritePos Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field spriteSize Microsoft.Xna.Framework.Point
---`Field Private Static`
---@field list System.Collections.Generic.List*1Barotrauma*DeformableSprite|Barotrauma.DeformableSprite[]
---`Field Private Static`
---@field effect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Static`
---@field Effect Microsoft.Xna.Framework.Graphics.Effect
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Invert System.Boolean|boolean
---`Getter Public Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Origin Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sprite Barotrauma.Sprite
_G['DeformableSprite'] = {}

---`Method Public Instance`
_G['DeformableSprite'].EnsureLazyLoaded = function() end

---`Method Private Instance`
_G['DeformableSprite'].Init = function() end

---`Method Private Instance`
_G['DeformableSprite'].SetupVertexBuffers = function() end

---`Method Private Instance`
_G['DeformableSprite'].SetupIndexBuffer = function() end

---`Method Public Instance`
---@overload fun(deformFunction:System.Func*1Microsoft*Xna*Framework*Vector2*1Microsoft*Xna*Framework*Vector2|(fun(arg:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2))
---@param deform Microsoft.Xna.Framework.Vector2[,]|Microsoft.Xna.Framework.Vector2[]
_G['DeformableSprite'].Deform = function(deform) end

---`Method Public Instance`
_G['DeformableSprite'].Reset = function() end

---`Method Public Instance`
---@param pos Microsoft.Xna.Framework.Vector3
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate System.Single|number
---@param scale Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Matrix
_G['DeformableSprite'].GetTransform = function(pos, origin, rotate, scale) end

---`Method Public Instance`
---@param cam Barotrauma.Camera
---@param pos Microsoft.Xna.Framework.Vector3
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate System.Single|number
---@param scale Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param mirror? System.Boolean|boolean
---@param invert? System.Boolean|boolean
_G['DeformableSprite'].Draw = function(cam, pos, origin, rotate, scale, color, mirror, invert) end

---`Method Public Instance`
_G['DeformableSprite'].Remove = function() end

---`Method Public Instance`
---@param parent Barotrauma.GUIComponent
---@param deformations System.Collections.Generic.List*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---@param parentDebugName System.String|string
---@return Barotrauma.GUIComponent
_G['DeformableSprite'].CreateEditor = function(parent, deformations, parentDebugName) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@param subdivisionsX System.Nullable*1System*Int32|integer
---@param subdivisionsY System.Nullable*1System*Int32|integer
---@param lazyLoad System.Boolean|boolean
---@param invert System.Boolean|boolean
_G['DeformableSprite'].InitProjSpecific = function(element, subdivisionsX, subdivisionsY, lazyLoad, invert) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, subdivisionsX?:System.Nullable*1System*Int32|integer, subdivisionsY?:System.Nullable*1System*Int32|integer, filePath?:System.String|string, lazyLoad?:System.Boolean|boolean, invert?:System.Boolean|boolean):Barotrauma.DeformableSprite
---@return Barotrauma.DeformableSprite
_G['DeformableSprite'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, subdivisionsX?:System.Nullable*1System*Int32|integer, subdivisionsY?:System.Nullable*1System*Int32|integer, filePath?:System.String|string, lazyLoad?:System.Boolean|boolean, invert?:System.Boolean|boolean):Barotrauma.DeformableSprite
---@return Barotrauma.DeformableSprite
_G['DeformableSprite'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, subdivisionsX?:System.Nullable*1System*Int32|integer, subdivisionsY?:System.Nullable*1System*Int32|integer, filePath?:System.String|string, lazyLoad?:System.Boolean|boolean, invert?:System.Boolean|boolean):Barotrauma.DeformableSprite
---@return Barotrauma.DeformableSprite
_G['DeformableSprite'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, subdivisionsX?:System.Nullable*1System*Int32|integer, subdivisionsY?:System.Nullable*1System*Int32|integer, filePath?:System.String|string, lazyLoad?:System.Boolean|boolean, invert?:System.Boolean|boolean):Barotrauma.DeformableSprite
---@return Barotrauma.DeformableSprite
_G['DeformableSprite'].__new = function() end

