---@meta
---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior : System.Object
---`Field Public Instance`
---@field branchAtlas Barotrauma.Sprite
---`Field Public Instance`
---@field decayAtlas Barotrauma.Sprite
---`Field Public Instance`
---@field BranchSprites System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*VineTileType*1Barotrauma*Items*Components*VineSprite|{[Barotrauma.Items.Components.VineTileType]:Barotrauma.Items.Components.VineSprite}
---`Field Public Instance`
---@field FlowerSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field DamagedFlowerSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field HiddenFlowerSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field LeafSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field DamagedLeafSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field DamageParticles System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Public Instance`
---@field DeathParticles System.Collections.Generic.List*1Barotrauma*Particles*ParticleEmitter|Barotrauma.Particles.ParticleEmitter[]
---`Field Private Instance`
---@field availablePower System.Single|number
---`Field Private Instance`
---@field anger System.Single|number
---`Field Public Instance`
---@field Offset Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field ClaimedTargets System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Field Public Instance`
---@field ClaimedJunctionBoxes System.Collections.Generic.HashSet*1Barotrauma*Items*Components*PowerTransfer|Barotrauma.Items.Components.PowerTransfer[]
---`Field Public Instance`
---@field ClaimedBatteries System.Collections.Generic.HashSet*1Barotrauma*Items*Components*PowerContainer|Barotrauma.Items.Components.PowerContainer[]
---`Field Public Instance`
---@field IgnoredTargets System.Collections.Generic.Dictionary*1Barotrauma*Item*1System*Int32|{[Barotrauma.Item]:System.Int32|integer}
---`Field Private Instance`
---@field tempClaimedTargets System.Collections.Generic.List*1System*Tuple*2System*UInt16*2System*Int32|System.Tuple*1System*UInt16*1System*Int32[]
---`Field Private Instance`
---@field flowerVariants System.Int32|integer
---`Field Private Instance`
---@field leafVariants System.Int32|integer
---`Field Public Instance`
---@field Targets System.Collections.Generic.List*1Barotrauma*MapCreatures*Behavior*BallastFloraBehavior*AITarget|Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget[]
---`Field Public Instance`
---@field PowerConsumptionTimer System.Single|number
---`Field Private Instance`
---@field defenseCooldown System.Single|number
---`Field Private Instance`
---@field toxinsCooldown System.Single|number
---`Field Private Instance`
---@field fireCheckCooldown System.Single|number
---`Field Private Instance`
---@field selfDamageTimer System.Single|number
---`Field Private Instance`
---@field toxinsTimer System.Single|number
---`Field Private Instance`
---@field toxinsSpawnTimer System.Single|number
---`Field Private Instance`
---@field branchesVulnerableToFire System.Collections.Generic.List*1Barotrauma*MapCreatures*Behavior*BallastFloraBranch|Barotrauma.MapCreatures.Behavior.BallastFloraBranch[]
---`Field Public Instance`
---@field Branches System.Collections.Generic.List*1Barotrauma*MapCreatures*Behavior*BallastFloraBranch|Barotrauma.MapCreatures.Behavior.BallastFloraBranch[]
---`Field Private Instance`
---@field root Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---`Field Private Instance`
---@field bodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field isDead System.Boolean|boolean
---`Field Public Instance`
---@field StateMachine Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine
---`Field Public Instance`
---@field GrowthWarps System.Int32|integer
---`Field Private Instance`
---@field toBeRemoved System.Collections.Generic.List*1Barotrauma*MapCreatures*Behavior*BallastFloraBranch|Barotrauma.MapCreatures.Behavior.BallastFloraBranch[]
---`Field Public Static`
---@field AlwaysShowBallastFloraSprite System.Boolean|boolean
---`Field Private Static`
---@field _entityList System.Collections.Generic.List*1Barotrauma*MapCreatures*Behavior*BallastFloraBehavior|Barotrauma.MapCreatures.Behavior.BallastFloraBehavior[]
---`Getter Public Static`
---@field EntityList System.Collections.Generic.IEnumerable*1Barotrauma*MapCreatures*Behavior*BallastFloraBehavior|(fun():Barotrauma.MapCreatures.Behavior.BallastFloraBehavior)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseBranchScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseFlowerScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseLeafScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlowerProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LeafProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseInflateSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseDeflateSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BreakthroughPoint System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HasBrokenThrough System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Sight System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BranchHealth System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RootHealth System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HealthRegenPerBranch System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxBranchHealthRegenDistance System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RootColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerConsumptionMin System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerConsumptionMax System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerConsumptionDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerRequirement System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxAnger System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxPowerCapacity System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AttackItemPrefab Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExplosionResistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireVulnerability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SubmergedWaterResistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BranchDepth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BurstSound System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvailablePower System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Anger System.Single|number
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Parent Barotrauma.Hull
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Prefab Barotrauma.BallastFloraPrefab
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['BallastFloraBehavior'] = {}

