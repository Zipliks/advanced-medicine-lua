---@meta
---@class Barotrauma.CharacterEditor.CharacterEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Instance`
---@field character Barotrauma.Character
---`Field Private Instance`
---@field spawnPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field editCharacterInfo System.Boolean|boolean
---`Field Private Instance`
---@field editRagdoll System.Boolean|boolean
---`Field Private Instance`
---@field editAnimations System.Boolean|boolean
---`Field Private Instance`
---@field editLimbs System.Boolean|boolean
---`Field Private Instance`
---@field editJoints System.Boolean|boolean
---`Field Private Instance`
---@field editIK System.Boolean|boolean
---`Field Private Instance`
---@field drawSkeleton System.Boolean|boolean
---`Field Private Instance`
---@field drawDamageModifiers System.Boolean|boolean
---`Field Private Instance`
---@field showParamsEditor System.Boolean|boolean
---`Field Private Instance`
---@field showSpritesheet System.Boolean|boolean
---`Field Private Instance`
---@field isFrozen System.Boolean|boolean
---`Field Private Instance`
---@field autoFreeze System.Boolean|boolean
---`Field Private Instance`
---@field limbPairEditing System.Boolean|boolean
---`Field Private Instance`
---@field uniformScaling System.Boolean|boolean
---`Field Private Instance`
---@field lockSpriteOrigin System.Boolean|boolean
---`Field Private Instance`
---@field lockSpritePosition System.Boolean|boolean
---`Field Private Instance`
---@field lockSpriteSize System.Boolean|boolean
---`Field Private Instance`
---@field recalculateCollider System.Boolean|boolean
---`Field Private Instance`
---@field copyJointSettings System.Boolean|boolean
---`Field Private Instance`
---@field showColliders System.Boolean|boolean
---`Field Private Instance`
---@field displayWearables System.Boolean|boolean
---`Field Private Instance`
---@field displayBackgroundColor System.Boolean|boolean
---`Field Private Instance`
---@field onlyShowSourceRectForSelectedLimbs System.Boolean|boolean
---`Field Private Instance`
---@field unrestrictSpritesheet System.Boolean|boolean
---`Field Private Instance`
---@field jointCreationMode Barotrauma.CharacterEditor.CharacterEditorScreen.JointCreationMode
---`Field Private Instance`
---@field isDrawingLimb System.Boolean|boolean
---`Field Private Instance`
---@field newLimbRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field jointStartLimb Barotrauma.Limb
---`Field Private Instance`
---@field jointEndLimb Barotrauma.Limb
---`Field Private Instance`
---@field anchor1Pos System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field holdTimer System.Double|number
---`Field Private Instance`
---@field spriteSheetZoom System.Single|number
---`Field Private Instance`
---@field spriteSheetMinZoom System.Single|number
---`Field Private Instance`
---@field spriteSheetMaxZoom System.Single|number
---`Field Private Instance`
---@field spriteSheetOffsetY System.Int32|integer
---`Field Private Instance`
---@field spriteSheetOffsetX System.Int32|integer
---`Field Private Instance`
---@field hideBodySheet System.Boolean|boolean
---`Field Private Instance`
---@field backgroundColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field cameraOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field selectedJoints System.Collections.Generic.List*1Barotrauma*LimbJoint|Barotrauma.LimbJoint[]
---`Field Private Instance`
---@field selectedLimbs System.Collections.Generic.List*1Barotrauma*Limb|Barotrauma.Limb[]
---`Field Private Instance`
---@field editedCharacters System.Collections.Generic.HashSet*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field isEndlessRunner System.Boolean|boolean
---`Field Private Instance`
---@field spriteSheetRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field scaledMouseSpeed Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field min System.Int32|integer
---`Field Private Instance`
---@field max System.Int32|integer
---`Field Private Instance`
---@field originalWall Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
---`Field Private Instance`
---@field clones Barotrauma.CharacterEditor.WallGroup-arr|Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup[]
---`Field Private Instance`
---@field _currentWall Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
---`Field Private Instance`
---@field wallCollisionsEnabled System.Boolean|boolean
---`Field Private Instance`
---@field characterIndex System.Int32|integer
---`Field Private Instance`
---@field currentCharacterIdentifier Barotrauma.Identifier
---`Field Private Instance`
---@field selectedJob Barotrauma.Identifier
---`Field Private Instance`
---@field allSpecies System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field vanillaCharacters System.Collections.Generic.List*1Barotrauma*CharacterFile|Barotrauma.CharacterFile[]
---`Field Private Instance`
---@field rightArea Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field leftArea Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field centerArea Barotrauma.GUIFrame
---`Field Private Instance`
---@field characterSelectionPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field fileEditPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field modesPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field buttonsPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field optionsPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field minorModesPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field ragdollControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field jointControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field animationControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field limbControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field spriteSheetControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field backgroundColorPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field animSelection Barotrauma.GUIDropDown
---`Field Private Instance`
---@field freezeToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field animTestPoseToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field showCollidersToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field jointScaleBar Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field limbScaleBar Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field spriteSheetZoomBar Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field copyJointsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field recalculateColliderToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field resetSpriteOrientationButtonParent Barotrauma.GUIFrame
---`Field Private Instance`
---@field characterInfoToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field ragdollToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field animsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field limbsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field paramsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field jointsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field spritesheetToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field skeletonToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field lightsToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field damageModifiersToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field ikToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field lockSpriteOriginToggle Barotrauma.GUITickBox
---`Field Private Instance`
---@field extraRagdollControls Barotrauma.GUIFrame
---`Field Private Instance`
---@field createJointButton Barotrauma.GUIButton
---`Field Private Instance`
---@field createLimbButton Barotrauma.GUIButton
---`Field Private Instance`
---@field deleteSelectedButton Barotrauma.GUIButton
---`Field Private Instance`
---@field duplicateLimbButton Barotrauma.GUIButton
---`Field Private Instance`
---@field modesToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field minorModesToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field buttonsPanelToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field optionsToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field characterPanelToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field fileEditToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---`Field Private Instance`
---@field corners Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field textures System.Collections.Generic.List*1Microsoft*Xna*Framework*Graphics*Texture2D|Microsoft.Xna.Framework.Graphics.Texture2D[]
---`Field Private Instance`
---@field texturePaths System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Instance`
---@field animationWidgets System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Widget|{[System.String|string]:Barotrauma.Widget}
---`Field Private Instance`
---@field jointSelectionWidgets System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Widget|{[System.String|string]:Barotrauma.Widget}
---`Field Private Instance`
---@field limbEditWidgets System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Widget|{[System.String|string]:Barotrauma.Widget}
---`Field Private Static`
---@field innerScale Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field holdTime System.Single|number
---`Field Private Static`
---@field screenTextTag System.String|string
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Instance Barotrauma.CharacterEditor.CharacterEditorScreen
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Private Instance`
---@field ShowExtraRagdollControls System.Boolean|boolean
---`Getter Private Instance`
---@field AllWalls System.Collections.Generic.IEnumerable*1Barotrauma*Structure|(fun():Barotrauma.Structure)
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field CurrentWall Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
---`Getter Private Instance`
---@field AllSpecies System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Private Instance`
---@field VanillaCharacters System.Collections.Generic.List*1Barotrauma*CharacterFile|Barotrauma.CharacterFile[]
---`Getter Private Instance`
---@field CharacterParams Barotrauma.CharacterParams
---`Getter Private Instance`
---@field AnimParams System.Collections.Generic.List*1Barotrauma*AnimationParams|Barotrauma.AnimationParams[]
---`Getter Private Instance`
---@field CurrentAnimation Barotrauma.AnimationParams
---`Getter Private Instance`
---@field RagdollParams Barotrauma.RagdollParams
---`Getter Private Instance`
---@field Textures System.Collections.Generic.List*1Microsoft*Xna*Framework*Graphics*Texture2D|Microsoft.Xna.Framework.Graphics.Texture2D[]
_G['CharacterEditorScreen'] = {}

