---@meta
---@class Barotrauma.Hull : Barotrauma.MapEntity
---`Field Private Instance`
---@field lastSentVolume System.Single|number
---`Field Private Instance`
---@field lastSentOxygen System.Single|number
---`Field Private Instance`
---@field lastSentFireCount System.Int32|integer
---`Field Private Instance`
---@field statusUpdateTimer System.Single|number
---`Field Private Instance`
---@field decalUpdateTimer System.Single|number
---`Field Private Instance`
---@field backgroundSectionUpdateTimer System.Single|number
---`Field Private Instance`
---@field decalUpdatePending System.Boolean|boolean
---`Field Public Instance`
---@field properties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Field Private Instance`
---@field lethalPressure System.Single|number
---`Field Private Instance`
---@field surface System.Single|number
---`Field Private Instance`
---@field waterVolume System.Single|number
---`Field Private Instance`
---@field pressure System.Single|number
---`Field Private Instance`
---@field oxygen System.Single|number
---`Field Private Instance`
---@field update System.Boolean|boolean
---`Field Public Instance`
---@field Visible System.Boolean|boolean
---`Field Private Instance`
---@field waveY System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field waveVel System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field leftDelta System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field rightDelta System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field decals System.Collections.Generic.List*1Barotrauma*Decal|Barotrauma.Decal[]
---`Field Public Instance`
---@field ConnectedGaps System.Collections.Generic.List*1Barotrauma*Gap|Barotrauma.Gap[]
---`Field Private Instance`
---@field moduleTags System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field roomName System.String|string
---`Field Public Instance`
---@field OriginalAmbientLight System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Private Instance`
---@field ambientLight Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field isWetRoom System.Boolean|boolean
---`Field Private Instance`
---@field avoidStaying System.Boolean|boolean
---`Field Private Instance`
---@field pendingSectionUpdates System.Collections.Generic.HashSet*1System*Int32|System.Int32|integer[]
---`Field Public Instance`
---@field xBackgroundMax System.Int32|integer
---`Field Public Instance`
---@field yBackgroundMax System.Int32|integer
---`Field Private Instance`
---@field networkUpdatePending System.Boolean|boolean
---`Field Private Instance`
---@field networkUpdateTimer System.Single|number
---`Field Private Instance`
---@field adjacentHulls System.Collections.Generic.HashSet*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Public Static`
---@field HullList System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
---`Field Public Static`
---@field EntityGrids System.Collections.Generic.List*1Barotrauma*EntityGrid|Barotrauma.EntityGrid[]
---`Field Public Static`
---@field ShowHulls System.Boolean|boolean
---`Field Public Static`
---@field EditWater System.Boolean|boolean
---`Field Public Static`
---@field EditFire System.Boolean|boolean
---`Field Public Static`
---@field WaveStiffness System.Single|number
---`Field Public Static`
---@field WaveSpread System.Single|number
---`Field Public Static`
---@field WaveDampening System.Single|number
---`Field Public Static`
---@field OxygenDistributionSpeed System.Single|number
---`Field Public Static`
---@field OxygenDeteriorationSpeed System.Single|number
---`Field Public Static`
---@field OxygenConsumptionSpeed System.Single|number
---`Field Public Static`
---@field WaveWidth System.Int32|integer
---`Field Public Static`
---@field MaxCompress System.Single|number
---`Field Public Static`
---@field BackgroundSectionSize System.Int32|integer
---`Field Public Static`
---@field BackgroundSectionsPerNetworkEvent System.Int32|integer
---`Field Public Static`
---@field MaxDecalsPerHull System.Int32|integer
---`Field Private Static`
---@field sectorWidth System.Int32|integer
---`Field Private Static`
---@field sectorHeight System.Int32|integer
---`Field Private Static`
---@field minColorStrength System.Single|number
---`Field Private Static`
---@field maxColorStrength System.Single|number
---`Getter Public Instance Virtual`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisplayName Barotrauma.LocalizedString
---`Getter Public Instance`
---@field OutpostModuleTags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RoomName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AmbientLight Microsoft.Xna.Framework.Color
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---@field Linkable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LethalPressure System.Single|number
---`Getter Public Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CeilingHeight System.Single|number
---`Getter Public Instance`
---@field Surface System.Single|number
---`Getter Public Instance`
---@field WorldSurface System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WaterVolume System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Oxygen System.Single|number
---`Getter Private Instance`
---@field ForceAsWetRoom System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsWetRoom System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvoidStaying System.Boolean|boolean
---`Getter Public Instance`
---@field WaterPercentage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OxygenPercentage System.Single|number
---`Getter Public Instance`
---@field Volume System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Pressure System.Single|number
---`Getter Public Instance`
---@field WaveY System.Single-arr|System.Single|number[]
---`Getter Public Instance`
---@field WaveVel System.Single-arr|System.Single|number[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BackgroundSections System.Collections.Generic.List*1Barotrauma*BackgroundSection|Barotrauma.BackgroundSection[]
---`Getter Public Instance`
---@field SupportsPaintedColors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FireSources System.Collections.Generic.List*1Barotrauma*FireSource|Barotrauma.FireSource[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FakeFireSources System.Collections.Generic.List*1Barotrauma*DummyFireSource|Barotrauma.DummyFireSource[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BallastFlora Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
_G['Hull'] = {}

---`Method Public Instance`
---@param section Barotrauma.BackgroundSection
---@param color System.Nullable*1Microsoft*Xna*Framework*Color
---@param strength System.Nullable*1System*Single|number
---@param requiresUpdate System.Boolean|boolean
---@param isCleaning System.Boolean|boolean
_G['Hull'].IncreaseSectionColorOrStrength = function(section, color, strength, requiresUpdate, isCleaning) end

---`Method Public Instance`
---@param section Barotrauma.BackgroundSection
---@param color System.Nullable*1Microsoft*Xna*Framework*Color
---@param strength System.Nullable*1System*Single|number
_G['Hull'].SetSectionColorOrStrength = function(section, color, strength) end

---`Method Public Instance`
---@param section Barotrauma.BackgroundSection
---@param cleanVal System.Single|number
---@param updateRequired System.Boolean|boolean
_G['Hull'].CleanSection = function(section, cleanVal, updateRequired) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param submarine Barotrauma.Submarine
---@param idRemap Barotrauma.IdRemap
---@return Barotrauma.Hull
_G['Hull'].Load = function(element, submarine, idRemap) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Hull'].Save = function(parentElement) end

---`Method Public Instance Virtual`
---@param position Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['Hull'].IsMouseOn = function(position) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Hull'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Hull'].ServerEventRead = function(msg, c) end

---`Method Public Static`
---@return Microsoft.Xna.Framework.Rectangle
_G['Hull'].GetBorders = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.MapEntity
_G['Hull'].Clone = function() end

---`Method Public Static`
---@overload fun(worldRect:Microsoft.Xna.Framework.Rectangle):Barotrauma.EntityGrid
---@param submarine Barotrauma.Submarine
---@return Barotrauma.EntityGrid
_G['Hull'].GenerateEntityGrid = function(submarine) end

---`Method Public Instance`
---@param tags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['Hull'].SetModuleTags = function(tags) end

---`Method Public Instance Virtual`
_G['Hull'].OnMapLoaded = function() end

---`Method Public Instance`
---@param submarine Barotrauma.Submarine
_G['Hull'].AddToGrid = function(submarine) end

---`Method Public Instance`
---@overload fun(position:Microsoft.Xna.Framework.Vector2):System.Int32|integer
---@param xPos System.Single|number
---@return System.Int32|integer
_G['Hull'].GetWaveIndex = function(xPos) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Hull'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
_G['Hull'].ShallowRemove = function() end

---`Method Public Instance Virtual`
_G['Hull'].Remove = function() end

---`Method Public Instance`
---@param fireSource Barotrauma.FireSource
_G['Hull'].AddFireSource = function(fireSource) end

---`Method Public Instance`
---@overload fun(decalId:System.UInt32|integer, worldPosition:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, isNetworkEvent:System.Boolean|boolean, spriteIndex?:System.Nullable*1System*Int32|integer):Barotrauma.Decal
---@param decalName System.String|string
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param scale System.Single|number
---@param isNetworkEvent System.Boolean|boolean
---@param spriteIndex? System.Nullable*1System*Int32|integer
---@return Barotrauma.Decal
_G['Hull'].AddDecal = function(decalName, worldPosition, scale, isNetworkEvent, spriteIndex) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['Hull'].SharedStatusWrite = function(msg) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param backgroundSectionsEventData Barotrauma.BackgroundSectionsEventData-ref
_G['Hull'].SharedBackgroundSectionsWrite = function(msg, backgroundSectionsEventData) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param newWaterVolume System.Single-ref
---@param newFireSources Barotrauma.NetworkFireSource-arr-ref
_G['Hull'].SharedStatusRead = function(msg, newWaterVolume, newFireSources) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param action System.Action*1Barotrauma*Hull*BackgroundSectionNetworkUpdate|(fun(obj:Barotrauma.Hull.BackgroundSectionNetworkUpdate))
---@param sectorToUpdate System.Int32-ref
_G['Hull'].SharedBackgroundSectionRead = function(msg, action, sectorToUpdate) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Hull'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Hull'].UpdateProjSpecific = function(deltaTime, cam) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param item Barotrauma.Item
_G['Hull'].ApplyFlowForces = function(deltaTime, item) end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param amount System.Single|number
---@param position Microsoft.Xna.Framework.Vector2
---@param extinguishRealFires? System.Boolean|boolean
---@param extinguishFakeFires? System.Boolean|boolean
_G['Hull'].Extinguish = function(deltaTime, amount, position, extinguishRealFires, extinguishFakeFires) end

---`Method Public Instance`
---@param fire Barotrauma.FireSource
_G['Hull'].RemoveFire = function(fire) end

---`Method Public Instance`
---@param includingThis System.Boolean|boolean
---@param searchDepth? System.Nullable*1System*Int32|integer
---@param ignoreClosedGaps? System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Hull|(fun():Barotrauma.Hull)
_G['Hull'].GetConnectedHulls = function(includingThis, searchDepth, ignoreClosedGaps) end

---`Method Private Instance`
---@param connectedHulls System.Collections.Generic.HashSet*1Barotrauma*Hull|Barotrauma.Hull[]
---@param step System.Int32-ref
---@param searchDepth System.Int32|integer
---@param ignoreClosedGaps? System.Boolean|boolean
_G['Hull'].GetAdjacentHulls = function(connectedHulls, step, searchDepth, ignoreClosedGaps) end

---`Method Public Instance`
---@param startPos Microsoft.Xna.Framework.Vector2
---@param endPos Microsoft.Xna.Framework.Vector2
---@param targetHull Barotrauma.Hull
---@param maxDistance System.Single|number
---@param distanceMultiplierPerClosedDoor? System.Single|number
---@return System.Single|number
_G['Hull'].GetApproximateDistance = function(startPos, endPos, targetHull, maxDistance, distanceMultiplierPerClosedDoor) end

---`Method Private Instance`
---@param startPos Microsoft.Xna.Framework.Vector2
---@param endPos Microsoft.Xna.Framework.Vector2
---@param connectedHulls System.Collections.Generic.HashSet*1Barotrauma*Hull|Barotrauma.Hull[]
---@param target Barotrauma.Hull
---@param distance System.Single|number
---@param maxDistance System.Single|number
---@param distanceMultiplierFromDoors? System.Single|number
---@return System.Single|number
_G['Hull'].GetApproximateHullDistance = function(startPos, endPos, connectedHulls, target, distance, maxDistance, distanceMultiplierFromDoors) end

---`Method Public Static`
---@param position Microsoft.Xna.Framework.Vector2
---@param guess? Barotrauma.Hull
---@param useWorldCoordinates? System.Boolean|boolean
---@param inclusive? System.Boolean|boolean
---@return Barotrauma.Hull
_G['Hull'].FindHull = function(position, guess, useWorldCoordinates, inclusive) end

---`Method Public Static`
---@param position Microsoft.Xna.Framework.Vector2
---@param guess? Barotrauma.Hull
---@param useWorldCoordinates? System.Boolean|boolean
---@param inclusive? System.Boolean|boolean
---@return Barotrauma.Hull
_G['Hull'].FindHullUnoptimized = function(position, guess, useWorldCoordinates, inclusive) end

---`Method Public Static`
---@param c? Barotrauma.Character
_G['Hull'].DetectItemVisibility = function(c) end

---`Method Private Instance`
---@param other Barotrauma.Hull
---@param allowIndirect? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Hull'].CanSeeOther = function(other, allowIndirect) end

---`Method Public Instance`
---@return System.String|string
_G['Hull'].CreateRoomName = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Hull'].IsTaggedAirlock = function() end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Hull'].LeadsOutside = function(character) end

