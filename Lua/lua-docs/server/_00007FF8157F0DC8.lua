---@meta
---@class Barotrauma.LuaCsFile : System.Object
_G['File'] = {}

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['File'].CanReadFromPath = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['File'].CanWriteToPath = function(path) end

---`Method Public Static`
---@param path System.String|string
---@param write? System.Boolean|boolean
---@param origin? Barotrauma.LuaCsMessageOrigin
---@return System.Boolean|boolean
_G['File'].IsPathAllowedException = function(path, write, origin) end

---`Method Public Static`
---@param path System.String|string
---@param write? System.Boolean|boolean
---@return System.Boolean|boolean
_G['File'].IsPathAllowedLuaException = function(path, write) end

---`Method Public Static`
---@param path System.String|string
---@param write? System.Boolean|boolean
---@return System.Boolean|boolean
_G['File'].IsPathAllowedCsException = function(path, write) end

---`Method Public Static`
---@param path System.String|string
---@return System.String|string
_G['File'].Read = function(path) end

---`Method Public Static`
---@param path System.String|string
---@param text System.String|string
_G['File'].Write = function(path, text) end

---`Method Public Static`
---@param path System.String|string
_G['File'].Delete = function(path) end

---`Method Public Static`
---@param path System.String|string
_G['File'].DeleteDirectory = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.IO.FileStream
_G['File'].OpenRead = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.IO.FileStream
_G['File'].OpenWrite = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['File'].Exists = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['File'].CreateDirectory = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['File'].DirectoryExists = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.String-arr|System.String|string[]
_G['File'].GetFiles = function(path) end

---`Method Public Static`
---@param path System.String|string
---@return System.String-arr|System.String|string[]
_G['File'].GetDirectories = function(path) end

---`Method Public Static`
---@param sDir System.String|string
---@return System.String-arr|System.String|string[]
_G['File'].DirSearch = function(sDir) end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsFile
_G['File'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsFile
_G['File'].__new = function() end