---`Method Private Instance`
_G['CharacterEditorScreen'].ToggleJointCreationMode = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ToggleLimbCreationMode = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single|number
_G['CharacterEditorScreen'].DrawAnimationControls = function(spriteBatch, deltaTime) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['CharacterEditorScreen'].GetLimbPhysicRect = function(limb) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['CharacterEditorScreen'].DrawLimbEditor = function(spriteBatch) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single|number
_G['CharacterEditorScreen'].DrawRagdoll = function(spriteBatch, deltaTime) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param updateAction System.Action*1Barotrauma*Limb|(fun(obj:Barotrauma.Limb))
_G['CharacterEditorScreen'].UpdateOtherLimbs = function(limb, updateAction) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param updateAction System.Action*1Barotrauma*Limb*1Barotrauma*LimbJoint|(fun(arg1:Barotrauma.Limb, arg2:Barotrauma.LimbJoint))
_G['CharacterEditorScreen'].UpdateOtherJoints = function(limb, updateAction) end

---`Method Private Instance`
---@param limbType System.String|string
---@param isLeft System.Boolean|boolean
---@return Barotrauma.Limb
_G['CharacterEditorScreen'].GetOtherLimb = function(limbType, isLeft) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Limb|(fun():Barotrauma.Limb)
_G['CharacterEditorScreen'].GetOtherLimbs = function(limb) end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateTextures = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single|number
_G['CharacterEditorScreen'].DrawSpritesheetEditor = function(spriteBatch, deltaTime) end

