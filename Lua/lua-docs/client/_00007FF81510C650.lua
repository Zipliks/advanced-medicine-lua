---@meta
---@class Barotrauma.LevelObjectPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field LevelTriggerElements System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Field Public Instance`
---@field OverrideCommonness System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Private Instance`
---@field randomRotation Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field swingAmount System.Single|number
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*LevelObjectPrefab|(fun():Barotrauma.LevelObjectPrefab)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ParticleEmitterTriggerIndex System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ParticleEmitterPrefabs System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitterPrefab|Barotrauma.Particles.ParticleEmitterPrefab[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EmitterPositions System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sounds System.Collections.Generic.List*1Barotrauma*LevelObjectPrefab*SoundConfig|Barotrauma.LevelObjectPrefab.SoundConfig[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LightSourceTriggerIndex System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LightSourceParams System.Collections.Generic.List*1Barotrauma*Lights*LightSourceParams|Barotrauma.Lights.LightSourceParams[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteDeformations System.Collections.Generic.List*1Barotrauma*SpriteDeformations*SpriteDeformation|Barotrauma.SpriteDeformations.SpriteDeformation[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DeformableSprite Barotrauma.DeformableSprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinSize System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxSize System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Alignment Barotrauma.Alignment
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpawnPos Barotrauma.LevelObjectPrefab.SpawnPosType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Config System.Xml.Linq.XElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PhysicsBodyElement System.Xml.Linq.XElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PhysicsBodyTriggerIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteSpecificPhysicsBodyElements System.Collections.Generic.Dictionary*1Barotrauma*Sprite*1System*Xml*Linq*XElement|{[Barotrauma.Sprite]:System.Xml.Linq.XElement}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DepthRange Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClusteringAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClusteringGroup System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AlignWithSurface System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowAtStart System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowAtEnd System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinSurfaceWidth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomRotation Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field RandomRotationRad Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SwingAmount System.Single|number
---`Getter Public Instance`
---@field SwingAmountRad System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SwingFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ScaleOscillation Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ScaleOscillationFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Commonness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SonarDisruption System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TakeLevelWallDamage System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HideWhenBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Health System.Single|number
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ChildObjects System.Collections.Generic.List*1Barotrauma*LevelObjectPrefab*ChildObject|Barotrauma.LevelObjectPrefab.ChildObject[]
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OverrideProperties System.Collections.Generic.List*1Barotrauma*LevelObjectPrefab|Barotrauma.LevelObjectPrefab[]
_G['LevelObjectPrefab'] = {}

---`Method Private Instance`
---@param file Barotrauma.LevelObjectPrefabsFile
---@param element Barotrauma.ContentXElement
---@param parentTriggerIndex System.Int32|integer
_G['LevelObjectPrefab'].LoadElements = function(file, element, parentTriggerIndex) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['LevelObjectPrefab'].InitProjSpecific = function(element) end

---`Method Public Instance`
---@overload fun(generationParams:Barotrauma.CaveGenerationParams, requireCaveSpecificOverride?:System.Boolean|boolean):System.Single|number
---@param levelData Barotrauma.LevelData
---@return System.Single|number
_G['LevelObjectPrefab'].GetCommonness = function(levelData) end

---`Method Public Instance Virtual`
_G['LevelObjectPrefab'].Dispose = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
---@param parentTriggerIndex System.Int32|integer
_G['LevelObjectPrefab'].LoadElementsProjSpecific = function(element, parentTriggerIndex) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['LevelObjectPrefab'].Save = function(element) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['LevelObjectPrefab'].ToString = function() end

---`Method Public Static`
---@param identifierOverride Barotrauma.Identifier
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['LevelObjectPrefab'].ParseIdentifier = function(identifierOverride, element) end

---`Constructor Private Static`
---@overload fun():Barotrauma.LevelObjectPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.LevelObjectPrefabsFile
---@param identifierOverride? Barotrauma.Identifier
---@return Barotrauma.LevelObjectPrefab
_G['LevelObjectPrefab'] = function(element, file, identifierOverride) end

---`Constructor Private Static`
---@overload fun():Barotrauma.LevelObjectPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.LevelObjectPrefabsFile
---@param identifierOverride? Barotrauma.Identifier
---@return Barotrauma.LevelObjectPrefab
_G['LevelObjectPrefab'].__new = function(element, file, identifierOverride) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.LevelObjectPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.LevelObjectPrefabsFile
---@param identifierOverride? Barotrauma.Identifier
---@return Barotrauma.LevelObjectPrefab
_G['LevelObjectPrefab'] = function(element, file, identifierOverride) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.LevelObjectPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.LevelObjectPrefabsFile
---@param identifierOverride? Barotrauma.Identifier
---@return Barotrauma.LevelObjectPrefab
_G['LevelObjectPrefab'].__new = function(element, file, identifierOverride) end

