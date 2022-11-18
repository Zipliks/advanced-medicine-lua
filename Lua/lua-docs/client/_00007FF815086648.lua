---@meta
---@class Barotrauma.SerializableProperty : System.Object
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field Attributes System.ComponentModel.AttributeCollection
---`Field Public Instance`
---@field PropertyType System.Type
---`Field Public Instance`
---@field OverridePrefabValues System.Boolean|boolean
---`Field Public Instance`
---@field PropertyInfo System.Reflection.PropertyInfo
---`Field Private Instance`
---@field valueGetters System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Func*2System*Object*2System*Object|{[Barotrauma.Identifier]:System.Func*1System*Object*1System*Object|(fun(arg:System.Object):System.Object)}
---`Field Private Static`
---@field supportedTypes System.Collections.Immutable.ImmutableDictionary*1System*Type*1System*String|{[System.Type]:System.String|string}
---`Field Private Static`
---@field cachedProperties System.Collections.Generic.Dictionary*1System*Type*1System*Collections*Generic*Dictionary*2Barotrauma*Identifier*2Barotrauma*SerializableProperty|{[System.Type]:System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}}
_G['SerializableProperty'] = {}

---`Method Public Instance`
---@return Barotrauma.SerializableProperty.T
_G['SerializableProperty'].GetAttribute = function() end

---`Method Public Instance`
---@param parentObject System.Object
---@param val System.Object
_G['SerializableProperty'].SetValue = function(parentObject, val) end

---`Method Public Instance`
---@overload fun(parentObject:System.Object, value:System.String|string):System.Boolean|boolean
---@overload fun(parentObject:System.Object, value:System.Object):System.Boolean|boolean
---@overload fun(parentObject:System.Object, value:System.Single|number):System.Boolean|boolean
---@overload fun(parentObject:System.Object, value:System.Boolean|boolean):System.Boolean|boolean
---@param parentObject System.Object
---@param value System.Int32|integer
---@return System.Boolean|boolean
_G['SerializableProperty'].TrySetValue = function(parentObject, value) end

---`Method Public Instance`
---@param parentObject System.Object
---@return System.Object
_G['SerializableProperty'].GetValue = function(parentObject) end

---`Method Public Instance`
---@param parentObject System.Object
---@return System.Single|number
_G['SerializableProperty'].GetFloatValue = function(parentObject) end

---`Method Public Instance`
---@param parentObject System.Object
---@return System.Boolean|boolean
_G['SerializableProperty'].GetBoolValue = function(parentObject) end

---`Method Public Static`
---@param type System.Type
---@return System.String|string
_G['SerializableProperty'].GetSupportedTypeName = function(type) end

---`Method Private Instance`
---@param parentObject System.Object
---@return System.Object
_G['SerializableProperty'].TryGetValueWithoutReflection = function(parentObject) end

---`Method Private Instance`
---@param parentObject System.Object
---@param value System.Single-ref
---@return System.Boolean|boolean
_G['SerializableProperty'].TryGetFloatValueWithoutReflection = function(parentObject, value) end

---`Method Private Instance`
---@param parentObject System.Object
---@param value System.Boolean-ref
---@return System.Boolean|boolean
_G['SerializableProperty'].TryGetBoolValueWithoutReflection = function(parentObject, value) end

---`Method Private Instance`
---@param parentObject System.Object
---@param value System.String-ref
---@return System.Boolean|boolean
_G['SerializableProperty'].TryGetStringValueWithoutReflection = function(parentObject, value) end

---`Method Private Instance`
---@param parentObject System.Object
---@param value System.Single|number
---@return System.Boolean|boolean
_G['SerializableProperty'].TrySetFloatValueWithoutReflection = function(parentObject, value) end

---`Method Private Instance`
---@param parentObject System.Object
---@param value System.Boolean|boolean
---@return System.Boolean|boolean
_G['SerializableProperty'].TrySetBoolValueWithoutReflection = function(parentObject, value) end

---`Method Public Static`
---@overload fun(obj:Barotrauma.ISerializableEntity):System.Collections.Generic.List*1Barotrauma*SerializableProperty|Barotrauma.SerializableProperty[]
---@param obj System.Object
---@return System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['SerializableProperty'].GetProperties = function(obj) end

---`Method Public Static`
---@param obj System.Object
---@param element? System.Xml.Linq.XElement
---@return System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['SerializableProperty'].DeserializeProperties = function(obj, element) end

---`Method Public Static`
---@param obj Barotrauma.ISerializableEntity
---@param element System.Xml.Linq.XElement
---@param saveIfDefault? System.Boolean|boolean
---@param ignoreEditable? System.Boolean|boolean
_G['SerializableProperty'].SerializeProperties = function(obj, element, saveIfDefault, ignoreEditable) end

---`Method Public Static`
---@param entity Barotrauma.ISerializableEntity
---@param configElement Barotrauma.ContentXElement
---@param savedVersion System.Version
_G['SerializableProperty'].UpgradeGameVersion = function(entity, configElement, savedVersion) end

---`Constructor Public Instance`
---@overload fun(property:System.ComponentModel.PropertyDescriptor):Barotrauma.SerializableProperty
---@return Barotrauma.SerializableProperty
_G['SerializableProperty'] = function() end

---`Constructor Public Instance`
---@overload fun(property:System.ComponentModel.PropertyDescriptor):Barotrauma.SerializableProperty
---@return Barotrauma.SerializableProperty
_G['SerializableProperty'].__new = function() end

---`Constructor Private Static`
---@overload fun(property:System.ComponentModel.PropertyDescriptor):Barotrauma.SerializableProperty
---@return Barotrauma.SerializableProperty
_G['SerializableProperty'] = function() end

---`Constructor Private Static`
---@overload fun(property:System.ComponentModel.PropertyDescriptor):Barotrauma.SerializableProperty
---@return Barotrauma.SerializableProperty
_G['SerializableProperty'].__new = function() end

