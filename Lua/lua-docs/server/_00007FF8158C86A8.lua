---@meta
---@class Barotrauma.LocationTypeChange : System.Object
---`Field Public Instance`
---@field CurrentType Barotrauma.Identifier
---`Field Public Instance`
---@field ChangeToType Barotrauma.Identifier
---`Field Public Instance`
---@field Probability System.Single|number
---`Field Public Instance`
---@field RequireDiscovered System.Boolean|boolean
---`Field Public Instance`
---@field Requirements System.Collections.Generic.List*1Barotrauma*LocationTypeChange*Requirement|Barotrauma.LocationTypeChange.Requirement[]
---`Field Private Instance`
---@field requireChangeMessages System.Boolean|boolean
---`Field Private Instance`
---@field messageTag System.String|string
---`Field Private Instance`
---@field messages System.Nullable*1System*Collections*Immutable*ImmutableArray*2System*String
---`Field Public Instance`
---@field DisallowedAdjacentLocations System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field DisallowedProximity System.Int32|integer
---`Field Public Instance`
---@field CooldownAfterChange System.Int32|integer
---`Field Public Instance`
---@field RequiredDurationRange Microsoft.Xna.Framework.Point
---`Getter Public Instance`
---@field Messages System.Collections.Generic.IReadOnlyList*1System*String|System.String|string[]
_G['LocationTypeChange'] = {}

---`Method Public Instance`
---@param location Barotrauma.Location
---@return System.Single|number
_G['LocationTypeChange'].DetermineProbability = function(location) end

---`Method Private Instance`
---@param location Barotrauma.Location
---@param maxDistance System.Int32|integer
---@param predicate System.Func*1Barotrauma*Location*1System*Boolean|(fun(arg:Barotrauma.Location):System.Boolean|boolean)
---@param currentDistance? System.Int32|integer
---@param checkedLocations? System.Collections.Generic.HashSet*1Barotrauma*Location|Barotrauma.Location[]
---@return System.Boolean|boolean
_G['LocationTypeChange'].AnyWithinDistance = function(location, maxDistance, predicate, currentDistance, checkedLocations) end

---`Constructor Public Instance`
---@param currentType Barotrauma.Identifier
---@param element System.Xml.Linq.XElement
---@param requireChangeMessages System.Boolean|boolean
---@param defaultProbability? System.Single|number
---@return Barotrauma.LocationTypeChange
_G['LocationTypeChange'] = function(currentType, element, requireChangeMessages, defaultProbability) end

---`Constructor Public Instance`
---@param currentType Barotrauma.Identifier
---@param element System.Xml.Linq.XElement
---@param requireChangeMessages System.Boolean|boolean
---@param defaultProbability? System.Single|number
---@return Barotrauma.LocationTypeChange
_G['LocationTypeChange'].__new = function(currentType, element, requireChangeMessages, defaultProbability) end

