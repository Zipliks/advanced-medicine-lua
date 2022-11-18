---@meta
---@class Barotrauma.FileSelection : System.Object
---`Field Private Static`
---@field open System.Boolean|boolean
---`Field Private Static`
---@field backgroundFrame Barotrauma.GUIFrame
---`Field Private Static`
---@field window Barotrauma.GUIFrame
---`Field Private Static`
---@field sidebar Barotrauma.GUIListBox
---`Field Private Static`
---@field fileList Barotrauma.GUIListBox
---`Field Private Static`
---@field directoryBox Barotrauma.GUITextBox
---`Field Private Static`
---@field filterBox Barotrauma.GUITextBox
---`Field Private Static`
---@field fileBox Barotrauma.GUITextBox
---`Field Private Static`
---@field fileTypeDropdown Barotrauma.GUIDropDown
---`Field Private Static`
---@field openButton Barotrauma.GUIButton
---`Field Private Static`
---@field fileSystemWatcher System.IO.FileSystemWatcher
---`Field Private Static`
---@field currentFileTypePattern System.String|string
---`Field Private Static`
---@field ignoredDrivePrefixes System.String-arr|System.String|string[]
---`Field Private Static`
---@field currentDirectory System.String|string
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field Open System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field CurrentDirectory System.String|string
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field OnFileSelected System.Action*1System*String|(fun(obj:System.String|string))
_G['FileSelection'] = {}

---`Method Private Static`
---@param sender System.Object
---@param e System.IO.FileSystemEventArgs
_G['FileSelection'].OnFileSystemChanges = function(sender, e) end

---`Method Private Static`
---@param r1 Barotrauma.RectTransform
---@param r2 Barotrauma.RectTransform
---@return System.Int32|integer
_G['FileSelection'].SortFiles = function(r1, r2) end

---`Method Private Static`
_G['FileSelection'].InitIfNecessary = function() end

---`Method Public Static`
_G['FileSelection'].Init = function() end

---`Method Public Static`
_G['FileSelection'].ClearFileTypeFilters = function() end

---`Method Public Static`
---@param name System.String|string
---@param pattern System.String|string
_G['FileSelection'].AddFileTypeFilter = function(name, pattern) end

---`Method Public Static`
---@param pattern System.String|string
_G['FileSelection'].SelectFileTypeFilter = function(pattern) end

---`Method Public Static`
_G['FileSelection'].RefreshFileList = function() end

---`Method Public Static`
---@param button Barotrauma.GUIButton
---@param userdata System.Object
---@return System.Boolean|boolean
_G['FileSelection'].MoveToParentDirectory = function(button, userdata) end

---`Method Public Static`
_G['FileSelection'].AddToGUIUpdateList = function() end

---`Constructor Private Static`
---@return Barotrauma.FileSelection
_G['FileSelection'] = function() end

---`Constructor Private Static`
---@return Barotrauma.FileSelection
_G['FileSelection'].__new = function() end

