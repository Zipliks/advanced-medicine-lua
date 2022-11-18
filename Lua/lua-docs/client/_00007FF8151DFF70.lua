---@meta
---@class Barotrauma.Items.Components.LimbPos : System.Object
---`Field Public Instance`
---@field AllowUsingLimb System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LimbType Barotrauma.LimbType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['Components']['LimbPos'] = {}

---`Constructor Public Instance`
---@param limbType Barotrauma.LimbType
---@param position Microsoft.Xna.Framework.Vector2
---@param allowUsingLimb System.Boolean|boolean
---@return Barotrauma.Items.Components.LimbPos
_G['Components']['LimbPos'] = function(limbType, position, allowUsingLimb) end

---`Constructor Public Instance`
---@param limbType Barotrauma.LimbType
---@param position Microsoft.Xna.Framework.Vector2
---@param allowUsingLimb System.Boolean|boolean
---@return Barotrauma.Items.Components.LimbPos
_G['Components']['LimbPos'].__new = function(limbType, position, allowUsingLimb) end

