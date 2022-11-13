---@meta
---@class Barotrauma.CharacterParams : Barotrauma.EditableParams
---`Field Public Instance`
---@field File Barotrauma.CharacterFile
---`Field Public Instance`
---@field SubParams System.Collections.Generic.List*1Barotrauma*CharacterParams*SubParam|Barotrauma.CharacterParams.SubParam[]
---`Field Public Instance`
---@field Sounds System.Collections.Generic.List*1Barotrauma*CharacterParams*SoundParams|Barotrauma.CharacterParams.SoundParams[]
---`Field Public Instance`
---@field BloodEmitters System.Collections.Generic.List*1Barotrauma*CharacterParams*ParticleParams|Barotrauma.CharacterParams.ParticleParams[]
---`Field Public Instance`
---@field GibEmitters System.Collections.Generic.List*1Barotrauma*CharacterParams*ParticleParams|Barotrauma.CharacterParams.ParticleParams[]
---`Field Public Instance`
---@field DamageEmitters System.Collections.Generic.List*1Barotrauma*CharacterParams*ParticleParams|Barotrauma.CharacterParams.ParticleParams[]
---`Field Public Instance`
---@field Inventories System.Collections.Generic.List*1Barotrauma*CharacterParams*InventoryParams|Barotrauma.CharacterParams.InventoryParams[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpeciesTranslationOverride System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisplayName System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Group Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Humanoid System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasInfo System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanInteract System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Husk System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseHuskAppendage System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsAir System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsWater System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanSpeak System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseBossHealthBar System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Noise System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Visibility System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BloodDecal System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BleedParticleAir System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BleedParticleWater System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BleedParticleMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanEat System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EatingSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UsePathFinding System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PathFinderPriority System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideInSonar System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideInThermalGoggles System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SonarDisruption System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DistantSonarRange System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisableDistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SoundInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DrawLast System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VariantFile System.Xml.Linq.XDocument
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Health Barotrauma.CharacterParams.HealthParams
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AI Barotrauma.CharacterParams.AIParams
---`Getter Public Instance Virtual`
---@field MainElement Barotrauma.ContentXElement
_G['CharacterParams'] = {}

---`Method Public Instance`
---@param emitter Barotrauma.CharacterParams.ParticleParams
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveGibEmitter = function(emitter) end

---`Method Public Instance`
---@param emitter Barotrauma.CharacterParams.ParticleParams
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveDamageEmitter = function(emitter) end

---`Method Public Instance`
---@param inventory Barotrauma.CharacterParams.InventoryParams
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveInventory = function(inventory) end

---`Method NonPublic Instance`
---@param subParam Barotrauma.CharacterParams.T
---@param collection? System.Collections.Generic.IList*1Barotrauma*CharacterParams*T|Barotrauma.CharacterParams.T[]
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveSubParam = function(subParam, collection) end

---`Method NonPublic Instance`
---@param element Barotrauma.ContentXElement
---@param constructor System.Func*1Barotrauma*ContentXElement*1Barotrauma*CharacterParams*1Barotrauma*CharacterParams*T|(fun(arg1:Barotrauma.ContentXElement, arg2:Barotrauma.CharacterParams):Barotrauma.CharacterParams.T)
---@param subParam Barotrauma.T-ref
---@param collection? System.Collections.Generic.IList*1Barotrauma*CharacterParams*T|Barotrauma.CharacterParams.T[]
---@param filter? System.Func*1System*Collections*Generic*IList*2Barotrauma*CharacterParams*T*1System*Boolean|(fun(arg:System.Collections.Generic.IList*1Barotrauma*CharacterParams*T|Barotrauma.CharacterParams.T[]):System.Boolean|boolean)
---@return System.Boolean|boolean
_G['CharacterParams'].TryAddSubParam = function(element, constructor, subParam, collection, filter) end

---`Method NonPublic Instance Virtual`
---@return System.String|string
_G['CharacterParams'].GetName = function() end

---`Method Public Static`
---@param variantXML System.Xml.Linq.XElement
---@param baseXML System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['CharacterParams'].CreateVariantXml = function(variantXML, baseXML) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['CharacterParams'].Load = function() end

---`Method Public Instance`
---@param fileNameWithoutExtension? System.String|string
---@return System.Boolean|boolean
_G['CharacterParams'].Save = function(fileNameWithoutExtension) end

---`Method Public Instance Virtual`
---@param forceReload? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterParams'].Reset = function(forceReload) end

---`Method Public Instance`
---@param group Barotrauma.Identifier
---@return System.Boolean|boolean
_G['CharacterParams'].CompareGroup = function(group) end

---`Method NonPublic Instance`
_G['CharacterParams'].CreateSubParams = function() end

---`Method Public Instance`
---@param element? System.Xml.Linq.XElement
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
---@param loadDefaultValues? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterParams'].Deserialize = function(element, alsoChildren, recursive, loadDefaultValues) end

---`Method Public Instance`
---@param element? System.Xml.Linq.XElement
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterParams'].Serialize = function(element, alsoChildren, recursive) end

---`Method Public Instance`
---@param editor Barotrauma.ParamsEditor
---@param alsoChildren? System.Boolean|boolean
---@param recursive? System.Boolean|boolean
---@param space? System.Int32|integer
_G['CharacterParams'].AddToEditor = function(editor, alsoChildren, recursive, space) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['CharacterParams'].AddSound = function() end

---`Method Public Instance`
_G['CharacterParams'].AddInventory = function() end

---`Method Public Instance`
_G['CharacterParams'].AddBloodEmitter = function() end

---`Method Public Instance`
_G['CharacterParams'].AddGibEmitter = function() end

---`Method Public Instance`
_G['CharacterParams'].AddDamageEmitter = function() end

---`Method Private Instance`
---@param type System.String|string
_G['CharacterParams'].AddEmitter = function(type) end

---`Method Public Instance`
---@param soundParams Barotrauma.CharacterParams.SoundParams
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveSound = function(soundParams) end

---`Method Public Instance`
---@param emitter Barotrauma.CharacterParams.ParticleParams
---@return System.Boolean|boolean
_G['CharacterParams'].RemoveBloodEmitter = function(emitter) end

---`Constructor Public Instance`
---@param file Barotrauma.CharacterFile
---@return Barotrauma.CharacterParams
_G['CharacterParams'] = function(file) end

---`Constructor Public Instance`
---@param file Barotrauma.CharacterFile
---@return Barotrauma.CharacterParams
_G['CharacterParams'].__new = function(file) end

