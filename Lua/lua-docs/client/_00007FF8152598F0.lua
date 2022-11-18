---@meta
---@class Barotrauma.GUINumberInput : Barotrauma.GUIComponent
---`Field Public Instance`
---@field OnValueEntered Barotrauma.GUINumberInput.OnValueEnteredHandler|(fun(numberInput:Barotrauma.GUINumberInput))
---`Field Public Instance`
---@field OnValueChanged Barotrauma.GUINumberInput.OnValueChangedHandler|(fun(numberInput:Barotrauma.GUINumberInput))
---`Field Private Instance`
---@field inputType Barotrauma.NumberType
---`Field Private Instance`
---@field minValueFloat System.Nullable*1System*Single|number
---`Field Private Instance`
---@field maxValueFloat System.Nullable*1System*Single|number
---`Field Private Instance`
---@field floatValue System.Single|number
---`Field Private Instance`
---@field decimalsToDisplay System.Int32|integer
---`Field Private Instance`
---@field minValueInt System.Nullable*1System*Int32|integer
---`Field Private Instance`
---@field maxValueInt System.Nullable*1System*Int32|integer
---`Field Private Instance`
---@field intValue System.Int32|integer
---`Field Public Instance`
---@field valueStep System.Single|number
---`Field Private Instance`
---@field pressedTimer System.Single|number
---`Field Private Instance`
---@field pressedDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TextBox Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PlusButton Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinusButton Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InputType Barotrauma.NumberType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinValueFloat System.Nullable*1System*Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxValueFloat System.Nullable*1System*Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FloatValue System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DecimalsToDisplay System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinValueInt System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxValueInt System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IntValue System.Int32|integer
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Enabled System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Font Barotrauma.GUIFont
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LayoutGroup Barotrauma.GUILayoutGroup
---`Getter Private Instance`
---@field IsPressedTimerRunning System.Boolean|boolean
_G['GUI']['NumberInput'] = {}

---`Method Private Instance`
_G['GUI']['NumberInput'].HidePlusMinusButtons = function() end

---`Method Private Instance`
_G['GUI']['NumberInput'].ShowPlusMinusButtons = function() end

---`Method Private Instance`
_G['GUI']['NumberInput'].ReduceValue = function() end

---`Method Private Instance`
_G['GUI']['NumberInput'].IncreaseValue = function() end

---`Method Private Instance`
---@return System.Single|number
_G['GUI']['NumberInput'].Round = function() end

---`Method Private Instance`
---@param textBox Barotrauma.GUITextBox
---@param text System.String|string
---@return System.Boolean|boolean
_G['GUI']['NumberInput'].TextChanged = function(textBox, text) end

---`Method Private Instance`
_G['GUI']['NumberInput'].ClampFloatValue = function() end

---`Method Private Instance`
_G['GUI']['NumberInput'].ClampIntValue = function() end

---`Method Private Instance`
_G['GUI']['NumberInput'].UpdateText = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['NumberInput'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param inputType Barotrauma.NumberType
---@param style? System.String|string
---@param textAlignment? Barotrauma.Alignment
---@param relativeButtonAreaWidth? System.Nullable*1System*Single|number
---@param hidePlusMinusButtons? System.Boolean|boolean
---@return Barotrauma.GUINumberInput
_G['GUI']['NumberInput'] = function(rectT, inputType, style, textAlignment, relativeButtonAreaWidth, hidePlusMinusButtons) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param inputType Barotrauma.NumberType
---@param style? System.String|string
---@param textAlignment? Barotrauma.Alignment
---@param relativeButtonAreaWidth? System.Nullable*1System*Single|number
---@param hidePlusMinusButtons? System.Boolean|boolean
---@return Barotrauma.GUINumberInput
_G['GUI']['NumberInput'].__new = function(rectT, inputType, style, textAlignment, relativeButtonAreaWidth, hidePlusMinusButtons) end

