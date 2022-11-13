---@meta
---@class Barotrauma.Radiation : System.Object
---`Field Private Instance`
---@field sheet Barotrauma.SpriteSheet
---`Field Private Instance`
---@field isHovingOver System.Boolean|boolean
---`Field Public Instance`
---@field Map Barotrauma.Map
---`Field Public Instance`
---@field Params Barotrauma.RadiationParams
---`Field Private Instance`
---@field radiationAffliction Barotrauma.Affliction
---`Field Private Instance`
---@field radiationTimer System.Single|number
---`Field Private Instance`
---@field increasedAmount System.Single|number
---`Field Private Instance`
---@field lastIncrease System.Single|number
---`Field Private Static`
---@field radiationTooltip Barotrauma.LocalizedString
---`Field Private Static`
---@field spriteIndex System.Single|number
---`Getter Private Instance`
---@field maxFrames System.Int32|integer
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Amount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['Radiation'] = {}

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Microsoft.Xna.Framework.Rectangle
---@param zoom System.Single|number
_G['Radiation'].Draw = function(spriteBatch, container, zoom) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Radiation'].DrawFront = function(spriteBatch) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Radiation'].MapUpdate = function(deltaTime) end

---`Method Public Instance`
---@param steps? System.Single|number
_G['Radiation'].OnStep = function(steps) end

---`Method Public Instance`
---@param amount System.Single|number
_G['Radiation'].IncreaseRadiation = function(amount) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Radiation'].UpdateRadiation = function(deltaTime) end

---`Method Public Instance`
---@overload fun(location:Barotrauma.Location):System.Boolean|boolean
---@param pos Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Radiation'].Contains = function(pos) end

---`Method Public Instance`
---@param entity Barotrauma.Entity
---@return System.Boolean|boolean
_G['Radiation'].IsEntityRadiated = function(entity) end

---`Method Public Instance`
---@return System.Xml.Linq.XElement
_G['Radiation'].Save = function() end

---`Constructor Public Instance`
---@overload fun(map:Barotrauma.Map, radiationParams:Barotrauma.RadiationParams, element?:System.Xml.Linq.XElement):Barotrauma.Radiation
---@return Barotrauma.Radiation
_G['Radiation'] = function() end

---`Constructor Public Instance`
---@overload fun(map:Barotrauma.Map, radiationParams:Barotrauma.RadiationParams, element?:System.Xml.Linq.XElement):Barotrauma.Radiation
---@return Barotrauma.Radiation
_G['Radiation'].__new = function() end

---`Constructor Private Static`
---@overload fun(map:Barotrauma.Map, radiationParams:Barotrauma.RadiationParams, element?:System.Xml.Linq.XElement):Barotrauma.Radiation
---@return Barotrauma.Radiation
_G['Radiation'] = function() end

---`Constructor Private Static`
---@overload fun(map:Barotrauma.Map, radiationParams:Barotrauma.RadiationParams, element?:System.Xml.Linq.XElement):Barotrauma.Radiation
---@return Barotrauma.Radiation
_G['Radiation'].__new = function() end

