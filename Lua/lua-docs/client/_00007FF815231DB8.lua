---@meta
---@class Barotrauma.PropertyCommand : Barotrauma.Command
---`Field Private Instance`
---@field OldProperties System.Collections.Generic.Dictionary*1System*Object*1System*Collections*Generic*List*2Barotrauma*ISerializableEntity|{[System.Object]:System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]}
---`Field Private Instance`
---@field Receivers System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field PropertyName Barotrauma.Identifier
---`Field Private Instance`
---@field NewProperties System.Object
---`Field Private Instance`
---@field sanitizedProperty System.String|string
---`Field Public Instance`
---@field PropertyCount System.Int32|integer
_G['PropertyCommand'] = {}

---`Method Public Instance`
---@param master Barotrauma.PropertyCommand
---@return System.Boolean|boolean
_G['PropertyCommand'].MergeInto = function(master) end

---`Method Private Instance`
_G['PropertyCommand'].SanitizeProperty = function() end

---`Method Public Instance Virtual`
_G['PropertyCommand'].Execute = function() end

---`Method Public Instance Virtual`
_G['PropertyCommand'].UnExecute = function() end

---`Method Public Instance Virtual`
_G['PropertyCommand'].Cleanup = function() end

---`Method Private Instance`
---@param undo System.Boolean|boolean
_G['PropertyCommand'].SetProperties = function(undo) end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['PropertyCommand'].GetDescription = function() end

---`Constructor Public Instance`
---@overload fun(receivers:System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[], propertyName:Barotrauma.Identifier, newData:System.Object, oldData:System.Collections.Generic.Dictionary*1System*Object*1System*Collections*Generic*List*2Barotrauma*ISerializableEntity|{[System.Object]:System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]}):Barotrauma.PropertyCommand
---@param receiver Barotrauma.ISerializableEntity
---@param propertyName Barotrauma.Identifier
---@param newData System.Object
---@param oldData System.Object
---@return Barotrauma.PropertyCommand
_G['PropertyCommand'] = function(receiver, propertyName, newData, oldData) end

---`Constructor Public Instance`
---@overload fun(receivers:System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[], propertyName:Barotrauma.Identifier, newData:System.Object, oldData:System.Collections.Generic.Dictionary*1System*Object*1System*Collections*Generic*List*2Barotrauma*ISerializableEntity|{[System.Object]:System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]}):Barotrauma.PropertyCommand
---@param receiver Barotrauma.ISerializableEntity
---@param propertyName Barotrauma.Identifier
---@param newData System.Object
---@param oldData System.Object
---@return Barotrauma.PropertyCommand
_G['PropertyCommand'].__new = function(receiver, propertyName, newData, oldData) end