---`Method Private Instance`
---@param sprite Barotrauma.Sprite
---@return System.Int32|integer
_G['CharacterEditorScreen'].GetTextureHeight = function(sprite) end

---`Method Private Instance`
---@param sprite Barotrauma.Sprite
---@return System.Int32|integer
_G['CharacterEditorScreen'].GetOffsetY = function(sprite) end

---`Method Private Instance`
---@param l Barotrauma.Limb
---@param size Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].RecalculateCollider = function(l, size) end

---`Method Private Instance`
---@param l Barotrauma.Limb
---@param newOrigin? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['CharacterEditorScreen'].RecalculateOrigin = function(l, newOrigin) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single|number
---@param limb Barotrauma.Limb
---@param limbScreenPos Microsoft.Xna.Framework.Vector2
---@param spriteRotation? System.Single|number
_G['CharacterEditorScreen'].DrawSpritesheetJointEditor = function(spriteBatch, deltaTime, limb, limbScreenPos, spriteRotation) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param limb Barotrauma.Limb
---@param joint Barotrauma.LimbJoint
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param autoFreeze System.Boolean|boolean
---@param allowPairEditing System.Boolean|boolean
---@param holdPosition System.Boolean|boolean
---@param rotationOffset? System.Single|number
_G['CharacterEditorScreen'].DrawJointLimitWidgets = function(spriteBatch, limb, joint, drawPos, autoFreeze, allowPairEditing, holdPosition, rotationOffset) end

---`Method Private Instance`
---@param key Microsoft.Xna.Framework.Input.Keys
_G['CharacterEditorScreen'].Nudge = function(key) end

