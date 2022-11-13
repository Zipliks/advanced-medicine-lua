---@meta
---@class Barotrauma.LuaCsHook : System.Object
---`Field Private Instance`
---@field harmony HarmonyLib.Harmony
---`Field Private Instance`
---@field patchModuleBuilder System.Lazy*1System*Reflection*Emit*ModuleBuilder
---`Field Private Instance`
---@field hookFunctions System.Collections.Generic.Dictionary*1System*String*1System*Collections*Generic*Dictionary*2System*String*2System*ValueTuple*3Barotrauma*LuaCsHook*LuaCsHookCallback*3Barotrauma*ACsMod|{[System.String|string]:System.Collections.Generic.Dictionary*1System*String*1System*ValueTuple*2Barotrauma*LuaCsHook*LuaCsHookCallback*2Barotrauma*ACsMod|{[System.String|string]:System.ValueTuple*1Barotrauma*LuaCsHook*LuaCsHookCallback*1Barotrauma*ACsMod}}
---`Field Private Instance`
---@field registeredPatches System.Collections.Generic.Dictionary*1Barotrauma*LuaCsHook*MethodKey*1Barotrauma*LuaCsHook*PatchedMethod|{[Barotrauma.LuaCsHook.MethodKey]:Barotrauma.LuaCsHook.PatchedMethod}
---`Field Private Instance`
---@field luaCs Barotrauma.LuaCsSetup
---`Field Private Instance`
---@field performanceMeasurement System.Diagnostics.Stopwatch
---`Field Private Instance`
---@field compatHookPrefixMethods System.Collections.Generic.Dictionary*1System*Int64*1System*Collections*Generic*HashSet*2System*ValueTuple*3System*String*3Barotrauma*LuaCsPatch*3Barotrauma*ACsMod|{[System.Int64|integer]:System.Collections.Generic.HashSet*1System*ValueTuple*2System*String*2Barotrauma*LuaCsPatch*2Barotrauma*ACsMod|System.ValueTuple*1System*String*1Barotrauma*LuaCsPatch*1Barotrauma*ACsMod[]}
---`Field Private Instance`
---@field compatHookPostfixMethods System.Collections.Generic.Dictionary*1System*Int64*1System*Collections*Generic*HashSet*2System*ValueTuple*3System*String*3Barotrauma*LuaCsPatch*3Barotrauma*ACsMod|{[System.Int64|integer]:System.Collections.Generic.HashSet*1System*ValueTuple*2System*String*2Barotrauma*LuaCsPatch*2Barotrauma*ACsMod|System.ValueTuple*1System*String*1Barotrauma*LuaCsPatch*1Barotrauma*ACsMod[]}
---`Field Private Static`
---@field prohibitedHooks System.String-arr|System.String|string[]
---`Field Private Static`
---@field instance Barotrauma.LuaCsHook
---`Field Private Static`
---@field InvalidIdentifierCharsRegex System.Text.RegularExpressions.Regex
---`Field Private Static`
---@field _miHookLuaCsPatchPrefix System.Reflection.MethodInfo
---`Field Private Static`
---@field _miHookLuaCsPatchPostfix System.Reflection.MethodInfo
---`Field Private Static`
---@field _miHookLuaCsPatchRetPrefix System.Reflection.MethodInfo
---`Field Private Static`
---@field _miHookLuaCsPatchRetPostfix System.Reflection.MethodInfo
---`Field Private Static`
---@field FIELD_LUACS System.String|string
_G['Hook'] = {}

---`Method Private Static`
---@param method System.Reflection.MethodBase
_G['Hook'].ValidatePatchTarget = function(method) end

---`Method Private Static`
---@param identifier System.String|string
---@return System.String|string
_G['Hook'].NormalizeIdentifier = function(identifier) end

---`Method Public Instance`
_G['Hook'].Initialize = function() end

---`Method Private Instance`
---@return System.Reflection.Emit.ModuleBuilder
_G['Hook'].CreateModuleBuilder = function() end

---`Method Public Instance`
---@param name System.String|string
---@param identifier System.String|string
---@param func Barotrauma.LuaCsFunc|(fun(...:System.Object):System.Object)
---@param owner? Barotrauma.ACsMod
_G['Hook'].Add = function(name, identifier, func, owner) end

