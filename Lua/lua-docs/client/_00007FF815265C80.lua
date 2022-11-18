---@meta
---@class Barotrauma.Networking.VoipClient : System.Object
---`Field Private Instance`
---@field gameClient Barotrauma.Networking.GameClient
---`Field Private Instance`
---@field netClient Barotrauma.Networking.ClientPeer
---`Field Private Instance`
---@field lastSendTime System.DateTime
---`Field Private Instance`
---@field queues System.Collections.Generic.List*1Barotrauma*Networking*VoipQueue|Barotrauma.Networking.VoipQueue[]
---`Field Private Instance`
---@field storedBufferID System.UInt16|integer
---`Field Private Static`
---@field voiceIconSheetRects Microsoft.Xna.Framework.Rectangle-arr|Microsoft.Xna.Framework.Rectangle[]
_G['VoipClient'] = {}

---`Method Public Instance`
---@param queue Barotrauma.Networking.VoipQueue
_G['VoipClient'].RegisterQueue = function(queue) end

---`Method Public Instance`
---@param queue Barotrauma.Networking.VoipQueue
_G['VoipClient'].UnregisterQueue = function(queue) end

---`Method Public Instance`
_G['VoipClient'].SendToServer = function() end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
_G['VoipClient'].Read = function(msg) end

---`Method Public Static`
---@param soundIcon Barotrauma.GUIImage
---@param voipAmplitude System.Single|number
---@param deltaTime System.Single|number
_G['VoipClient'].UpdateVoiceIndicator = function(soundIcon, voipAmplitude, deltaTime) end

---`Method Public Instance Virtual`
_G['VoipClient'].Dispose = function() end

---`Constructor Public Instance`
---@param gClient Barotrauma.Networking.GameClient
---@param nClient Barotrauma.Networking.ClientPeer
---@return Barotrauma.Networking.VoipClient
_G['VoipClient'] = function(gClient, nClient) end

---`Constructor Public Instance`
---@param gClient Barotrauma.Networking.GameClient
---@param nClient Barotrauma.Networking.ClientPeer
---@return Barotrauma.Networking.VoipClient
_G['VoipClient'].__new = function(gClient, nClient) end