---`Method Private Instance`
---@param value System.Boolean|boolean
_G['CharacterEditorScreen'].SetSpritesheetRestriction = function(value) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param value System.Single|number
---@param toolTip Barotrauma.LocalizedString
---@param color Microsoft.Xna.Framework.Color
---@param onClick System.Action*1System*Single|(fun(obj:System.Single|number))
---@param circleRadius? System.Single|number
---@param widgetSize? System.Int32|integer
---@param rotationOffset? System.Single|number
---@param clockWise? System.Boolean|boolean
---@param displayAngle? System.Boolean|boolean
---@param autoFreeze? System.Nullable*1System*Boolean|boolean
---@param wrapAnglePi? System.Boolean|boolean
---@param holdPosition? System.Boolean|boolean
---@param rounding? System.Int32|integer
_G['CharacterEditorScreen'].DrawRadialWidget = function(spriteBatch, drawPos, value, toolTip, color, onClick, circleRadius, widgetSize, rotationOffset, clockWise, displayAngle, autoFreeze, wrapAnglePi, holdPosition, rounding) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param widgetType Barotrauma.CharacterEditor.CharacterEditorScreen.WidgetType
---@param size System.Int32|integer
---@param color Microsoft.Xna.Framework.Color
---@param toolTip Barotrauma.LocalizedString
---@param onPressed System.Action|(fun())
---@param autoFreeze? System.Nullable*1System*Boolean|boolean
---@param holdPosition? System.Boolean|boolean
---@param onHovered? System.Action|(fun())
_G['CharacterEditorScreen'].DrawWidget = function(spriteBatch, drawPos, widgetType, size, color, toolTip, onPressed, autoFreeze, holdPosition, onHovered) end

---`Method Private Instance`
---@param name System.String|string
---@param innerColor Microsoft.Xna.Framework.Color
---@param outerColor? System.Nullable*1Microsoft*Xna*Framework*Color
---@param size? System.Int32|integer
---@param sizeMultiplier? System.Single|number
---@param shape? Barotrauma.Widget.Shape
---@param initMethod? System.Action*1Barotrauma*Widget|(fun(obj:Barotrauma.Widget))
---@return Barotrauma.Widget
_G['CharacterEditorScreen'].GetAnimationWidget = function(name, innerColor, outerColor, size, sizeMultiplier, shape, initMethod) end

---`Method Private Instance`
---@param id System.String|string
---@param joint Barotrauma.LimbJoint
---@param linkedId? System.String|string
---@return Barotrauma.Widget
_G['CharacterEditorScreen'].GetJointSelectionWidget = function(id, joint, linkedId) end

---`Method Private Instance`
---@param ID System.String|string
---@param limb Barotrauma.Limb
---@param size? System.Int32|integer
---@param shape? Barotrauma.Widget.Shape
---@param initMethod? System.Action*1Barotrauma*Widget|(fun(obj:Barotrauma.Widget))
---@return Barotrauma.Widget
_G['CharacterEditorScreen'].GetLimbEditWidget = function(ID, limb, size, shape, initMethod) end

---`Method Private Instance`
---@return Microsoft.Xna.Framework.Rectangle
_G['CharacterEditorScreen'].CalculateSpritesheetRectangle = function() end

---`Method Public Instance Virtual`
_G['CharacterEditorScreen'].Select = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ResetVariables = function() end

---`Method Private Instance`
---@param characters? System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CharacterEditorScreen'].Reset = function(characters) end

---`Method Private Instance`
---@param character Barotrauma.Character
_G['CharacterEditorScreen'].ResetParams = function(character) end

---`Method NonPublic Instance Virtual`
_G['CharacterEditorScreen'].DeselectEditorSpecific = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].OnResolutionChanged = function() end

---`Method Public Static`
---@param tag System.String|string
---@return Barotrauma.LocalizedString
_G['CharacterEditorScreen'].GetCharacterEditorTranslation = function(tag) end

