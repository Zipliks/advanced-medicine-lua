---@meta
---@class Barotrauma.RagdollParams : Barotrauma.EditableParams
---`Field Private Instance`
---@field limbScale System.Single|number
---`Field Private Instance`
---@field jointScale System.Single|number
---`Field Private Instance`
---@field variantScaleApplied System.Boolean|boolean
---`Field Private Static`
---@field allRagdolls System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*Dictionary*2System*String*2Barotrauma*RagdollParams|{[Barotrauma.Identifier]:System.Collections.Generic.Dictionary*1System*String*1Barotrauma*RagdollParams|{[System.String|string]:Barotrauma.RagdollParams}}
---`Field Public Static`
---@field MIN_SCALE System.Single|number
---`Field Public Static`
---@field MAX_SCALE System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Texture System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpritesheetOrientation System.Single|number
---`Getter Public Instance`
---@field IsSpritesheetOrientationHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LimbScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field JointScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextureScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ColliderHeightFromFloor System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ImpactTolerance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanEnterSubmarine System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanWalk System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Draggable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MainLimb Barotrauma.LimbType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Colliders System.Collections.Generic.List*1Barotrauma*RagdollParams*ColliderParams|Barotrauma.RagdollParams.ColliderParams[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Limbs System.Collections.Generic.List*1Barotrauma*RagdollParams*LimbParams|Barotrauma.RagdollParams.LimbParams[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Joints System.Collections.Generic.List*1Barotrauma*RagdollParams*JointParams|Barotrauma.RagdollParams.JointParams[]
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance`
---@field Memento Barotrauma.Memento*1Barotrauma*RagdollParams
_G['RagdollParams'] = {}

---`Method NonPublic Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*RagdollParams*SubParam|(fun():Barotrauma.RagdollParams.SubParam)
_G['RagdollParams'].GetAllSubParams = function() end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@return System.String|string
_G['RagdollParams'].GetDefaultFileName = function(speciesName) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param contentPackage? Barotrauma.ContentPackage
---@return System.String|string
_G['RagdollParams'].GetDefaultFile = function(speciesName, contentPackage) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param contentPackage? Barotrauma.ContentPackage
---@return System.String|string
_G['RagdollParams'].GetFolder = function(speciesName, contentPackage) end

---`Method Private Static`
---@param root Barotrauma.ContentXElement
---@param filePath System.String|string
---@return System.String|string
_G['RagdollParams'].GetFolder = function(root, filePath) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@return Barotrauma.RagdollParams.T
_G['RagdollParams'].GetDefaultRagdollParams = function(speciesName) end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@param fileName? System.String|string
---@return Barotrauma.RagdollParams.T
_G['RagdollParams'].GetRagdollParams = function(speciesName, fileName) end

---`Method Public Static`
---@param fullPath System.String|string
---@param speciesName Barotrauma.Identifier
---@param mainElement System.Xml.Linq.XElement
---@return Barotrauma.RagdollParams.T
_G['RagdollParams'].CreateDefault = function(fullPath, speciesName, mainElement) end

---`Method Public Static`
_G['RagdollParams'].ClearCache = function() end

---`Method NonPublic Instance Virtual`
---@param fullPath Barotrauma.ContentPath
_G['RagdollParams'].UpdatePath = function(fullPath) end

---`Method Public Instance`
---@param fileNameWithoutExtension? System.String|string
---@return System.Boolean|boolean
_G['RagdollParams'].Save = function(fileNameWithoutExtension) end

---`Method NonPublic Instance`
---@param file Barotrauma.ContentPath
---@param speciesName Barotrauma.Identifier
---@return System.Boolean|boolean
_G['RagdollParams'].Load = function(file, speciesName) end

---`Method Public Instance`
_G['RagdollParams'].Apply = function() end

---`Method Public Instance Virtual`
---@param forceReload? System.Boolean|boolean
---@return System.Boolean|boolean
_G['RagdollParams'].Reset = function(forceReload) end

---`Method NonPublic Instance`
_G['RagdollParams'].CreateColliders = function() end

---`Method NonPublic Instance`
_G['RagdollParams'].CreateLimbs = function() end

---`Method NonPublic Instance`
_G['RagdollParams'].CreateJoints = function() end

---`Method Public Instance`
---@param element? System.Xml.Linq.XElement
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['RagdollParams'].Deserialize = function(element, alsoChildren, recursive) end

---`Method Public Instance`
---@param element? System.Xml.Linq.XElement
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['RagdollParams'].Serialize = function(element, alsoChildren, recursive) end

---`Method Public Instance`
---@param variantFile System.Xml.Linq.XDocument
_G['RagdollParams'].ApplyVariantScale = function(variantFile) end

---`Method Public Instance Virtual`
_G['RagdollParams'].StoreSnapshot = function() end

---`Method Public Instance Virtual`
_G['RagdollParams'].Undo = function() end

---`Method Public Instance Virtual`
_G['RagdollParams'].Redo = function() end

---`Method Public Instance Virtual`
_G['RagdollParams'].ClearHistory = function() end

---`Method Private Instance`
---@param source Barotrauma.RagdollParams
_G['RagdollParams'].RevertTo = function(source) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.RagdollParams
---@return Barotrauma.RagdollParams
_G['RagdollParams'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.RagdollParams
---@return Barotrauma.RagdollParams
_G['RagdollParams'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.RagdollParams
---@return Barotrauma.RagdollParams
_G['RagdollParams'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.RagdollParams
---@return Barotrauma.RagdollParams
_G['RagdollParams'].__new = function() end

