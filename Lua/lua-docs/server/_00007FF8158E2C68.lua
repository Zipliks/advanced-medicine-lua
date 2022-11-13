---@meta
---@class Barotrauma.OrderTarget : System.Object
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Hull Barotrauma.Hull
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Submarine Barotrauma.Submarine
_G['OrderTarget'] = {}

---`Constructor Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param creatingFromExistingData? System.Boolean|boolean
---@return Barotrauma.OrderTarget
_G['OrderTarget'] = function(position, hull, creatingFromExistingData) end

---`Constructor Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param creatingFromExistingData? System.Boolean|boolean
---@return Barotrauma.OrderTarget
_G['OrderTarget'].__new = function(position, hull, creatingFromExistingData) end

