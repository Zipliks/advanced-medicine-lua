---@meta
---@class Barotrauma.DebugConsole : System.Object
---`Field Public Static`
---@field QueuedCommands System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Static`
---@field input System.String|string
---`Field Private Static`
---@field memoryIndex System.Int32|integer
---`Field Private Static`
---@field commandMemory System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Static`
---@field queuedMessages System.Collections.Generic.Queue*1Barotrauma*ColoredText|(fun():Barotrauma.ColoredText)
---`Field Public Static`
---@field Messages System.Collections.Generic.List*1Barotrauma*ColoredText|Barotrauma.ColoredText[]
---`Field Private Static`
---@field activeQuestionCallback Barotrauma.DebugConsole.QuestionCallback|(fun(answer:System.String|string))
---`Field Private Static`
---@field commands System.Collections.Generic.List*1Barotrauma*DebugConsole*Command|Barotrauma.DebugConsole.Command[]
---`Field Private Static`
---@field currentAutoCompletedCommand System.String|string
---`Field Private Static`
---@field currentAutoCompletedIndex System.Int32|integer
---`Field Public Static`
---@field CheatsEnabled System.Boolean|boolean
---`Field Private Static`
---@field unsavedMessages System.Collections.Generic.List*1Barotrauma*ColoredText|Barotrauma.ColoredText[]
---`Field Private Static`
---@field messagesPerFile System.Int32|integer
---`Field Private Static`
---@field MaxMessages System.Int32|integer
---`Field Public Static`
---@field SavePath System.String|string
---`Getter Public Static`
---@field Commands System.Collections.Generic.List*1Barotrauma*DebugConsole*Command|Barotrauma.DebugConsole.Command[]
_G['DebugConsole'] = {}

---`Method Public Static`
_G['DebugConsole'].Update = function() end

---`Method Public Static`
---@param maxTime System.Int32|integer
_G['DebugConsole'].UpdateCommandLine = function(maxTime) end

---`Method Private Static`
---@param txt System.String|string
_G['DebugConsole'].WriteAndResetLine = function(txt) end

---`Method Private Static`
---@param input System.String|string
_G['DebugConsole'].RewriteInputToCommandLine = function(input) end

---`Method Public Static`
_G['DebugConsole'].Clear = function() end

---`Method Private Static`
---@param arg System.String|string
---@return Barotrauma.Networking.Client
_G['DebugConsole'].FindClient = function(arg) end

---`Method Public Static`
---@param names System.String|string
---@param onClientRequestExecute System.Action*1Barotrauma*Networking*Client*1Microsoft*Xna*Framework*Vector2*1System*String-arr|(fun(arg1:Barotrauma.Networking.Client, arg2:Microsoft.Xna.Framework.Vector2, arg3:System.String-arr|System.String|string[]))
_G['DebugConsole'].AssignOnClientRequestExecute = function(names, onClientRequestExecute) end

---`Method Private Static`
_G['DebugConsole'].InitProjectSpecific = function() end

---`Method Public Static`
---@param client Barotrauma.Networking.Client
---@param cursorWorldPos Microsoft.Xna.Framework.Vector2
---@param command System.String|string
_G['DebugConsole'].ExecuteClientCommand = function(client, cursorWorldPos, command) end

---`Method Private Static`
---@param command Barotrauma.DebugConsole.Command
_G['DebugConsole'].ShowHelpMessage = function(command) end

---`Method Public Static`
---@param names System.String|string
---@param onExecute System.Action*1System*String-arr|(fun(obj:System.String-arr|System.String|string[]))
_G['DebugConsole'].AssignOnExecute = function(names, onExecute) end

---`Method Public Static`
---@param command System.String|string
---@param increment? System.Int32|integer
---@return System.String|string
_G['DebugConsole'].AutoComplete = function(command, increment) end

---`Method Public Static`
_G['DebugConsole'].ResetAutoComplete = function() end

