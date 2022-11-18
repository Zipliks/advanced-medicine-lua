---@meta
---@class Barotrauma.Structure : Barotrauma.MapEntity
---`Field Private Instance`
---@field convexHulls System.Collections.Generic.List*1Barotrauma*Lights*ConvexHull|Barotrauma.Lights.ConvexHull[]
---`Field Private Instance`
---@field spriteAnimState System.Collections.Generic.Dictionary*1Barotrauma*DecorativeSprite*1Barotrauma*DecorativeSprite*State|{[Barotrauma.DecorativeSprite]:Barotrauma.DecorativeSprite.State}
---`Field Public Instance`
---@field Lights System.Collections.Generic.List*1Barotrauma*Lights*LightSource|Barotrauma.Lights.LightSource[]
---`Field Public Instance`
---@field SpriteEffects Microsoft.Xna.Framework.Graphics.SpriteEffects
---`Field Private Instance`
---@field bodyDebugDimensions System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field maxHealth System.Nullable*1System*Single|number
---`Field Private Instance`
---@field crushDepth System.Single|number
---`Field NonPublic Instance`
---@field spriteColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field scale System.Single|number
---`Field NonPublic Instance`
---@field textureScale Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field textureOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field defaultRect Microsoft.Xna.Framework.Rectangle
---`Field Public Static`
---@field ShowWalls System.Boolean|boolean
---`Field Public Static`
---@field ShowStructures System.Boolean|boolean
---`Field Public Static`
---@field WallList System.Collections.Generic.List*1Barotrauma*Structure|Barotrauma.Structure[]
---`Field Public Static`
---@field WallSectionSize System.Int32|integer
---`Field Private Static`
---@field LeakThreshold System.Single|number
---`Getter Public Instance Virtual`
---@field SelectableInEditor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Indestructible System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sections Barotrauma.WallSection-arr|Barotrauma.WallSection[]
---`Getter Public Instance Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance`
---@field IsPlatform System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StairDirection Barotrauma.Direction
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---@field HasBody System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Bodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Getter Public Instance`
---@field CastShadow System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---@field SectionCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxHealth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CrushDepth System.Single|number
---`Getter Public Instance Virtual`
---@field Health System.Single|number
---`Getter Public Instance Virtual`
---@field DrawBelowWater System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field DrawOverWater System.Boolean|boolean
---`Getter Public Instance`
---@field DrawDamageEffect System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasDamage System.Boolean|boolean
---`Getter Public Instance`
---@field Prefab Barotrauma.StructurePrefab
---`Getter Public Instance`
---@field Tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpecialTag System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpriteColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseDropShadow System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DropShadowOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Scale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextureScale Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextureOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DefaultRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field BodyWidth System.Single|number
---`Getter Public Instance`
---@field BodyHeight System.Single|number
---`Getter Public Instance`
---@field BodyRotation System.Single|number
---`Getter Public Instance`
---@field BodyOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field NoAITarget System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['Structure'] = {}

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@param damage System.Single|number
---@param attacker? Barotrauma.Character
---@param createNetworkEvent? System.Boolean|boolean
_G['Structure'].SetDamage = function(sectionIndex, damage, attacker, createNetworkEvent) end

---`Method Public Instance`
---@param collisionCategory FarseerPhysics.Dynamics.Category
_G['Structure'].SetCollisionCategory = function(collisionCategory) end

---`Method Private Instance`
_G['Structure'].UpdateSections = function() end

---`Method Private Instance`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param createConvexHull System.Boolean|boolean
---@return FarseerPhysics.Dynamics.Body
_G['Structure'].CreateRectBody = function(rect, createConvexHull) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@param rotation System.Single|number
_G['Structure'].CreateConvexHull = function(position, size, rotation) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Structure'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Structure'].FlipY = function(relativeToSub) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param submarine Barotrauma.Submarine
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.Structure
_G['Structure'].Load = function(element, submarine, idRemap) end

---`Method Public Static`
---@param name System.String|string
---@param identifier Barotrauma.Identifier
---@return Barotrauma.StructurePrefab
_G['Structure'].FindPrefab = function(name, identifier) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Structure'].Save = function(parentElement) end

---`Method Public Instance Virtual`
_G['Structure'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
_G['Structure'].Reset = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Structure'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param cam Barotrauma.Camera
---@param deltaTime System.Single|number
_G['Structure'].UpdateEditing = function(cam, deltaTime) end

---`Method Private Instance`
_G['Structure'].SetLightTextureOffset = function() end

---`Method Public Instance`
---@param inGame? System.Boolean|boolean
---@return Barotrauma.GUIComponent
_G['Structure'].CreateEditingHUD = function(inGame) end

---`Method Public Instance Virtual`
---@param worldView Microsoft.Xna.Framework.Rectangle
---@return System.Boolean|boolean
_G['Structure'].IsVisible = function(worldView) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param back? System.Boolean|boolean
_G['Structure'].Draw = function(spriteBatch, editing, back) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param back? System.Boolean|boolean
---@param damageEffect? Microsoft.Xna.Framework.Graphics.Effect
_G['Structure'].Draw = function(spriteBatch, editing, back, damageEffect) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param damageEffect Microsoft.Xna.Framework.Graphics.Effect
---@param editing System.Boolean|boolean
_G['Structure'].DrawDamage = function(spriteBatch, damageEffect, editing) end

---`Method Private Instance`
---@return System.Single|number
_G['Structure'].GetRealDepth = function() end

---`Method Public Instance`
---@return System.Single|number
_G['Structure'].GetDrawDepth = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Structure'].UpdateSpriteStates = function(deltaTime) end

---`Method Private Instance`
---@param conditional Barotrauma.PropertyConditional
---@return System.Boolean|boolean
_G['Structure'].ConditionalMatches = function(conditional) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Structure'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Structure'].Move = function(amount, ignoreContacts) end

---`Method Private Instance`
_G['Structure'].InitProjSpecific = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Structure'].ToString = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.MapEntity
_G['Structure'].Clone = function() end

---`Method Private Instance`
_G['Structure'].CreateStairBodies = function() end

---`Method Private Instance`
_G['Structure'].CreateSections = function() end

---`Method Private Instance`
---@param mergedSections System.Collections.Generic.List*1Barotrauma*WallSection|Barotrauma.WallSection[]
---@return Microsoft.Xna.Framework.Rectangle
_G['Structure'].GenerateMergedRect = function(mergedSections) end

---`Method Private Static`
---@param sectionRect Microsoft.Xna.Framework.Rectangle
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['Structure'].CalculateExtremes = function(sectionRect) end

---`Method Public Static`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Structure
_G['Structure'].GetAttachTarget = function(worldPosition) end

---`Method Public Instance Virtual`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Structure'].IsMouseOn = function(position) end

---`Method Public Instance Virtual`
_G['Structure'].ShallowRemove = function() end

---`Method Public Instance Virtual`
_G['Structure'].Remove = function() end

---`Method Private Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Structure'].OnWallCollision = function(f1, f2, contact) end