---`Method Public Instance`
---@param name System.String|string
---@param identifier System.String|string
_G['Hook'].Remove = function(name, identifier) end

---`Method Public Instance`
_G['Hook'].Clear = function() end

---`Method Public Instance`
_G['Hook'].Update = function() end

---`Method Public Instance`
---@overload fun(name:System.String|string, ...:System.Object):Barotrauma.LuaCsHook.T
---@param name System.String|string
---@param ... System.Object
---@return System.Object
_G['Hook'].Call = function(name, ...) end

---`Method Private Static`
---@param className System.String|string
---@param methodName System.String|string
---@param parameters System.String-arr|System.String|string[]
---@return System.Reflection.MethodBase
_G['Hook'].ResolveMethod = function(className, methodName, parameters) end

---`Method Private Instance`
---@param identifier System.String|string
---@param original System.Reflection.MethodBase
---@param hookType Barotrauma.LuaCsHook.HookMethodType
---@return System.Reflection.MethodInfo
_G['Hook'].CreateDynamicHarmonyPatch = function(identifier, original, hookType) end

---`Method Private Instance`
---@param identifier System.String|string
---@param method System.Reflection.MethodBase
---@param patch Barotrauma.LuaCsPatchFunc|(fun(instance:System.Object, ptable:Barotrauma.LuaCsHook.ParameterTable):MoonSharp.Interpreter.DynValue)
---@param hookType? Barotrauma.LuaCsHook.HookMethodType
---@return System.String|string
_G['Hook'].Patch = function(identifier, method, patch, hookType) end

---`Method Public Instance`
---@overload fun(identifier:System.String|string, className:System.String|string, methodName:System.String|string, parameterTypes:System.String-arr|System.String|string[], patch:Barotrauma.LuaCsPatchFunc|(fun(instance:System.Object, ptable:Barotrauma.LuaCsHook.ParameterTable):MoonSharp.Interpreter.DynValue), hookType?:Barotrauma.LuaCsHook.HookMethodType):System.String|string
---@overload fun(identifier:System.String|string, className:System.String|string, methodName:System.String|string, patch:Barotrauma.LuaCsPatchFunc|(fun(instance:System.Object, ptable:Barotrauma.LuaCsHook.ParameterTable):MoonSharp.Interpreter.DynValue), hookType?:Barotrauma.LuaCsHook.HookMethodType):System.String|string
---@overload fun(className:System.String|string, methodName:System.String|string, parameterTypes:System.String-arr|System.String|string[], patch:Barotrauma.LuaCsPatchFunc|(fun(instance:System.Object, ptable:Barotrauma.LuaCsHook.ParameterTable):MoonSharp.Interpreter.DynValue), hookType?:Barotrauma.LuaCsHook.HookMethodType):System.String|string
---@param className System.String|string
---@param methodName System.String|string
---@param patch Barotrauma.LuaCsPatchFunc|(fun(instance:System.Object, ptable:Barotrauma.LuaCsHook.ParameterTable):MoonSharp.Interpreter.DynValue)
---@param hookType? Barotrauma.LuaCsHook.HookMethodType
---@return System.String|string
_G['Hook'].Patch = function(className, methodName, patch, hookType) end

---`Method Private Instance`
---@param identifier System.String|string
---@param method System.Reflection.MethodBase
---@param hookType Barotrauma.LuaCsHook.HookMethodType
---@return System.Boolean|boolean
_G['Hook'].RemovePatch = function(identifier, method, hookType) end

---`Method Public Instance`
---@overload fun(identifier:System.String|string, className:System.String|string, methodName:System.String|string, parameterTypes:System.String-arr|System.String|string[], hookType:Barotrauma.LuaCsHook.HookMethodType):System.Boolean|boolean
---@param identifier System.String|string
---@param className System.String|string
---@param methodName System.String|string
---@param hookType Barotrauma.LuaCsHook.HookMethodType
---@return System.Boolean|boolean
_G['Hook'].RemovePatch = function(identifier, className, methodName, hookType) end

---`Method Private Static`
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object-arr|System.Object[]
---@param __instance System.Object
---@param result System.Object-ref
---@param hookType Barotrauma.LuaCsHook.HookMethodType
_G['Hook']._hookLuaCsPatch = function(__originalMethod, __args, __instance, result, hookType) end

