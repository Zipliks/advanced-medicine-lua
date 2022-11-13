---@meta
---@class Barotrauma.Items.Components.RepairTool : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field fixableEntities System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field nonFixableEntities System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field pickedPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field activeTimer System.Single|number
---`Field Private Instance`
---@field debugRayStartPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field debugRayEndPos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field ignoredBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Instance`
---@field hitCharacters System.Collections.Generic.HashSet*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field fireSourcesInRange System.Collections.Generic.List*1Barotrauma*FireSource|Barotrauma.FireSource[]
---`Field Private Instance`
---@field sinTime System.Single|number
---`Field Private Instance`
---@field repairTimer System.Single|number
---`Field Private Instance`
---@field previousGap Barotrauma.Gap
---`Field Private Instance`
---@field repairTimeOut System.Single|number
---`Field Private Static`
---@field hitBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
---`Field Private Static`
---@field currentTargets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UsableIn Barotrauma.Items.Components.RepairTool.UseEnvironment
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Spread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UnskilledSpread System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StructureFixAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelWallFixAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExtinguishAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WaterAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarrelPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RepairThroughWalls System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RepairMultiple System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RepairThroughHoles System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOverlappingWallDist System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HitItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HitBrokenDoors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarrelRotation System.Single|number
---`Getter Public Instance`
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
_G['Components']['RepairTool'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['RepairTool'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['RepairTool'].Use = function(deltaTime, character) end

---`Method Private Instance`
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
---@param user Barotrauma.Character
---@param degreeOfSuccess System.Single|number
---@param ignoredBodies System.Collections.Generic.List*1FarseerPhysics*Dynamics*Body|FarseerPhysics.Dynamics.Body[]
_G['Components']['RepairTool'].Repair = function(rayStart, rayEnd, deltaTime, user, degreeOfSuccess, ignoredBodies) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param deltaTime System.Single|number
---@param degreeOfSuccess System.Single|number
---@param targetBody FarseerPhysics.Dynamics.Body
---@return System.Boolean|boolean
_G['Components']['RepairTool'].FixBody = function(user, deltaTime, degreeOfSuccess, targetBody) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['RepairTool'].AIOperate = function(deltaTime, character, objective) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param deltaTime System.Single|number
---@param actionType Barotrauma.ActionType
---@param targetItem? Barotrauma.Item
---@param character? Barotrauma.Character
---@param limb? Barotrauma.Limb
---@param structure? Barotrauma.Structure
_G['Components']['RepairTool'].ApplyStatusEffectsOnTarget = function(user, deltaTime, actionType, targetItem, character, limb, structure) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RepairTool
---@return Barotrauma.Items.Components.RepairTool
_G['Components']['RepairTool'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RepairTool
---@return Barotrauma.Items.Components.RepairTool
_G['Components']['RepairTool'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RepairTool
---@return Barotrauma.Items.Components.RepairTool
_G['Components']['RepairTool'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.RepairTool
---@return Barotrauma.Items.Components.RepairTool
_G['Components']['RepairTool'].__new = function() end

