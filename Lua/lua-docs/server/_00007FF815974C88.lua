---@meta
---@class Barotrauma.Gap : Barotrauma.MapEntity
---`Field Private Instance`
---@field open System.Single|number
---`Field Private Instance`
---@field flowForce Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field flowTargetHull Barotrauma.Hull
---`Field Private Instance`
---@field openedTimer System.Single|number
---`Field Private Instance`
---@field higherSurface System.Single|number
---`Field Private Instance`
---@field lowerSurface System.Single|number
---`Field Private Instance`
---@field lerpedFlowForce Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field DisableHullRechecks System.Boolean|boolean
---`Field Public Instance`
---@field PassAmbientLight System.Boolean|boolean
---`Field Private Instance`
---@field outsideCollisionBlocker FarseerPhysics.Dynamics.Body
---`Field Private Instance`
---@field outsideColliderRaycastTimer System.Single|number
---`Field Private Instance`
---@field connectedDoor Barotrauma.Items.Components.Door
---`Field Public Instance`
---@field ConnectedWall Barotrauma.Structure
---`Field Public Static`
---@field GapList System.Collections.Generic.List*1Barotrauma*Gap|Barotrauma.Gap[]
---`Field Public Static`
---@field ShowGaps System.Boolean|boolean
---`Field Private Static`
---@field MaxFlowForce System.Single|number
---`Field Private Static`
---@field OutsideColliderRaycastIntervalLowPrio System.Single|number
---`Field Private Static`
---@field OutsideColliderRaycastIntervalHighPrio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---@field IsDiagonal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Open System.Single|number
---`Getter Public Instance`
---@field Size System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ConnectedDoor Barotrauma.Items.Components.Door
---`Getter Public Instance`
---@field LerpedFlowForce Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field FlowTargetHull Barotrauma.Hull
---`Getter Public Instance`
---@field IsRoomToRoom System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---@field Name System.String|string
_G['Gap'] = {}

---`Method Public Instance Virtual`
---@return Barotrauma.MapEntity
_G['Gap'].Clone = function() end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Gap'].Move = function(amount, ignoreContacts) end

---`Method Public Static`
_G['Gap'].UpdateHulls = function() end

---`Method Public Instance Virtual`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Gap'].IsMouseOn = function(position) end

---`Method Public Instance`
_G['Gap'].AutoOrient = function() end

---`Method Private Instance`
_G['Gap'].FindHulls = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Gap'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param hull1 Barotrauma.Hull
---@param hull2 Barotrauma.Hull
_G['Gap'].UpdateRoomToRoom = function(deltaTime, hull1, hull2) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param hull1 Barotrauma.Hull
_G['Gap'].UpdateRoomToOut = function(deltaTime, hull1) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Gap'].RefreshOutsideCollider = function() end

---`Method Private Instance`
---@param hull Barotrauma.Hull
_G['Gap'].UpdateOutsideColliderPos = function(hull) end

---`Method Private Instance`
---@param hull1 Barotrauma.Hull
---@param hull2 Barotrauma.Hull
---@param deltaTime System.Single|number
_G['Gap'].UpdateOxygen = function(hull1, hull2, deltaTime) end

---`Method Public Static`
---@param gaps System.Collections.Generic.IEnumerable*1Barotrauma*Gap|(fun():Barotrauma.Gap)
---@param worldPos Microsoft.Xna.Framework.Vector2
---@param allowedOrthogonalDist System.Single|number
---@return Barotrauma.Gap
_G['Gap'].FindAdjacent = function(gaps, worldPos, allowedOrthogonalDist) end

---`Method Public Instance Virtual`
_G['Gap'].ShallowRemove = function() end

---`Method Public Instance Virtual`
_G['Gap'].Remove = function() end

---`Method Public Instance Virtual`
_G['Gap'].OnMapLoaded = function() end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param submarine Barotrauma.Submarine
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.Gap
_G['Gap'].Load = function(element, submarine, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Gap'].Save = function(parentElement) end

---`Constructor Public Instance`
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, isHorizontal:System.Boolean|boolean, submarine:Barotrauma.Submarine, isDiagonal?:System.Boolean|boolean, id?:System.UInt16|integer):Barotrauma.Gap
---@return Barotrauma.Gap
_G['Gap'] = function() end

---`Constructor Public Instance`
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, isHorizontal:System.Boolean|boolean, submarine:Barotrauma.Submarine, isDiagonal?:System.Boolean|boolean, id?:System.UInt16|integer):Barotrauma.Gap
---@return Barotrauma.Gap
_G['Gap'].__new = function() end

---`Constructor Private Static`
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, isHorizontal:System.Boolean|boolean, submarine:Barotrauma.Submarine, isDiagonal?:System.Boolean|boolean, id?:System.UInt16|integer):Barotrauma.Gap
---@return Barotrauma.Gap
_G['Gap'] = function() end

---`Constructor Private Static`
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, submarine:Barotrauma.Submarine):Barotrauma.Gap
---@overload fun(rect:Microsoft.Xna.Framework.Rectangle, isHorizontal:System.Boolean|boolean, submarine:Barotrauma.Submarine, isDiagonal?:System.Boolean|boolean, id?:System.UInt16|integer):Barotrauma.Gap
---@return Barotrauma.Gap
_G['Gap'].__new = function() end

