---@meta
---@class Barotrauma.Lights.LightSourceParams : System.Object
---`Field Public Instance`
---@field Persistent System.Boolean|boolean
---`Field Private Instance`
---@field range System.Single|number
---`Field Private Instance`
---@field flicker System.Single|number
---`Field Private Instance`
---@field pulseFrequency System.Single|number
---`Field Private Instance`
---@field pulseAmount System.Single|number
---`Field Private Instance`
---@field blinkFrequency System.Single|number
---`Field Public Instance`
---@field OverrideLightSpriteAlpha System.Nullable*1System*Single|number
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Scale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Offset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Flicker System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlickerSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BlinkFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TextureRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OverrideLightTexture Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LightSprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DeformableLightSpriteElement Barotrauma.ContentXElement
_G['LightSourceParams'] = {}

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['LightSourceParams'].GetOffset = function() end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['LightSourceParams'].Deserialize = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['LightSourceParams'].Serialize = function(element) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement):Barotrauma.Lights.LightSourceParams
---@param range System.Single|number
---@param color Microsoft.Xna.Framework.Color
---@return Barotrauma.Lights.LightSourceParams
_G['LightSourceParams'] = function(range, color) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement):Barotrauma.Lights.LightSourceParams
---@param range System.Single|number
---@param color Microsoft.Xna.Framework.Color
---@return Barotrauma.Lights.LightSourceParams
_G['LightSourceParams'].__new = function(range, color) end

