---@meta
---@class Barotrauma.CrewManager : System.Object
---`Field Private Instance`
---@field conversationTimer System.Single|number
---`Field Private Instance`
---@field conversationLineTimer System.Single|number
---`Field Private Instance`
---@field pendingConversationLines System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Character*2System*String|System.ValueTuple*1Barotrauma*Character*1System*String[]
---`Field Private Instance`
---@field characterInfos System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Field Private Instance`
---@field characters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field welcomeMessageNPC Barotrauma.Character
---`Field Public Instance`
---@field ActiveReadyCheck Barotrauma.ReadyCheck
---`Field Private Static`
---@field ConversationIntervalMin System.Single|number
---`Field Private Static`
---@field ConversationIntervalMax System.Single|number
---`Field Private Static`
---@field ConversationIntervalMultiplierMultiplayer System.Single|number
---`Field Public Static`
---@field MaxCrewSize System.Int32|integer
---`Getter Public Instance`
---@field CharacterInfos System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HasBots System.Boolean|boolean
---`Getter Public Instance`
---@field ActiveOrders System.Collections.Generic.List*1Barotrauma*CrewManager*ActiveOrder|Barotrauma.CrewManager.ActiveOrder[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsSinglePlayer System.Boolean|boolean
_G['CrewManager'] = {}

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['CrewManager'].SaveMultiplayer = function(parentElement) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['CrewManager'].ServerWriteActiveOrders = function(msg) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CrewManager'].GetCharacters = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CharacterInfo|(fun():Barotrauma.CharacterInfo)
_G['CrewManager'].GetCharacterInfos = function() end

---`Method Public Instance`
---@param order Barotrauma.Order
---@param fadeOutTime System.Nullable*1System*Single|number
---@return System.Boolean|boolean
_G['CrewManager'].AddOrder = function(order, fadeOutTime) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].AddCharacterElements = function(element) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].RemoveCharacterInfo = function(characterInfo) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param sortCrewList? System.Boolean|boolean
_G['CrewManager'].AddCharacter = function(character, sortCrewList) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param removeInfo? System.Boolean|boolean
---@param resetCrewListIndex? System.Boolean|boolean
_G['CrewManager'].RemoveCharacter = function(character, removeInfo, resetCrewListIndex) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].AddCharacterInfo = function(characterInfo) end

---`Method Public Instance`
_G['CrewManager'].InitRound = function() end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param newName System.String|string
_G['CrewManager'].RenameCharacter = function(characterInfo, newName) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].FireCharacter = function(characterInfo) end

---`Method Public Instance`
_G['CrewManager'].ClearCurrentOrders = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['CrewManager'].Update = function(deltaTime) end

---`Method Public Instance`
---@param conversationLines System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Character*2System*String|System.ValueTuple*1Barotrauma*Character*1System*String[]
_G['CrewManager'].AddConversation = function(conversationLines) end

---`Method Private Instance`
_G['CrewManager'].CreateRandomConversation = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['CrewManager'].UpdateConversations = function(deltaTime) end

---`Method Public Static`
---@param order Barotrauma.Order
---@param controlledCharacter Barotrauma.Character
---@param characters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@param includeSelf? System.Boolean|boolean
---@return Barotrauma.Character
_G['CrewManager'].GetCharacterForQuickAssignment = function(order, controlledCharacter, characters, includeSelf) end

---`Method Public Static`
---@param order Barotrauma.Order
---@param characters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@param controlledCharacter Barotrauma.Character
---@param includeSelf System.Boolean|boolean
---@param extraCharacters? System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CrewManager'].GetCharactersSortedForOrder = function(order, characters, controlledCharacter, includeSelf, extraCharacters) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].SaveActiveOrders = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].LoadActiveOrders = function(element) end

---`Constructor Public Instance`
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'] = function(isSinglePlayer) end

---`Constructor Public Instance`
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'].__new = function(isSinglePlayer) end