---`Method Public Static`
---@param command System.String|string
_G['DebugConsole'].ExecuteCommand = function(command) end

---`Method Private Static`
---@return System.String-arr|System.String|string[]
_G['DebugConsole'].ListCharacterNames = function() end

---`Method Private Static`
---@param args System.String-arr|System.String|string[]
---@param ignoreRemotePlayers? System.Boolean|boolean
---@param allowedRemotePlayer? Barotrauma.Networking.Client
---@return Barotrauma.Character
_G['DebugConsole'].FindMatchingCharacter = function(args, ignoreRemotePlayers, allowedRemotePlayer) end

---`Method Public Static`
---@param args System.String-arr|System.String|string[]
---@param cursorWorldPos Microsoft.Xna.Framework.Vector2
---@param errorMsg System.String-ref
_G['DebugConsole'].SpawnCharacter = function(args, cursorWorldPos, errorMsg) end

---`Method Public Static`
---@param args System.String-arr|System.String|string[]
---@param cursorPos Microsoft.Xna.Framework.Vector2
---@param controlledCharacter Barotrauma.Character
---@param errorMsg System.String-ref
_G['DebugConsole'].SpawnItem = function(args, cursorPos, controlledCharacter, errorMsg) end

---`Method Public Static`
---@param msg System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
_G['DebugConsole'].LogError = function(msg, color) end

---`Method Public Static`
---@param command System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
_G['DebugConsole'].NewCommand = function(command, color) end

---`Method Public Static`
---@overload fun(msg:Barotrauma.LocalizedString, color?:System.Nullable*1Microsoft*Xna*Framework*Color, debugOnly?:System.Boolean|boolean)
---@param msg System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param debugOnly? System.Boolean|boolean
_G['DebugConsole'].NewMessage = function(msg, color, debugOnly) end

---`Method Private Static`
---@param msg System.String|string
---@param color Microsoft.Xna.Framework.Color
---@param isCommand System.Boolean|boolean
---@param isError System.Boolean|boolean
_G['DebugConsole'].NewMessage = function(msg, color, isCommand, isError) end

---`Method Public Static`
---@param question System.String|string
---@param onAnswered Barotrauma.DebugConsole.QuestionCallback|(fun(answer:System.String|string))
---@param args? System.String-arr|System.String|string[]
---@param argCount? System.Int32|integer
_G['DebugConsole'].ShowQuestionPrompt = function(question, onAnswered, args, argCount) end

---`Method Private Static`
---@param s System.String|string
---@param timeSpan System.TimeSpan-ref
---@return System.Boolean|boolean
_G['DebugConsole'].TryParseTimeSpan = function(s, timeSpan) end

---`Method Public Static`
---@param commandName System.String|string
---@return Barotrauma.DebugConsole.Command
_G['DebugConsole'].FindCommand = function(commandName) end

---`Method Public Static`
---@overload fun(message:Barotrauma.LocalizedString)
---@param message System.String|string
_G['DebugConsole'].Log = function(message) end

---`Method Public Static`
---@overload fun(error:Barotrauma.LocalizedString, e?:System.Exception, createMessageBox?:System.Boolean|boolean, appendStackTrace?:System.Boolean|boolean)
---@param error System.String|string
---@param e? System.Exception
---@param createMessageBox? System.Boolean|boolean
---@param appendStackTrace? System.Boolean|boolean
_G['DebugConsole'].ThrowError = function(error, e, createMessageBox, appendStackTrace) end

---`Method Public Static`
---@param warning System.String|string
_G['DebugConsole'].AddWarning = function(warning) end

---`Method Public Static`
_G['DebugConsole'].SaveLogs = function() end

---`Method Public Static`
_G['DebugConsole'].DeactivateCheats = function() end

---`Constructor Private Static`
---@return Barotrauma.DebugConsole
_G['DebugConsole'] = function() end

---`Constructor Private Static`
---@return Barotrauma.DebugConsole
_G['DebugConsole'].__new = function() end

