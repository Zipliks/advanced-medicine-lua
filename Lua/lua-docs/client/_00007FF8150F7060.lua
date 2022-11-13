---@meta
---@class Barotrauma.Camera : System.Object
---`Field Private Instance`
---@field defaultZoom System.Nullable*1System*Single|number
---`Field Private Instance`
---@field zoomSmoothness System.Single|number
---`Field Private Instance`
---@field moveSmoothness System.Single|number
---`Field Private Instance`
---@field minZoom System.Single|number
---`Field Private Instance`
---@field maxZoom System.Single|number
---`Field Public Instance`
---@field FreeCamMoveSpeed System.Single|number
---`Field Private Instance`
---@field zoom System.Single|number
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
---@field angularVelocity System.Single|number
---`Field Private Instance`
---@field angularDamping System.Single|number
---`Field Private Instance`
---@field angularSpring System.Single|number
---`Field Private Instance`
---@field prevPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field prevZoom System.Single|number
---`Field Public Instance`
---@field Shake System.Single|number
---`Field Private Instance`
---@field shakePosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field shakeTimer System.Single|number
---`Field Private Instance`
---@field globalZoomScale System.Single|number
---`Field Private Instance`
---@field targetZoom System.Single|number
---`Field Private Instance`
---@field velocity Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field disposed System.Boolean|boolean
---`Field Private Instance`
---@field previousOffset Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field FollowSub System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DefaultZoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ZoomSmoothness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MoveSmoothness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinZoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxZoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Zoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AngularVelocity System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OffsetAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Resolution Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---<br/>`Setter Private Instance`
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
---@field Freeze System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
_G['Camera'] = {}

---`Method Public Instance Virtual`
_G['Camera'].Dispose = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].GetPosition = function() end

---`Method Public Instance`
---@param amount Microsoft.Xna.Framework.Vector2
_G['Camera'].Translate = function(amount) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['Camera'].ClientWrite = function(msg) end

---`Method Private Instance`
_G['Camera'].CreateMatrices = function() end

---`Method Public Instance`
---@param res Microsoft.Xna.Framework.Point
_G['Camera'].SetResolution = function(res) end

---`Method Public Instance`
---@param interpolate? System.Boolean|boolean
---@param updateListener? System.Boolean|boolean
_G['Camera'].UpdateTransform = function(interpolate, updateListener) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param allowMove? System.Boolean|boolean
---@param allowZoom? System.Boolean|boolean
---@param followSub? System.Nullable*1System*Boolean|boolean
_G['Camera'].MoveCamera = function(deltaTime, allowMove, allowZoom, followSub) end

---`Method Public Instance`
_G['Camera'].StopMovement = function() end

---`Method Public Instance`
---@param coords Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].ScreenToWorld = function(coords) end

---`Method Public Instance`
---@param coords Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Camera'].WorldToScreen = function(coords) end

---`Method Private Instance`
---@param offset Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['Camera'].GetZoomAmount = function(offset) end

---`Method Public Instance`
---@return System.Single|number
_G['Camera'].GetZoomAmountFromPrevious = function() end

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

