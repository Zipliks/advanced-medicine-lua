---@meta
---@class Barotrauma.ReadyCheck : System.Object
---`Field Private Instance`
---@field lastSecond System.Int32|integer
---`Field Private Instance`
---@field msgBox Barotrauma.GUIMessageBox
---`Field Private Instance`
---@field resultsBox Barotrauma.GUIMessageBox
---`Field Private Instance`
---@field endTime System.DateTime
---`Field Private Instance`
---@field startTime System.DateTime
---`Field Public Instance`
---@field Clients System.Collections.Generic.Dictionary*1System*Byte*1Barotrauma*ReadyStatus|{[System.Byte|integer]:Barotrauma.ReadyStatus}
---`Field Public Instance`
---@field IsFinished System.Boolean|boolean
---`Field Private Static`
---@field readyCheckHeader Barotrauma.LocalizedString
---`Field Private Static`
---@field noButton Barotrauma.LocalizedString
---`Field Private Static`
---@field yesButton Barotrauma.LocalizedString
---`Field Private Static`
---@field closeButton Barotrauma.LocalizedString
---`Field Public Static`
---@field ReadyCheckCooldown System.DateTime
---`Field Private Static`
---@field TimerData System.String|string
---`Field Private Static`
---@field PromptData System.String|string
---`Field Private Static`
---@field ResultData System.String|string
---`Field Private Static`
---@field UserListData System.String|string
---`Field Private Static`
---@field ReadySpriteData System.String|string
_G['ReadyCheck'] = {}

---`Method Private Static`
---@param name System.String|string
---@return Barotrauma.LocalizedString
_G['ReadyCheck'].readyCheckBody = function(name) end

---`Method Private Static`
---@param ready System.Int32|integer
---@param total System.Int32|integer
---@return Barotrauma.LocalizedString
_G['ReadyCheck'].readyCheckStatus = function(ready, total) end

---`Method Private Static`
---@param seconds System.Int32|integer
---@return Barotrauma.LocalizedString
_G['ReadyCheck'].readyCheckPleaseWait = function(seconds) end

---`Method Public Static`
---@param msgBox Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['ReadyCheck'].IsReadyCheck = function(msgBox) end

---`Method Private Instance`
---@param author System.String|string
_G['ReadyCheck'].CreateMessageBox = function(author) end

---`Method Private Instance`
_G['ReadyCheck'].CreateResultsMessage = function() end

---`Method Private Instance`
_G['ReadyCheck'].UpdateBar = function() end

---`Method Public Static`
---@param inc Barotrauma.Networking.IReadMessage
_G['ReadyCheck'].ClientRead = function(inc) end

---`Method Private Instance`
---@param id System.Byte|integer
---@param status Barotrauma.ReadyStatus
_G['ReadyCheck'].UpdateState = function(id, status) end

---`Method Private Static`
---@param status Barotrauma.ReadyStatus
_G['ReadyCheck'].SendState = function(status) end

---`Method Public Static`
_G['ReadyCheck'].CreateReadyCheck = function() end

---`Method Private Instance`
_G['ReadyCheck'].EndReadyCheck = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['ReadyCheck'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'] = function() end

---`Constructor Public Instance`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'].__new = function() end

---`Constructor Private Instance`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'] = function() end

---`Constructor Private Instance`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'].__new = function() end

---`Constructor Private Static`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'] = function() end

---`Constructor Private Static`
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], startTime:System.DateTime, endTime:System.DateTime):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[], duration:System.Single|number):Barotrauma.ReadyCheck
---@overload fun(clients:System.Collections.Generic.List*1System*Byte|System.Byte|integer[]):Barotrauma.ReadyCheck
---@return Barotrauma.ReadyCheck
_G['ReadyCheck'].__new = function() end

