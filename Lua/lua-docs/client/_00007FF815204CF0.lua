---@meta
---@class Barotrauma.Items.Components.Reactor : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field powerLight Barotrauma.GUITickBox
---`Field Private Instance`
---@field autoTempLight Barotrauma.GUITickBox
---`Field Private Instance`
---@field graphTimer System.Single|number
---`Field Private Instance`
---@field updateGraphInterval System.Int32|integer
---`Field Private Instance`
---@field fissionRateMeter Barotrauma.Sprite
---`Field Private Instance`
---@field turbineOutputMeter Barotrauma.Sprite
---`Field Private Instance`
---@field meterPointer Barotrauma.Sprite
---`Field Private Instance`
---@field sectorSprite Barotrauma.Sprite
---`Field Private Instance`
---@field tempMeterFrame Barotrauma.Sprite
---`Field Private Instance`
---@field tempMeterBar Barotrauma.Sprite
---`Field Private Instance`
---@field tempRangeIndicator Barotrauma.Sprite
---`Field Private Instance`
---@field graphLine Barotrauma.Sprite
---`Field Private Instance`
---@field optimalRangeColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field offRangeColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field warningColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field temperatureColors Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---`Field Private Instance`
---@field outputColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field loadColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field temperatureBoostSoundUp Barotrauma.RoundSound
---`Field Private Instance`
---@field temperatureBoostSoundDown Barotrauma.RoundSound
---`Field Private Instance`
---@field temperatureBoostUpButton Barotrauma.GUIButton
---`Field Private Instance`
---@field temperatureBoostDownButton Barotrauma.GUIButton
---`Field Private Instance`
---@field outputGraph System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field loadGraph System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field criticalHeatWarning Barotrauma.GUITickBox
---`Field Private Instance`
---@field lowTemperatureWarning Barotrauma.GUITickBox
---`Field Private Instance`
---@field criticalOutputWarning Barotrauma.GUITickBox
---`Field Private Instance`
---@field inventoryContainer Barotrauma.GUIFrame
---`Field Private Instance`
---@field paddedFrame Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field warningButtons System.Collections.Generic.Dictionary*1System*String*1Barotrauma*GUIButton|{[System.String|string]:Barotrauma.GUIButton}
---`Field Private Instance`
---@field fissionRate System.Single|number
---`Field Private Instance`
---@field turbineOutput System.Single|number
---`Field Private Instance`
---@field temperature System.Single|number
---`Field Private Instance`
---@field autoTemp System.Boolean|boolean
---`Field Private Instance`
---@field autoAdjustAmount System.Single|number
---`Field Private Instance`
---@field fuelConsumptionRate System.Single|number
---`Field Private Instance`
---@field meltDownTimer System.Single|number
---`Field Private Instance`
---@field meltDownDelay System.Single|number
---`Field Private Instance`
---@field fireTimer System.Single|number
---`Field Private Instance`
---@field fireDelay System.Single|number
---`Field Private Instance`
---@field maxPowerOutput System.Single|number
---`Field Private Instance`
---@field minUpdatePowerOut System.Single|number
---`Field Private Instance`
---@field maxUpdatePowerOut System.Single|number
---`Field Private Instance`
---@field unsentChanges System.Boolean|boolean
---`Field Private Instance`
---@field sendUpdateTimer System.Single|number
---`Field Private Instance`
---@field degreeOfSuccess System.Single|number
---`Field Private Instance`
---@field optimalTemperature Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field allowedTemperature Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field optimalFissionRate Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field allowedFissionRate Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field optimalTurbineOutput Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field allowedTurbineOutput Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field signalControlledTargetFissionRate System.Nullable*1System*Single|number
---`Field Private Instance`
---@field signalControlledTargetTurbineOutput System.Nullable*1System*Single|number
---`Field Private Instance`
---@field lastReceivedFissionRateSignalTime System.Double|number
---`Field Private Instance`
---@field lastReceivedTurbineOutputSignalTime System.Double|number
---`Field Private Instance`
---@field temperatureBoost System.Single|number
---`Field Private Instance`
---@field _powerOn System.Boolean|boolean
---`Field Private Instance`
---@field lastUser Barotrauma.Character
---`Field Private Instance`
---@field prevAvailableFuel System.Single|number
---`Field Private Static`
---@field warningTexts System.String-arr|System.String|string[]
---`Field Private Static`
---@field GraphSize System.Int32|integer
---`Field Private Static`
---@field NetworkUpdateIntervalHigh System.Single|number
---`Field Private Static`
---@field TemperatureBoostAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AutoTempSwitch Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PowerButton Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FissionRateScrollBar Barotrauma.GUIScrollBar
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TurbineOutputScrollBar Barotrauma.GUIScrollBar
---`Getter Public Instance Virtual`
---@field RecreateGUIOnResolutionChange System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerOn System.Boolean|boolean
---`Getter NonPublic Instance Virtual`
---@field Priority Barotrauma.Items.Components.PowerPriority
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastAIUser Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastUserWasPlayer System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastUser Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxPowerOutput System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MeltdownDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Temperature System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FissionRate System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TurbineOutput System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FuelConsumptionRate System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TemperatureCritical System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoTemp System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvailableFuel System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Load System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetFissionRate System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetTurbineOutput System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CorrectTurbineOutput System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExplosionDamagesOtherSubs System.Boolean|boolean
_G['Components']['Reactor'] = {}

