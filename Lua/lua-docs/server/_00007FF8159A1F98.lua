---@meta
---@class Barotrauma.Items.Components.MotionSensor : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field rangeX System.Single|number
---`Field Private Instance`
---@field rangeY System.Single|number
---`Field Private Instance`
---@field detectOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field updateTimer System.Single|number
---`Field Private Instance`
---@field maxOutputLength System.Int32|integer
---`Field Private Instance`
---@field output System.String|string
---`Field Private Instance`
---@field falseOutput System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MotionDetected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Target Barotrauma.Items.Components.MotionSensor.TargetType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreDead System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RangeX System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RangeY System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DetectOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field TransformedDetectOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UpdateInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOutputLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Output System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FalseOutput System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinimumVelocity System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DetectOwnMotion System.Boolean|boolean
_G['Components']['MotionSensor'] = {}

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['MotionSensor'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['MotionSensor'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['MotionSensor'].Save = function(parentElement) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MotionSensor
_G['Components']['MotionSensor'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MotionSensor
_G['Components']['MotionSensor'].__new = function(item, element) end

