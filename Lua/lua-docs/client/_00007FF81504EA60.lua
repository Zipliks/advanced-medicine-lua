---@meta
---@class Barotrauma.Identifier : System.ValueType
---`Field Private Instance`
---@field value System.String|string
---`Field Private Instance`
---@field hashCode System.Lazy*1System*Int32
---`Field Public Static`
---@field Empty Barotrauma.Identifier
---`Field Private Static`
---@field emptyHash System.Int32|integer
---`Getter Public Instance`
---@field Value System.String|string
---`Getter Public Instance`
---@field HashCode System.Int32|integer
---`Getter Public Instance`
---@field IsEmpty System.Boolean|boolean
_G['Identifier'] = {}

---`Method Public Instance`
---@param id Barotrauma.Identifier-ref
---@return Barotrauma.Identifier
_G['Identifier'].IfEmpty = function(id) end

---`Method Public Instance`
---@overload fun(subStr:Barotrauma.Identifier-ref, newStr:Barotrauma.Identifier-ref):Barotrauma.Identifier
---@param subStr System.String|string
---@param newStr System.String|string
---@return Barotrauma.Identifier
_G['Identifier'].Replace = function(subStr, newStr) end

---`Method Public Instance`
---@overload fun(subStr:Barotrauma.Identifier):Barotrauma.Identifier
---@param subStr System.String|string
---@return Barotrauma.Identifier
_G['Identifier'].Remove = function(subStr) end

---`Method Public Instance Virtual`
---@overload fun(obj:System.Object):System.Boolean|boolean
---@param other Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Identifier'].Equals = function(other) end

---`Method Public Instance`
---@overload fun(str:System.String|string):System.Boolean|boolean
---@param id Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Identifier'].StartsWith = function(id) end

---`Method Public Instance`
---@overload fun(str:System.String|string):System.Boolean|boolean
---@param id Barotrauma.Identifier
---@return System.Boolean|boolean
_G['Identifier'].EndsWith = function(id) end

---`Method Public Instance`
---@param suffix System.String|string
---@return Barotrauma.Identifier
_G['Identifier'].AppendIfMissing = function(suffix) end

---`Method Public Instance`
---@param suffix System.String|string
---@return Barotrauma.Identifier
_G['Identifier'].RemoveFromEnd = function(suffix) end

---`Method Public Instance`
---@overload fun(str:System.String|string):System.Boolean|boolean
---@param id Barotrauma.Identifier-ref
---@return System.Boolean|boolean
_G['Identifier'].Contains = function(id) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Identifier'].ToString = function() end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['Identifier'].GetHashCode = function() end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Int32|integer
_G['Identifier'].CompareTo = function(obj) end

---`Method Private Static`
---@param a System.String|string
---@param b System.String|string
---@return System.Boolean|boolean
_G['Identifier'].StringEquality = function(a, b) end

---`Constructor Public Instance`
---@overload fun(str:System.String|string):Barotrauma.Identifier
---@return Barotrauma.Identifier
_G['Identifier'] = function() end

---`Constructor Public Instance`
---@overload fun(str:System.String|string):Barotrauma.Identifier
---@return Barotrauma.Identifier
_G['Identifier'].__new = function() end

---`Constructor Private Static`
---@overload fun(str:System.String|string):Barotrauma.Identifier
---@return Barotrauma.Identifier
_G['Identifier'] = function() end

---`Constructor Private Static`
---@overload fun(str:System.String|string):Barotrauma.Identifier
---@return Barotrauma.Identifier
_G['Identifier'].__new = function() end