---`Method Public Instance Virtual`
_G['CharacterEditorScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['CharacterEditorScreen'].Update = function(deltaTime) end

---`Method Public Instance`
---@return Barotrauma.CursorState
_G['CharacterEditorScreen'].GetMouseCursorState = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['CharacterEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Private Instance`
_G['CharacterEditorScreen'].UpdateJointCreation = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].UpdateLimbCreation = function() end

---`Method Private Instance`
---@param limb Barotrauma.Limb
_G['CharacterEditorScreen'].CopyLimb = function(limb) end

---`Method Private Instance`
---@param sourceRect Microsoft.Xna.Framework.Rectangle
_G['CharacterEditorScreen'].CreateNewLimb = function(sourceRect) end

---`Method Private Instance`
---@param newElement Barotrauma.ContentXElement
_G['CharacterEditorScreen'].CreateLimb = function(newElement) end

---`Method Private Instance`
---@param fromLimb System.Int32|integer
---@param toLimb System.Int32|integer
---@param anchor1? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param anchor2? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['CharacterEditorScreen'].CreateJoint = function(fromLimb, toLimb, anchor1, anchor2) end

---`Method Private Instance`
_G['CharacterEditorScreen'].DeleteSelected = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].CalculateMovementLimits = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].CloneWalls = function() end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
_G['CharacterEditorScreen'].SelectClosestWallGroup = function(pos) end

---`Method Private Instance`
---@param right System.Boolean|boolean
---@return Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
_G['CharacterEditorScreen'].SelectLastClone = function(right) end

---`Method Private Instance`
---@param right System.Boolean|boolean
_G['CharacterEditorScreen'].UpdateWalls = function(right) end

---`Method Private Instance`
---@param enabled System.Boolean|boolean
_G['CharacterEditorScreen'].SetWallCollisions = function(enabled) end

---`Method Private Instance`
---@return Barotrauma.Identifier
_G['CharacterEditorScreen'].GetNextCharacterIdentifier = function() end

---`Method Private Instance`
---@return Barotrauma.Identifier
_G['CharacterEditorScreen'].GetPreviousCharacterIdentifier = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].GetCurrentCharacterIndex = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].IncreaseIndex = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ReduceIndex = function() end

---`Method Private Instance`
---@param speciesName Barotrauma.Identifier
---@param ragdoll? Barotrauma.RagdollParams
---@return Barotrauma.Character
_G['CharacterEditorScreen'].SpawnCharacter = function(speciesName, ragdoll) end

---`Method Private Instance`
_G['CharacterEditorScreen'].OnPreSpawn = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].OnPostSpawn = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ClearWidgets = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ClearSelection = function() end

---`Method Private Instance`
---@param ragdoll? Barotrauma.RagdollParams
_G['CharacterEditorScreen'].RecreateRagdoll = function(ragdoll) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].TeleportTo = function(position) end

---`Method Public Instance`
---@param name Barotrauma.Identifier
---@param mainFolder System.String|string
---@param isHumanoid System.Boolean|boolean
---@param contentPackage Barotrauma.ContentPackage
---@param ragdoll System.Xml.Linq.XElement
---@param config? System.Xml.Linq.XElement
---@param animations? System.Collections.Generic.IEnumerable*1Barotrauma*AnimationParams|(fun():Barotrauma.AnimationParams)
---@return System.Boolean|boolean
_G['CharacterEditorScreen'].CreateCharacter = function(name, mainFolder, isHumanoid, contentPackage, ragdoll, config, animations) end

---`Method Private Instance`
_G['CharacterEditorScreen'].ShowWearables = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].HideWearables = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateGUI = function() end

---`Method Private Instance`
---@param toggleSize Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].CreateMinorModesPanel = function(toggleSize) end

---`Method Private Instance`
---@param toggleSize Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].CreateModesPanel = function(toggleSize) end

---`Method Private Instance`
---@param toggle Barotrauma.GUITickBox
---@param value System.Boolean|boolean
_G['CharacterEditorScreen'].SetToggle = function(toggle, value) end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateButtonsPanel = function() end

---`Method Private Instance`
---@param toggleSize Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].CreateOptionsPanel = function(toggleSize) end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateContextualControls = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateCharacterSelectionPanel = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].CreateFileEditPanel = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].ResetParamsEditor = function() end

---`Method Private Instance`
---@overload fun(name:System.String|string, value:System.Object)
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateAnimParam = function(name, value) end

