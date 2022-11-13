---@meta
---@class Barotrauma.Networking.ServerLog : System.Object
---`Field Public Instance`
---@field LogFrame Barotrauma.GUIButton
---`Field Private Instance`
---@field listBox Barotrauma.GUIListBox
---`Field Private Instance`
---@field reverseButton Barotrauma.GUIButton
---`Field Private Instance`
---@field msgFilter System.String|string
---`Field Private Instance`
---@field reverseOrder System.Boolean|boolean
---`Field Private Instance`
---@field messageColor System.Collections.Generic.Dictionary*1Barotrauma*Networking*ServerLog*MessageType*1Microsoft*Xna*Framework*Color|{[Barotrauma.Networking.ServerLog.MessageType]:Microsoft.Xna.Framework.Color}
---`Field Private Instance`
---@field messageTypeName System.Collections.Generic.Dictionary*1Barotrauma*Networking*ServerLog*MessageType*1System*String|{[Barotrauma.Networking.ServerLog.MessageType]:System.String|string}
---`Field Private Instance`
---@field linesPerFile System.Int32|integer
---`Field Private Instance`
---@field lines System.Collections.Generic.Queue*1Barotrauma*Networking*ServerLog*LogMessage|(fun():Barotrauma.Networking.ServerLog.LogMessage)
---`Field Private Instance`
---@field unsavedLines System.Collections.Generic.Queue*1Barotrauma*Networking*ServerLog*LogMessage|(fun():Barotrauma.Networking.ServerLog.LogMessage)
---`Field Private Instance`
---@field msgTypeHidden System.Boolean-arr|System.Boolean|boolean[]
---`Field Public Instance`
---@field ServerName System.String|string
---`Field Public Static`
---@field SavePath System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LinesPerFile System.Int32|integer
_G['ServerLog'] = {}

---`Method Private Instance`
---@param btn Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['ServerLog'].OnReverseClicked = function(btn, obj) end

---`Method Public Instance`
_G['ServerLog'].CreateLogFrame = function() end

---`Method Public Instance`
---@param inReverseButton Barotrauma.GUIButton
---@param inListBox Barotrauma.GUIListBox
---@param tickBoxContainer Barotrauma.GUIComponent
---@param searchBox Barotrauma.GUITextBox
_G['ServerLog'].AssignLogFrame = function(inReverseButton, inListBox, tickBoxContainer, searchBox) end

---`Method Private Instance`
---@param line Barotrauma.Networking.ServerLog.LogMessage
_G['ServerLog'].AddLine = function(line) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['ServerLog'].FilterMessages = function() end

---`Method Private Instance`
---@param reverse System.Boolean|boolean
_G['ServerLog'].SetMessageReversal = function(reverse) end

---`Method Public Instance`
---@param button Barotrauma.GUIComponent
---@param _ System.Object
---@return System.Boolean|boolean
_G['ServerLog'].ClearFilter = function(button, _) end

---`Method Public Instance`
---@param line System.String|string
---@param messageType Barotrauma.Networking.ServerLog.MessageType
_G['ServerLog'].WriteLine = function(line, messageType) end

---`Method Public Instance`
_G['ServerLog'].Save = function() end

---`Constructor Public Instance`
---@param serverName System.String|string
---@return Barotrauma.Networking.ServerLog
_G['ServerLog'] = function(serverName) end

---`Constructor Public Instance`
---@param serverName System.String|string
---@return Barotrauma.Networking.ServerLog
_G['ServerLog'].__new = function(serverName) end