---`Method NonPublic Instance Virtual`
_G['Components']['Reactor'].CreateGUI = function() end

---`Method Private Instance`
_G['Components']['Reactor'].InitInventoryUI = function() end

---`Method Public Instance Virtual`
_G['Components']['Reactor'].OnItemLoaded = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['Reactor'].DrawTempMeter = function(spriteBatch, container) end

---`Method Private Instance`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.SpriteBatch, container:Barotrauma.GUICustomComponent)
---@param graph System.Collections.Generic.IList*1System*Single|System.Single|number[]
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
---@param maxVal System.Single|number
---@param xOffset System.Single|number
---@param color Microsoft.Xna.Framework.Color
_G['Components']['Reactor'].DrawGraph = function(graph, spriteBatch, rect, maxVal, xOffset, color) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Reactor'].UpdateGraph = function(deltaTime) end

---`Method Private Static`
---@param graph System.Collections.Generic.IList*1Barotrauma*Items*Components*Reactor*T|Barotrauma.Items.Components.Reactor.T[]
---@param newValue Barotrauma.Items.Components.Reactor.T
_G['Components']['Reactor'].UpdateGraph = function(graph, newValue) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['Reactor'].DrawFissionRateMeter = function(spriteBatch, container) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['Reactor'].DrawTurbineOutputMeter = function(spriteBatch, container) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Reactor'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
---@param meterSprite Barotrauma.Sprite
---@param value System.Single|number
---@param range Microsoft.Xna.Framework.Vector2
---@param optimalRange Microsoft.Xna.Framework.Vector2
---@param allowedRange Microsoft.Xna.Framework.Vector2
_G['Components']['Reactor'].DrawMeter = function(spriteBatch, rect, meterSprite, value, range, optimalRange, allowedRange) end

---`Method NonPublic Instance Virtual`
_G['Components']['Reactor'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Reactor'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Reactor'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
_G['Components']['Reactor'].UpdateUIElementStates = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Reactor'].InitProjSpecific = function(element) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Reactor'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Reactor'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
---@param load System.Single|number
---@return Barotrauma.Items.Components.PowerRange
_G['Components']['Reactor'].MinMaxPowerOut = function(conn, load) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single|number
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single|number
---@return System.Single|number
_G['Components']['Reactor'].GetConnectionPowerOut = function(conn, power, minMaxPower, load) end

---`Method Private Instance`
---@param fissionRate System.Single|number
---@return System.Single|number
_G['Components']['Reactor'].GetGeneratedHeat = function(fissionRate) end

---`Method Private Instance`
---@param minimumOutputRatio System.Single|number
---@param minCondition? System.Single|number
---@return System.Boolean|boolean
_G['Components']['Reactor'].NeedMoreFuel = function(minimumOutputRatio, minCondition) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['Reactor'].TooMuchFuel = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Reactor'].UpdateFailures = function(deltaTime) end

---`Method Public Instance`
---@param speed System.Single|number
---@param deltaTime System.Single|number
_G['Components']['Reactor'].UpdateAutoTemp = function(speed, deltaTime) end

---`Method Public Instance`
_G['Components']['Reactor'].PowerUpImmediately = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Reactor'].UpdateBroken = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['Reactor'].MeltDown = function() end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Reactor'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['Reactor'].AIOperate = function(deltaTime, character, objective) end

---`Method Public Instance Virtual`
_G['Components']['Reactor'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Reactor'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Reactor
---@return Barotrauma.Items.Components.Reactor
_G['Components']['Reactor'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Reactor
---@return Barotrauma.Items.Components.Reactor
_G['Components']['Reactor'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Reactor
---@return Barotrauma.Items.Components.Reactor
_G['Components']['Reactor'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Reactor
---@return Barotrauma.Items.Components.Reactor
_G['Components']['Reactor'].__new = function() end

