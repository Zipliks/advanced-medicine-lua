---@meta
---@class Barotrauma.SubmarineBody : System.Object
---`Field Private Instance`
---@field depthDamageTimer System.Single|number
---`Field Private Instance`
---@field submarine Barotrauma.Submarine
---`Field Public Instance`
---@field Body Barotrauma.PhysicsBody
---`Field Private Instance`
---@field positionBuffer System.Collections.Generic.List*1Barotrauma*PosInfo|Barotrauma.PosInfo[]
---`Field Private Instance`
---@field impactQueue System.Collections.Generic.Queue*1Barotrauma*SubmarineBody*Impact|(fun():Barotrauma.SubmarineBody.Impact)
---`Field Public Static`
---@field NeutralBallastPercentage System.Single|number
---`Field Private Static`
---@field HorizontalDrag System.Single|number
---`Field Private Static`
---@field VerticalDrag System.Single|number
---`Field Private Static`
---@field MaxDrag System.Single|number
---`Field Private Static`
---@field ImpactDamageMultiplier System.Single|number
---`Field Private Static`
---@field MinImpactLimbMass System.Single|number
---`Field Private Static`
---@field MinCollisionImpact System.Single|number
---`Field Private Static`
---@field MaxCollisionImpact System.Single|number
---`Field Private Static`
---@field Friction System.Single|number
---`Field Private Static`
---@field Restitution System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HullVertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Borders Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VisibleBorders Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Velocity Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field PositionBuffer System.Collections.Generic.List*1Barotrauma*PosInfo|Barotrauma.PosInfo[]
---`Getter Public Instance`
---@field Submarine Barotrauma.Submarine
_G['SubmarineBody'] = {}

---`Method Private Instance`
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
_G['SubmarineBody'].GenerateConvexHull = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['SubmarineBody'].Update = function(deltaTime) end

---`Method Private Instance`
---@param subTranslation Microsoft.Xna.Framework.Vector2
_G['SubmarineBody'].DisplaceCharacters = function(subTranslation) end

---`Method Private Instance`
---@return Microsoft.Xna.Framework.Vector2
_G['SubmarineBody'].CalculateBuoyancy = function() end

---`Method Public Instance`
---@param force Microsoft.Xna.Framework.Vector2
_G['SubmarineBody'].ApplyForce = function(force) end

---`Method Public Instance`
---@param position Microsoft.Xna.Framework.Vector2
_G['SubmarineBody'].SetPosition = function(position) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['SubmarineBody'].UpdateDepthDamage = function(deltaTime) end

---`Method Public Instance`
_G['SubmarineBody'].FlipX = function() end

---`Method Public Instance`
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['SubmarineBody'].OnCollision = function(f1, f2, contact) end

---`Method Private Instance`
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['SubmarineBody'].CheckCharacterCollision = function(contact, character) end

---`Method Private Instance`
---@param collision Barotrauma.SubmarineBody.Impact
---@param limb Barotrauma.Limb
_G['SubmarineBody'].HandleLimbCollision = function(collision, limb) end

---`Method Private Instance`
---@param impact Barotrauma.SubmarineBody.Impact
---@param cell? Voronoi2.VoronoiCell
_G['SubmarineBody'].HandleLevelCollision = function(impact, cell) end

---`Method Private Instance`
---@param impact Barotrauma.SubmarineBody.Impact
---@param otherSub Barotrauma.Submarine
_G['SubmarineBody'].HandleSubCollision = function(impact, otherSub) end

---`Method Private Instance`
---@param impact System.Single|number
---@param direction Microsoft.Xna.Framework.Vector2
---@param impactPos Microsoft.Xna.Framework.Vector2
---@param applyDamage? System.Boolean|boolean
_G['SubmarineBody'].ApplyImpact = function(impact, direction, impactPos, applyDamage) end

---`Method Public Instance`
_G['SubmarineBody'].Remove = function() end

---`Constructor Public Instance`
---@param sub Barotrauma.Submarine
---@param showWarningMessages? System.Boolean|boolean
---@return Barotrauma.SubmarineBody
_G['SubmarineBody'] = function(sub, showWarningMessages) end

---`Constructor Public Instance`
---@param sub Barotrauma.Submarine
---@param showWarningMessages? System.Boolean|boolean
---@return Barotrauma.SubmarineBody
_G['SubmarineBody'].__new = function(sub, showWarningMessages) end

