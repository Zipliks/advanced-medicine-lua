---@meta
---@class Barotrauma.Items.Components.PowerContainer : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field chargeIndicator Barotrauma.GUIProgressBar
---`Field Private Instance`
---@field rechargeSpeedSlider Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field capacity System.Single|number
---`Field Private Instance`
---@field charge System.Single|number
---`Field Private Instance`
---@field prevCharge System.Single|number
---`Field Private Instance`
---@field maxRechargeSpeed System.Single|number
---`Field Private Instance`
---@field rechargeSpeed System.Single|number
---`Field Private Instance`
---@field lastSentCharge System.Single|number
---`Field NonPublic Instance`
---@field indicatorPosition Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field indicatorSize Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field isHorizontal System.Boolean|boolean
---`Field Private Instance`
---@field currPowerOutput System.Single|number
---`Field Private Instance`
---@field efficiency System.Single|number
---`Field Private Instance`
---@field isRunning System.Boolean|boolean
---`Field Public Static`
---@field aiRechargeTargetRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RechargeWarningIndicatorLow System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RechargeWarningIndicatorHigh System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter NonPublic Instance Virtual`
---@field Priority Barotrauma.Items.Components.PowerPriority
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrPowerOutput System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IndicatorPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IndicatorSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOutPut System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Capacity System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Charge System.Single|number
---`Getter Public Instance`
---@field ChargePercentage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxRechargeSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RechargeSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExponentialRechargeSpeed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Efficiency System.Single|number
---`Getter Public Instance`
---@field RechargeRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasBeenTuned System.Boolean|boolean
_G['Components']['PowerContainer'] = {}

---`Method Public Instance Virtual`
_G['Components']['PowerContainer'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['PowerContainer'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing? System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['PowerContainer'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['PowerContainer'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['PowerContainer'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
_G['Components']['PowerContainer'].InitProjSpecific = function() end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['PowerContainer'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['PowerContainer'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['PowerContainer'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param connection Barotrauma.Items.Components.Connection
---@param load? System.Single|number
---@return Barotrauma.Items.Components.PowerRange
_G['Components']['PowerContainer'].MinMaxPowerOut = function(connection, load) end

---`Method Public Instance Virtual`
---@param connection Barotrauma.Items.Components.Connection
---@param power System.Single|number
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single|number
---@return System.Single|number
_G['Components']['PowerContainer'].GetConnectionPowerOut = function(connection, power, minMaxPower, load) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
_G['Components']['PowerContainer'].GridResolved = function(conn) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['PowerContainer'].AIOperate = function(deltaTime, character, objective) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['PowerContainer'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PowerContainer
_G['Components']['PowerContainer'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PowerContainer
_G['Components']['PowerContainer'].__new = function(item, element) end

