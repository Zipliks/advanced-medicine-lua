---@meta
---@class Barotrauma.Networking.ChatMessage : System.Object
---`Field Public Instance`
---@field Text System.String|string
---`Field Private Instance`
---@field translatedText System.String|string
---`Field Public Instance`
---@field Type Barotrauma.Networking.ChatMessageType
---`Field Public Instance`
---@field ChangeType Barotrauma.Networking.PlayerConnectionChangeType
---`Field Public Instance`
---@field IconStyle System.String|string
---`Field Public Instance`
---@field Sender Barotrauma.Character
---`Field Public Instance`
---@field SenderClient Barotrauma.Networking.Client
---`Field Public Instance`
---@field SenderName System.String|string
---`Field Private Instance`
---@field customTextColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Private Static`
---@field dateTimeFormatLongTimePattern System.String|string
---`Field Public Static`
---@field MessageColor Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---`Field Public Static`
---@field LastID System.UInt16|integer
---`Field Public Static`
---@field MaxLength System.Int32|integer
---`Field Public Static`
---@field MaxMessagesPerPacket System.Int32|integer
---`Field Public Static`
---@field SpeakRange System.Single|number
---`Getter Public Instance`
---@field TranslatedText System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field TextWithSender System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NetStateID System.UInt16|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ChatMode Barotrauma.ChatMode
_G['ChatMessage'] = {}

---`Method Public Static`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['ChatMessage'].ServerRead = function(msg, c) end

---`Method Public Instance`
---@param c Barotrauma.Networking.Client
---@return System.Int32|integer
_G['ChatMessage'].EstimateLengthBytesServer = function(c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['ChatMessage'].ServerWrite = function(msg, c) end

---`Method Public Static`
---@return System.String|string
_G['ChatMessage'].GetTimeStamp = function() end

---`Method Public Static`
---@param senderName System.String|string
---@param text System.String|string
---@param type Barotrauma.Networking.ChatMessageType
---@param sender Barotrauma.Character
---@param client? Barotrauma.Networking.Client
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param textColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@return Barotrauma.Networking.ChatMessage
_G['ChatMessage'].Create = function(senderName, text, type, sender, client, changeType, textColor) end

---`Method Public Static`
---@param message System.String|string
---@param messageWithoutCommand System.String-ref
---@return System.String|string
_G['ChatMessage'].GetChatMessageCommand = function(message, messageWithoutCommand) end

---`Method Public Static`
---@param listener Barotrauma.Entity
---@param sender Barotrauma.Entity
---@param range System.Single|number
---@param obstructionmult? System.Single|number
---@return System.Single|number
_G['ChatMessage'].GetGarbleAmount = function(listener, sender, range, obstructionmult) end

---`Method Public Instance`
---@param listener Barotrauma.Character
---@return System.String|string
_G['ChatMessage'].ApplyDistanceEffect = function(listener) end

---`Method Public Static`
---@overload fun(listener:Barotrauma.Entity, sender:Barotrauma.Entity, text:System.String|string, range:System.Single|number, obstructionmult?:System.Single|number):System.String|string
---@overload fun(text:System.String|string, garbleAmount:System.Single|number):System.String|string
---@param message System.String|string
---@param type Barotrauma.Networking.ChatMessageType
---@param sender Barotrauma.Character
---@param receiver Barotrauma.Character
---@return System.String|string
_G['ChatMessage'].ApplyDistanceEffect = function(message, type, sender, receiver) end

---`Method Public Instance`
---@return System.Int32|integer
_G['ChatMessage'].EstimateLengthBytesClient = function() end

---`Method Public Static`
---@overload fun(sender:Barotrauma.Character):System.Boolean|boolean
---@param sender Barotrauma.Character
---@param radio Barotrauma.Items.Components.WifiComponent-ref
---@return System.Boolean|boolean
_G['ChatMessage'].CanUseRadio = function(sender, radio) end

---`Constructor NonPublic Instance`
---@overload fun(senderName:System.String|string, text:System.String|string, type:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character, client:Barotrauma.Networking.Client, changeType?:Barotrauma.Networking.PlayerConnectionChangeType, textColor?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.Networking.ChatMessage
---@return Barotrauma.Networking.ChatMessage
_G['ChatMessage'] = function() end

---`Constructor NonPublic Instance`
---@overload fun(senderName:System.String|string, text:System.String|string, type:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character, client:Barotrauma.Networking.Client, changeType?:Barotrauma.Networking.PlayerConnectionChangeType, textColor?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.Networking.ChatMessage
---@return Barotrauma.Networking.ChatMessage
_G['ChatMessage'].__new = function() end

---`Constructor Private Static`
---@overload fun(senderName:System.String|string, text:System.String|string, type:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character, client:Barotrauma.Networking.Client, changeType?:Barotrauma.Networking.PlayerConnectionChangeType, textColor?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.Networking.ChatMessage
---@return Barotrauma.Networking.ChatMessage
_G['ChatMessage'] = function() end

---`Constructor Private Static`
---@overload fun(senderName:System.String|string, text:System.String|string, type:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character, client:Barotrauma.Networking.Client, changeType?:Barotrauma.Networking.PlayerConnectionChangeType, textColor?:System.Nullable*1Microsoft*Xna*Framework*Color):Barotrauma.Networking.ChatMessage
---@return Barotrauma.Networking.ChatMessage
_G['ChatMessage'].__new = function() end

