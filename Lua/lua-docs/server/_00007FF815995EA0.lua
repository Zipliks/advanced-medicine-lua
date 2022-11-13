---@meta
---@class Barotrauma.Items.Components.Pickable : Barotrauma.Items.Components.ItemComponent
---`Field NonPublic Instance`
---@field picker Barotrauma.Character
---`Field NonPublic Instance`
---@field allowedSlots System.Collections.Generic.List*1Barotrauma*InvSlotType|Barotrauma.InvSlotType[]
---`Field Private Instance`
---@field pickTimer System.Single|number
---`Field Private Instance`
---@field activePicker Barotrauma.Character
---`Field Private Instance`
---@field pickingCoroutine Barotrauma.CoroutineHandle
---`Getter Public Instance Virtual`
---@field IsAttached System.Boolean|boolean
---`Getter Public Instance`
---@field AllowedSlots System.Collections.Generic.List*1Barotrauma*InvSlotType|Barotrauma.InvSlotType[]
---`Getter Public Instance`
---@field Picker Barotrauma.Character
_G['Components']['Pickable'] = {}

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Pickable'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Pickable'].OnPicked = function(picker) end

---`Method Private Instance`
---@param picker Barotrauma.Character
---@param requiredTime System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Components']['Pickable'].WaitForPick = function(picker, requiredTime) end

---`Method NonPublic Instance`
---@param picker Barotrauma.Character
_G['Components']['Pickable'].StopPicking = function(picker) end

---`Method NonPublic Instance`
---@param character Barotrauma.Character
_G['Components']['Pickable'].DropConnectedWires = function(character) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Pickable'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Pickable'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Pickable'].ClientEventRead = function(msg, sendingTime) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pickable
_G['Components']['Pickable'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pickable
_G['Components']['Pickable'].__new = function(item, element) end