---`Method Private Instance`
_G['Hull'].CreateBackgroundSections = function() end

---`Method Public Static`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Hull
_G['Hull'].GetCleanTarget = function(worldPosition) end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@return Barotrauma.BackgroundSection
_G['Hull'].GetBackgroundSection = function(worldPosition) end

---`Method Public Instance`
---@param rectArea Microsoft.Xna.Framework.Rectangle
---@return System.Collections.Generic.IEnumerable*1Barotrauma*BackgroundSection|(fun():Barotrauma.BackgroundSection)
_G['Hull'].GetBackgroundSectionsViaContaining = function(rectArea) end

---`Method Public Instance`
---@param index System.Int32|integer
---@param row System.Int32|integer
---@return System.Boolean|boolean
_G['Hull'].DoesSectionMatch = function(index, row) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Hull
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Hull
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@return Barotrauma.Hull
_G['Hull'] = function(rectangle, submarine, id) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Hull
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Hull
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@return Barotrauma.Hull
_G['Hull'].__new = function(rectangle, submarine, id) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Hull
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Hull
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@return Barotrauma.Hull
_G['Hull'] = function(rectangle, submarine, id) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Hull
---@overload fun(rectangle:Microsoft.Xna.Framework.Rectangle):Barotrauma.Hull
---@param rectangle Microsoft.Xna.Framework.Rectangle
---@param submarine Barotrauma.Submarine
---@param id? System.UInt16|integer
---@return Barotrauma.Hull
_G['Hull'].__new = function(rectangle, submarine, id) end

