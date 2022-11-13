---@meta
---@class Barotrauma.AnimationParams : Barotrauma.EditableParams
---`Field Private Instance`
---@field _movementSpeed System.Single|number
---`Field NonPublic Static`
---@field allAnimations System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*Dictionary*2System*String*2Barotrauma*AnimationParams|{[Barotrauma.Identifier]:System.Collections.Generic.Dictionary*1System*String*1Barotrauma*AnimationParams|{[System.String|string]:Barotrauma.AnimationParams}}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---@field IsGroundedAnimation System.Boolean|boolean
---`Getter Public Instance`
---@field IsSwimAnimation System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MovementSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CycleSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HeadAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HeadAngleInRadians System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TorsoAngle System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TorsoAngleInRadians System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HeadTorque System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TorsoTorque System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FootTorque System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance Virtual`
---@field AnimationType Barotrauma.AnimationType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ArmIKStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HandIKStrength System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance`
---@field Memento Barotrauma.Memento*1Barotrauma*AnimationParams
_G['AnimationParams'] = {}

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param animType Barotrauma.AnimationType
---@return System.String|string
_G['AnimationParams'].GetDefaultFileName = function(speciesName, animType) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param animType Barotrauma.AnimationType
---@return System.String|string
_G['AnimationParams'].GetDefaultFile = function(speciesName, animType) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@return System.String|string
_G['AnimationParams'].GetFolder = function(speciesName) end

---`Method Private Static`
---@param root Barotrauma.ContentXElement
---@param filePath System.String|string
---@return System.String|string
_G['AnimationParams'].GetFolder = function(root, filePath) end

---`Method Public Static`
---@param filePaths System.Collections.Generic.IReadOnlyList*1System*String|System.String|string[]
---@param type Barotrauma.AnimationType
---@return System.String|string
_G['AnimationParams'].GetRandomFilePath = function(filePaths, type) end

---`Method Public Static`
---@param filePaths System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---@param type Barotrauma.AnimationType
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['AnimationParams'].FilterFilesByType = function(filePaths, type) end

---`Method Private Static`
---@param filePath System.String|string
---@param type Barotrauma.AnimationType
---@return System.Boolean|boolean
_G['AnimationParams'].AnimationPredicate = function(filePath, type) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param animType Barotrauma.AnimationType
---@return Barotrauma.AnimationParams.T
_G['AnimationParams'].GetDefaultAnimParams = function(character, animType) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param animType Barotrauma.AnimationType
---@param fileName? System.String|string
---@return Barotrauma.AnimationParams.T
_G['AnimationParams'].GetAnimParams = function(speciesName, animType, fileName) end

---`Method Public Static`
_G['AnimationParams'].ClearCache = function() end

---`Method Public Static`
---@overload fun(fullPath:System.String|string, speciesName:Barotrauma.Identifier, animationType:Barotrauma.AnimationType, type:System.Type):Barotrauma.AnimationParams
---@param fullPath System.String|string
---@param speciesName Barotrauma.Identifier
---@param animationType Barotrauma.AnimationType
---@return Barotrauma.AnimationParams.T
_G['AnimationParams'].Create = function(fullPath, speciesName, animationType) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['AnimationParams'].Serialize = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['AnimationParams'].Deserialize = function() end

---`Method NonPublic Instance`
---@param file Barotrauma.ContentPath
---@param speciesName Barotrauma.Identifier
---@return System.Boolean|boolean
_G['AnimationParams'].Load = function(file, speciesName) end

---`Method NonPublic Instance Virtual`
---@param newPath Barotrauma.ContentPath
_G['AnimationParams'].UpdatePath = function(newPath) end

---`Method NonPublic Static`
---@param footAngles System.Collections.Generic.Dictionary*1System*Int32*1System*Single|{[System.Int32|integer]:System.Single|number}
---@return System.String|string
_G['AnimationParams'].ParseFootAngles = function(footAngles) end

---`Method NonPublic Static`
---@param footAngles System.Collections.Generic.Dictionary*1System*Int32*1System*Single|{[System.Int32|integer]:System.Single|number}
---@param value System.String|string
_G['AnimationParams'].SetFootAngles = function(footAngles, value) end

---`Method Public Static`
---@param type Barotrauma.AnimationType
---@param isHumanoid System.Boolean|boolean
---@return System.Type
_G['AnimationParams'].GetParamTypeFromAnimType = function(type, isHumanoid) end

---`Method Public Instance Abstract Virtual`
_G['AnimationParams'].StoreSnapshot = function() end

---`Method NonPublic Instance`
_G['AnimationParams'].StoreSnapshot = function() end

---`Method Public Instance Virtual`
_G['AnimationParams'].Undo = function() end

---`Method Public Instance Virtual`
_G['AnimationParams'].Redo = function() end

---`Method Public Instance Virtual`
_G['AnimationParams'].ClearHistory = function() end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.AnimationParams
---@return Barotrauma.AnimationParams
_G['AnimationParams'] = function() end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.AnimationParams
---@return Barotrauma.AnimationParams
_G['AnimationParams'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.AnimationParams
---@return Barotrauma.AnimationParams
_G['AnimationParams'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.AnimationParams
---@return Barotrauma.AnimationParams
_G['AnimationParams'].__new = function() end