---`Method Private Instance`
_G['BallastFloraBehavior'].UpdateFireSources = function() end

---`Method Private Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].IsInWater = function(branch) end

---`Method Public Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].SetHull = function(branch) end

---`Method Private Instance`
_G['BallastFloraBehavior'].GenerateRoot = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@return System.Single|number
_G['BallastFloraBehavior'].GetGrowthSpeed = function(deltaTime) end

---`Method Public Instance`
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param side Barotrauma.Items.Components.TileSide
---@param result System.Collections.Generic.List
---@param isRootGrowth? System.Boolean|boolean
---@param forcePosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].TryGrowBranch = function(parent, side, result, isRootGrowth, forcePosition) end

---`Method Private Instance`
---@return System.Int32|integer
_G['BallastFloraBehavior'].GetDesiredRootGrowthAmount = function() end

---`Method Public Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param target Barotrauma.Item
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].BranchContainsTarget = function(branch, target) end

---`Method Public Instance`
---@param target Barotrauma.Item
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param load? System.Boolean|boolean
_G['BallastFloraBehavior'].ClaimTarget = function(target, branch, load) end

---`Method Private Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param parent? Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].UpdateConnections = function(branch, parent) end

---`Method Private Instance`
---@param newBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].OnBranchGrowthSuccess = function(newBranch) end

---`Method Private Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].CreateBody = function(branch) end

---`Method Public Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param amount System.Single|number
---@param type Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AttackType
---@param attacker? Barotrauma.Character
_G['BallastFloraBehavior'].DamageBranch = function(branch, amount, type, attacker) end

---`Method Private Instance`
_G['BallastFloraBehavior'].CheckDisconnectedFromRoot = function() end

---`Method Public Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].RemoveBranch = function(branch) end

---`Method Public Instance`
---@param item Barotrauma.Item
_G['BallastFloraBehavior'].RemoveClaim = function(item) end

---`Method Public Instance`
_G['BallastFloraBehavior'].Kill = function() end

---`Method Public Instance`
_G['BallastFloraBehavior'].Remove = function() end

---`Method Private Instance`
_G['BallastFloraBehavior'].BreakThrough = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].CanGrowMore = function() end

---`Method Private Instance`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param checkOtherBranches? System.Boolean|boolean
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].CollidesWithWorld = function(rect, checkOtherBranches) end

---`Method Private Static`
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['BallastFloraBehavior'].LineCollides = function(point1, point2) end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
_G['BallastFloraBehavior'].CreateShapnel = function(pos) end

---`Method Private Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].CreateDamageParticle = function(branch, deltaTime) end

---`Method Private Instance`
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].CreateDeathParticle = function(branch, deltaTime) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['BallastFloraBehavior'].Draw = function(spriteBatch) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param header Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
_G['BallastFloraBehavior'].ClientRead = function(msg, header) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBehavior'].ReadBranch = function(msg) end

---`Method Public Instance`
_G['BallastFloraBehavior'].OnMapLoaded = function() end

---`Method Private Instance`
---@return System.Int32|integer
_G['BallastFloraBehavior'].CreateID = function() end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['BallastFloraBehavior'].GetWorldPosition = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['BallastFloraBehavior'].LoadPrefab = function(element) end

---`Method Public Instance`
---@param element Barotrauma.ContentXElement
_G['BallastFloraBehavior'].LoadTargets = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['BallastFloraBehavior'].Save = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@param idRemap Barotrauma.IdRemap
_G['BallastFloraBehavior'].LoadSave = function(element, idRemap) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].UpdateDamage = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].UpdateSelfDamage = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['BallastFloraBehavior'].UpdatePowerDrain = function(deltaTime) end

---`Constructor Private Static`
---@overload fun():Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parent Barotrauma.Hull
---@param prefab Barotrauma.BallastFloraPrefab
---@param offset Microsoft.Xna.Framework.Vector2
---@param firstGrowth? System.Boolean|boolean
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
_G['BallastFloraBehavior'] = function(parent, prefab, offset, firstGrowth) end

---`Constructor Private Static`
---@overload fun():Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parent Barotrauma.Hull
---@param prefab Barotrauma.BallastFloraPrefab
---@param offset Microsoft.Xna.Framework.Vector2
---@param firstGrowth? System.Boolean|boolean
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
_G['BallastFloraBehavior'].__new = function(parent, prefab, offset, firstGrowth) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parent Barotrauma.Hull
---@param prefab Barotrauma.BallastFloraPrefab
---@param offset Microsoft.Xna.Framework.Vector2
---@param firstGrowth? System.Boolean|boolean
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
_G['BallastFloraBehavior'] = function(parent, prefab, offset, firstGrowth) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parent Barotrauma.Hull
---@param prefab Barotrauma.BallastFloraPrefab
---@param offset Microsoft.Xna.Framework.Vector2
---@param firstGrowth? System.Boolean|boolean
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
_G['BallastFloraBehavior'].__new = function(parent, prefab, offset, firstGrowth) end