---`Method Private Instance`
---@overload fun(name:System.String|string, value:System.Object)
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateRagdollParam = function(name, value) end

---`Method Private Instance`
---@param editableParams Barotrauma.EditableParams
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateParam = function(editableParams, name, value) end

---`Method Private Instance`
---@overload fun(joint:Barotrauma.LimbJoint, name:System.String|string, value:System.Object)
---@param joint Barotrauma.LimbJoint
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateJointParam = function(joint, name, value) end

---`Method Private Instance`
---@overload fun(limb:Barotrauma.Limb, name:System.String|string, value:System.Object)
---@param limb Barotrauma.Limb
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateLimbParam = function(limb, name, value) end

---`Method Private Instance`
---@param ragdollSubParams Barotrauma.RagdollParams.SubParam
---@param name Barotrauma.Identifier
---@param value System.Object
_G['CharacterEditorScreen'].TryUpdateSubParam = function(ragdollSubParams, name, value) end

---`Method Private Instance`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param p Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].ScreenToSim = function(p) end

---`Method Private Instance`
---@overload fun(x:System.Single|number, y:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param p Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['CharacterEditorScreen'].SimToScreen = function(p) end

---`Method Private Instance`
---@param limb1 Barotrauma.Limb
---@param limb2 Barotrauma.Limb
---@param joint1 Barotrauma.LimbJoint
---@param joint2 Barotrauma.LimbJoint
---@return System.Boolean|boolean
_G['CharacterEditorScreen'].IsMatchingLimb = function(limb1, limb2, joint1, joint2) end

---`Method Private Instance`
---@param limbJoint Barotrauma.LimbJoint
_G['CharacterEditorScreen'].ValidateJoint = function(limbJoint) end

---`Method Private Instance`
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param filter? System.Func*1Barotrauma*Limb*1System*Boolean|(fun(arg:Barotrauma.Limb):System.Boolean|boolean)
---@return Barotrauma.Limb
_G['CharacterEditorScreen'].GetClosestLimbOnRagdoll = function(targetPos, filter) end

---`Method Private Instance`
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param filter? System.Func*1Barotrauma*Limb*1System*Boolean|(fun(arg:Barotrauma.Limb):System.Boolean|boolean)
---@return Barotrauma.Limb
_G['CharacterEditorScreen'].GetClosestLimbOnSpritesheet = function(targetPos, filter) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@return Microsoft.Xna.Framework.Rectangle
_G['CharacterEditorScreen'].GetLimbSpritesheetRect = function(limb) end

---`Method Private Instance`
---@param limb Barotrauma.Limb
---@param newRect Microsoft.Xna.Framework.Rectangle
---@param resize System.Boolean|boolean
_G['CharacterEditorScreen'].UpdateSourceRect = function(limb, newRect, resize) end

---`Method Private Instance`
_G['CharacterEditorScreen'].CalculateSpritesheetZoom = function() end

---`Method Private Instance`
---@param limb Barotrauma.Limb
_G['CharacterEditorScreen'].HandleLimbSelection = function(limb) end

---`Method Private Instance`
_G['CharacterEditorScreen'].OpenDoors = function() end

---`Method Private Instance`
_G['CharacterEditorScreen'].SaveSnapshot = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterEditor.CharacterEditorScreen
---@return Barotrauma.CharacterEditor.CharacterEditorScreen
_G['CharacterEditorScreen'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.CharacterEditor.CharacterEditorScreen
---@return Barotrauma.CharacterEditor.CharacterEditorScreen
_G['CharacterEditorScreen'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.CharacterEditor.CharacterEditorScreen
---@return Barotrauma.CharacterEditor.CharacterEditorScreen
_G['CharacterEditorScreen'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.CharacterEditor.CharacterEditorScreen
---@return Barotrauma.CharacterEditor.CharacterEditorScreen
_G['CharacterEditorScreen'].__new = function() end