---`Method Private Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
_G['Structure'].OnImpactProjSpecific = function(f1, f2, contact) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@return Barotrauma.WallSection
_G['Structure'].GetSection = function(sectionIndex) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@return System.Boolean|boolean
_G['Structure'].SectionBodyDisabled = function(sectionIndex) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Structure'].AllSectionBodiesDisabled = function() end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@return System.Boolean|boolean
_G['Structure'].SectionIsLeaking = function(sectionIndex) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@return System.Int32|integer
_G['Structure'].SectionLength = function(sectionIndex) end

---`Method Public Instance Virtual`
---@param upgrade Barotrauma.Upgrade
---@param createNetworkEvent? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Structure'].AddUpgrade = function(upgrade, createNetworkEvent) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@param damage System.Single|number
---@param attacker? Barotrauma.Character
---@param emitParticles? System.Boolean|boolean
_G['Structure'].AddDamage = function(sectionIndex, damage, attacker, emitParticles) end

---`Method Public Instance Virtual`
---@param attacker Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param attack Barotrauma.Attack
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@return Barotrauma.AttackResult
_G['Structure'].AddDamage = function(attacker, worldPosition, attack, deltaTime, playSound) end

---`Method Public Instance`
---@param displayPos Microsoft.Xna.Framework.Vector2
---@param world? System.Boolean|boolean
---@param clamp? System.Boolean|boolean
---@return System.Int32|integer
_G['Structure'].FindSectionIndex = function(displayPos, world, clamp) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@return System.Single|number
_G['Structure'].SectionDamage = function(sectionIndex) end

---`Method Public Instance`
---@param sectionIndex System.Int32|integer
---@param world? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['Structure'].SectionPosition = function(sectionIndex, world) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Structure
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param sp Barotrauma.StructurePrefab
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@param element? System.Xml.Linq.XElement
---@return Barotrauma.Structure
_G['Structure'] = function(rectangle, sp, submarine, id, element) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Structure
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param sp Barotrauma.StructurePrefab
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@param element? System.Xml.Linq.XElement
---@return Barotrauma.Structure
_G['Structure'].__new = function(rectangle, sp, submarine, id, element) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Structure
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param sp Barotrauma.StructurePrefab
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@param element? System.Xml.Linq.XElement
---@return Barotrauma.Structure
_G['Structure'] = function(rectangle, sp, submarine, id, element) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Structure
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param sp Barotrauma.StructurePrefab
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@param element? System.Xml.Linq.XElement
---@return Barotrauma.Structure
_G['Structure'].__new = function(rectangle, sp, submarine, id, element) end

