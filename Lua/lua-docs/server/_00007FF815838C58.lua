---@meta
---@class Barotrauma.ServerMsgLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field serverMessage System.String|string
---`Field Private Instance`
---@field messageSplit System.Collections.Immutable.ImmutableArray*1System*String|System.String|string[]
---`Field Private Instance`
---@field loadedSuccessfully Barotrauma.LocalizedString.LoadedSuccessfully
---`Field Private Static`
---@field reFormattedMessage System.Text.RegularExpressions.Regex
---`Field Private Static`
---@field reReplacedMessage System.Text.RegularExpressions.Regex
---`Field Private Static`
---@field messageFormatters System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Func*2System*String*2System*String|{[Barotrauma.Identifier]:System.Func*1System*String*1System*String|(fun(arg:System.String|string):System.String|string)}
---`Field Private Static`
---@field serverMessageCharacters System.Collections.Immutable.ImmutableHashSet*1System*Char|System.Char[]
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['ServerMsgLString'] = {}

---`Method Private Static`
---@param message System.String|string
---@return System.Boolean|boolean
_G['ServerMsgLString'].IsServerMessageWithVariables = function(message) end

---`Method Public Instance Virtual`
_G['ServerMsgLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@overload fun(serverMsg:System.String|string):Barotrauma.ServerMsgLString
---@return Barotrauma.ServerMsgLString
_G['ServerMsgLString'] = function() end

---`Constructor Public Instance`
---@overload fun(serverMsg:System.String|string):Barotrauma.ServerMsgLString
---@return Barotrauma.ServerMsgLString
_G['ServerMsgLString'].__new = function() end

---`Constructor Private Static`
---@overload fun(serverMsg:System.String|string):Barotrauma.ServerMsgLString
---@return Barotrauma.ServerMsgLString
_G['ServerMsgLString'] = function() end

---`Constructor Private Static`
---@overload fun(serverMsg:System.String|string):Barotrauma.ServerMsgLString
---@return Barotrauma.ServerMsgLString
_G['ServerMsgLString'].__new = function() end

