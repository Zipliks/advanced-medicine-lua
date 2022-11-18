---@meta
---@class Barotrauma.AIObjectiveCombat : Barotrauma.AIObjective
---`Field Private Instance`
---@field initialMode Barotrauma.AIObjectiveCombat.CombatMode
---`Field Private Instance`
---@field checkWeaponsTimer System.Single|number
---`Field Private Instance`
---@field checkWeaponsInterval System.Single|number
---`Field Private Instance`
---@field ignoreWeaponTimer System.Single|number
---`Field Private Instance`
---@field ignoredWeaponsClearTime System.Single|number
---`Field Private Instance`
---@field goodWeaponPriority System.Single|number
---`Field Private Instance`
---@field arrestHoldFireTime System.Single|number
---`Field Private Instance`
---@field holdFireTimer System.Single|number
---`Field Private Instance`
---@field hasAimed System.Boolean|boolean
---`Field Private Instance`
---@field isLethalWeapon System.Boolean|boolean
---`Field Private Instance`
---@field _weapon Barotrauma.Item
---`Field Private Instance`
---@field _weaponComponent Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field findSafety Barotrauma.AIObjectiveFindSafety
---`Field Private Instance`
---@field weapons System.Collections.Generic.HashSet*1Barotrauma*Items*Components*ItemComponent|Barotrauma.Items.Components.ItemComponent[]
---`Field Private Instance`
---@field ignoredWeapons System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Field Private Instance`
---@field seekAmmunitionObjective Barotrauma.AIObjectiveContainItem
---`Field Private Instance`
---@field retreatObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field followTargetObjective Barotrauma.AIObjectiveGoTo
---`Field Private Instance`
---@field seekWeaponObjective Barotrauma.AIObjectiveGetItem
---`Field Private Instance`
---@field retreatTarget Barotrauma.Hull
---`Field Private Instance`
---@field coolDownTimer System.Single|number
---`Field Private Instance`
---@field myBodies System.Collections.Generic.IEnumerable*1FarseerPhysics*Dynamics*Body|(fun():FarseerPhysics.Dynamics.Body)
---`Field Private Instance`
---@field aimTimer System.Single|number
---`Field Private Instance`
---@field reloadTimer System.Single|number
---`Field Private Instance`
---@field spreadTimer System.Single|number
---`Field Private Instance`
---@field canSeeTarget System.Boolean|boolean
---`Field Private Instance`
---@field visibilityCheckTimer System.Single|number
---`Field Private Instance`
---@field visibilityCheckInterval System.Single|number
---`Field Private Instance`
---@field sqrDistance System.Single|number
---`Field Private Instance`
---@field maxDistance System.Single|number
---`Field Private Instance`
---@field distanceCheckInterval System.Single|number
---`Field Private Instance`
---@field distanceTimer System.Single|number
---`Field Public Instance`
---@field allowHoldFire System.Boolean|boolean
---`Field Public Instance`
---@field holdFireCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Field Private Instance`
---@field findHullTimer System.Single|number
---`Field Private Instance`
---@field findHullInterval System.Single|number
---`Field Private Instance`
---@field arrestingRegistered System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance Virtual`
---@field KeepDivingGearOn System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IgnoreUnsafeHulls System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowOutsideSubmarine System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AllowInAnySub System.Boolean|boolean
---`Getter Private Instance`
---@field AllowCoolDown System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Enemy Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HoldPosition System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Weapon Barotrauma.Item
---`Getter Private Instance`
---@field WeaponComponent Barotrauma.Items.Components.ItemComponent
---`Getter Public Instance Virtual`
---@field ConcurrentObjectives System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field AbandonWhenCannotCompleteSubjectives System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Mode Barotrauma.AIObjectiveCombat.CombatMode
---`Getter Private Instance`
---@field IsOffensiveOrArrest System.Boolean|boolean
---`Getter Private Instance`
---@field TargetEliminated System.Boolean|boolean
---`Getter Private Instance`
---@field IsEnemyDisabled System.Boolean|boolean
---`Getter Private Instance`
---@field AimSpeed System.Single|number
---`Getter Private Instance`
---@field AimAccuracy System.Single|number
---`Getter Private Instance`
---@field ShouldUnequipWeapon System.Boolean|boolean
_G['AIObjectiveCombat'] = {}

---`Method Private Instance`
---@param margin System.Single|number
---@return System.Boolean|boolean
_G['AIObjectiveCombat'].IsEnemyCloserThan = function(margin) end

---`Method NonPublic Instance Virtual`
---@return System.Single|number
_G['AIObjectiveCombat'].GetPriority = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Update = function(deltaTime) end

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['AIObjectiveCombat'].CheckObjectiveSpecific = function() end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Act = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Move = function(deltaTime) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['AIObjectiveCombat'].TryArm = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].OperateWeapon = function(deltaTime) end

---`Method Private Instance`
---@param weaponComponent Barotrauma.Items.Components.ItemComponent-ref
---@return Barotrauma.Item
_G['AIObjectiveCombat'].FindWeapon = function(weaponComponent) end

---`Method Private Instance`
---@param weaponList System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*ItemComponent|(fun():Barotrauma.Items.Components.ItemComponent)
---@param weaponComponent Barotrauma.Items.Components.ItemComponent-ref
---@return Barotrauma.Item
_G['AIObjectiveCombat'].GetWeapon = function(weaponList, weaponComponent) end

---`Method Public Static`
---@param weapon Barotrauma.Items.Components.ItemComponent
---@return System.Single|number
_G['AIObjectiveCombat'].GetLethalDamage = function(weapon) end

---`Method Private Static`
---@param weapon Barotrauma.Items.Components.ItemComponent
---@return Barotrauma.Attack
_G['AIObjectiveCombat'].GetAttackDefinition = function(weapon) end

---`Method Private Instance`
---@return System.Collections.Generic.HashSet*1Barotrauma*Items*Components*ItemComponent|Barotrauma.Items.Components.ItemComponent[]
_G['AIObjectiveCombat'].FindWeaponsFromInventory = function() end

---`Method Private Instance`
---@param item Barotrauma.Item
---@param weaponList System.Collections.Generic.ICollection*1Barotrauma*Items*Components*ItemComponent|(fun():Barotrauma.Items.Components.ItemComponent)
_G['AIObjectiveCombat'].GetWeapons = function(item, weaponList) end

---`Method Private Instance`
_G['AIObjectiveCombat'].Unequip = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['AIObjectiveCombat'].Equip = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Retreat = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Engage = function(deltaTime) end

---`Method Private Instance`
_G['AIObjectiveCombat'].RemoveFollowTarget = function() end

---`Method Private Instance`
_G['AIObjectiveCombat'].OnArrestTargetReached = function() end

---`Method Private Instance`
---@param ammunitionIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['AIObjectiveCombat'].SeekAmmunition = function(ammunitionIdentifiers) end

---`Method Private Instance`
---@param seekAmmo System.Boolean|boolean
---@return System.Boolean|boolean
_G['AIObjectiveCombat'].Reload = function(seekAmmo) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].Attack = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AIObjectiveCombat'].UseWeapon = function(deltaTime) end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveCombat'].OnCompleted = function() end

---`Method NonPublic Instance Virtual`
_G['AIObjectiveCombat'].OnAbandon = function() end

---`Method Public Instance Virtual`
_G['AIObjectiveCombat'].Reset = function() end

---`Method Private Instance`
_G['AIObjectiveCombat'].SpeakNoWeapons = function() end

---`Method Private Instance`
_G['AIObjectiveCombat'].AskHelp = function() end

---`Method Private Instance`
---@param textIdentifier Barotrauma.Identifier
---@param delay System.Single|number
---@param minDuration System.Single|number
_G['AIObjectiveCombat'].Speak = function(textIdentifier, delay, minDuration) end

---`Method Private Instance`
---@param newTimer System.Single|number
_G['AIObjectiveCombat'].SetAimTimer = function(newTimer) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param enemy Barotrauma.Character
---@param mode Barotrauma.AIObjectiveCombat.CombatMode
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param coolDown? System.Single|number
---@return Barotrauma.AIObjectiveCombat
_G['AIObjectiveCombat'] = function(character, enemy, mode, objectiveManager, priorityModifier, coolDown) end

---`Constructor Public Instance`
---@param character Barotrauma.Character
---@param enemy Barotrauma.Character
---@param mode Barotrauma.AIObjectiveCombat.CombatMode
---@param objectiveManager Barotrauma.AIObjectiveManager
---@param priorityModifier? System.Single|number
---@param coolDown? System.Single|number
---@return Barotrauma.AIObjectiveCombat
_G['AIObjectiveCombat'].__new = function(character, enemy, mode, objectiveManager, priorityModifier, coolDown) end