---`Method Private Static`
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object-arr|System.Object[]
---@param __instance System.Object
---@return System.Boolean|boolean
_G['Hook'].HookLuaCsPatchPrefix = function(__originalMethod, __args, __instance) end

---`Method Private Static`
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object-arr|System.Object[]
---@param __instance System.Object
_G['Hook'].HookLuaCsPatchPostfix = function(__originalMethod, __args, __instance) end

---`Method Private Static`
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object-arr|System.Object[]
---@param __result System.Object-ref
---@param __instance System.Object
---@return System.Boolean|boolean
_G['Hook'].HookLuaCsPatchRetPrefix = function(__originalMethod, __args, __result, __instance) end

---`Method Private Static`
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object-arr|System.Object[]
---@param __result System.Object-ref
---@param __instance System.Object
_G['Hook'].HookLuaCsPatchRetPostfix = function(__originalMethod, __args, __result, __instance) end

---`Method Public Instance`
---@param identifier System.String|string
---@param method System.Reflection.MethodBase
---@param patch Barotrauma.LuaCsPatch|(fun(self:System.Object, args:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}):System.Object)
---@param hookType? Barotrauma.LuaCsHook.HookMethodType
---@param owner? Barotrauma.ACsMod
_G['Hook'].HookMethod = function(identifier, method, patch, hookType, owner) end

---`Method NonPublic Instance`
---@overload fun(identifier:System.String|string, className:System.String|string, methodName:System.String|string, parameterNames:System.String-arr|System.String|string[], patch:Barotrauma.LuaCsPatch|(fun(self:System.Object, args:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}):System.Object), hookMethodType?:Barotrauma.LuaCsHook.HookMethodType)
---@overload fun(identifier:System.String|string, className:System.String|string, methodName:System.String|string, patch:Barotrauma.LuaCsPatch|(fun(self:System.Object, args:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}):System.Object), hookMethodType?:Barotrauma.LuaCsHook.HookMethodType)
---@overload fun(className:System.String|string, methodName:System.String|string, patch:Barotrauma.LuaCsPatch|(fun(self:System.Object, args:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}):System.Object), hookMethodType?:Barotrauma.LuaCsHook.HookMethodType)
---@param className System.String|string
---@param methodName System.String|string
---@param parameterNames System.String-arr|System.String|string[]
---@param patch Barotrauma.LuaCsPatch|(fun(self:System.Object, args:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object}):System.Object)
---@param hookMethodType? Barotrauma.LuaCsHook.HookMethodType
_G['Hook'].HookMethod = function(className, methodName, parameterNames, patch, hookMethodType) end

---`Method Public Instance`
---@param identifier System.String|string
---@param method System.Reflection.MethodBase
---@param hookType? Barotrauma.LuaCsHook.HookMethodType
_G['Hook'].UnhookMethod = function(identifier, method, hookType) end

---`Method NonPublic Instance`
---@param identifier System.String|string
---@param className System.String|string
---@param methodName System.String|string
---@param parameterNames System.String-arr|System.String|string[]
---@param hookType? Barotrauma.LuaCsHook.HookMethodType
_G['Hook'].UnhookMethod = function(identifier, className, methodName, parameterNames, hookType) end

---`Constructor NonPublic Instance`
---@overload fun(luaCs:Barotrauma.LuaCsSetup):Barotrauma.LuaCsHook
---@return Barotrauma.LuaCsHook
_G['Hook'] = function() end

---`Constructor NonPublic Instance`
---@overload fun(luaCs:Barotrauma.LuaCsSetup):Barotrauma.LuaCsHook
---@return Barotrauma.LuaCsHook
_G['Hook'].__new = function() end

---`Constructor Private Static`
---@overload fun(luaCs:Barotrauma.LuaCsSetup):Barotrauma.LuaCsHook
---@return Barotrauma.LuaCsHook
_G['Hook'] = function() end

---`Constructor Private Static`
---@overload fun(luaCs:Barotrauma.LuaCsSetup):Barotrauma.LuaCsHook
---@return Barotrauma.LuaCsHook
_G['Hook'].__new = function() end

