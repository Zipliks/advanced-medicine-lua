---@meta
---@class Barotrauma.Camera : System.Object
---`Field Private Instance`
---@field zoom System.Single|number
---`Field Private Instance`
---@field offsetAmount System.Single|number
---`Field Private Instance`
---@field transform Microsoft.Xna.Framework.Matrix
---`Field Private Instance`
---@field shaderTransform Microsoft.Xna.Framework.Matrix
---`Field Private Instance`
---@field viewMatrix Microsoft.Xna.Framework.Matrix
---`Field Private Instance`
---@field position Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field rotation System.Single|number
---`Field Private Instance`
---@field prevPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field prevZoom System.Single|number
---`Field Public Instance`
---@field Shake System.Single|number
---`Field Private Instance`
---@field shakePosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field shakeTargetPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field worldView Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field resolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field targetPos Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field Instance Barotrauma.Camera
---`Field Public Static`
---@field FollowSub System.Boolean|boolean
---`Field Private Static`
---@field DefaultZoom System.Single|number
---`Field Private Static`
---@field ZoomSmoothness System.Single|number
---`Field Private Static`
---@field MoveSmoothness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Zoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OffsetAmount System.Single|number
---`Getter Public Instance`
---@field Resolution Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field WorldView Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field WorldViewCenter Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Transform Microsoft.Xna.Framework.Matrix
---`Getter Public Instance`
---@field ShaderTransform Microsoft.Xna.Framework.Matrix
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
_G['Camera'] = {}

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].GetPosition = function() end

---`Method Public Instance`
---@param amount Microsoft.Xna.Framework.Vector2
_G['Camera'].Translate = function(amount) end

---`Method Public Instance`
---@param interpolate? System.Boolean|boolean
---@param clampPos? System.Boolean|boolean
_G['Camera'].UpdateTransform = function(interpolate, clampPos) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param allowMove? System.Boolean|boolean
---@param allowZoom? System.Boolean|boolean
_G['Camera'].MoveCamera = function(deltaTime, allowMove, allowZoom) end

---`Method Public Instance`
---@param coords Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].ScreenToWorld = function(coords) end

---`Method Public Instance`
---@param coords Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].WorldToScreen = function(coords) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Camera
---@return Barotrauma.Camera
_G['Camera'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Camera
---@return Barotrauma.Camera
_G['Camera'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.Camera
---@return Barotrauma.Camera
_G['Camera'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.Camera
---@return Barotrauma.Camera
_G['Camera'].__new = function() end

