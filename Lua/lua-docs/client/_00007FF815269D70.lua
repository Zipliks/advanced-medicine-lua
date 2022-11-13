---@meta
---@class Barotrauma.ParticleEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field rightPanel Barotrauma.GUIComponent
---`Field Private Instance`
---@field leftPanel Barotrauma.GUIComponent
---`Field Private Instance`
---@field prefabList Barotrauma.GUIListBox
---`Field Private Instance`
---@field filterBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field filterLabel Barotrauma.GUITextBlock
---`Field Private Instance`
---@field selectedPrefab Barotrauma.Particles.ParticlePrefab
---`Field Private Instance`
---@field emitterProperties Barotrauma.Particles.ParticleEmitterProperties
---`Field Private Instance`
---@field emitterPrefab Barotrauma.Particles.ParticleEmitterPrefab
---`Field Private Instance`
---@field emitter Barotrauma.Particles.ParticleEmitter
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Instance`
---@field sizeReference Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field sizeRefPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field sizeRefOrigin Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field sizeRefEnabled System.Boolean|boolean
---`Field Private Static`
---@field sizeRefFilePath System.String|string
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
_G['ParticleEditorScreen'] = {}

---`Method Private Instance`
_G['ParticleEditorScreen'].CreateUI = function() end

---`Method Public Instance Virtual`
_G['ParticleEditorScreen'].Select = function() end

---`Method NonPublic Instance Virtual`
_G['ParticleEditorScreen'].DeselectEditorSpecific = function() end

---`Method Private Instance`
_G['ParticleEditorScreen'].RefreshPrefabList = function() end

---`Method Private Instance`
---@param text System.String|string
_G['ParticleEditorScreen'].FilterEmitters = function(text) end

---`Method Private Instance`
_G['ParticleEditorScreen'].SerializeAll = function() end

---`Method Private Instance`
_G['ParticleEditorScreen'].SerializeEmitterToClipboard = function() end

---`Method Private Instance`
---@param prefab Barotrauma.Particles.ParticlePrefab
_G['ParticleEditorScreen'].SerializeToClipboard = function(prefab) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['ParticleEditorScreen'].Update = function(deltaTime) end

---`Method Private Instance`
_G['ParticleEditorScreen'].CreateContextMenu = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['ParticleEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Constructor Public Instance`
---@return Barotrauma.ParticleEditorScreen
_G['ParticleEditorScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.ParticleEditorScreen
_G['ParticleEditorScreen'].__new = function() end

