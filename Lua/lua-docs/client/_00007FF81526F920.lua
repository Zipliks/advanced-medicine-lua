---@meta
---@class Barotrauma.DebugConsole.Command : System.Object
---`Field Public Instance`
---@field OnClientExecute System.Action*1System*String-arr|(fun(obj:System.String-arr|System.String|string[]))
---`Field Public Instance`
---@field RelayToServer System.Boolean|boolean
---`Field Public Instance`
---@field names System.String-arr|System.String|string[]
---`Field Public Instance`
---@field help System.String|string
---`Field Public Instance`
---@field OnExecute System.Action*1System*String-arr|(fun(obj:System.String-arr|System.String|string[]))
---`Field Public Instance`
---@field GetValidArgs System.Func*1System*String-arr-arr|(fun():System.String-arr-arr|System.String-arr|System.String|string[][])
---`Field Public Instance`
---@field IsCheat System.Boolean|boolean
_G['DebugConsole']['Command'] = {}

---`Method Public Instance`
---@param args System.String-arr|System.String|string[]
_G['DebugConsole']['Command'].ClientExecute = function(args) end

---`Method Public Instance`
---@param args System.String-arr|System.String|string[]
_G['DebugConsole']['Command'].Execute = function(args) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['DebugConsole']['Command'].GetHashCode = function() end

---`Constructor Public Instance`
---@param name System.String|string
---@param help System.String|string
---@param onExecute System.Action*1System*String-arr|(fun(obj:System.String-arr|System.String|string[]))
---@param getValidArgs? System.Func*1System*String-arr-arr|(fun():System.String-arr-arr|System.String-arr|System.String|string[][])
---@param isCheat? System.Boolean|boolean
---@return Barotrauma.DebugConsole.Command
_G['DebugConsole']['Command'] = function(name, help, onExecute, getValidArgs, isCheat) end

---`Constructor Public Instance`
---@param name System.String|string
---@param help System.String|string
---@param onExecute System.Action*1System*String-arr|(fun(obj:System.String-arr|System.String|string[]))
---@param getValidArgs? System.Func*1System*String-arr-arr|(fun():System.String-arr-arr|System.String-arr|System.String|string[][])
---@param isCheat? System.Boolean|boolean
---@return Barotrauma.DebugConsole.Command
_G['DebugConsole']['Command'].__new = function(name, help, onExecute, getValidArgs, isCheat) end

