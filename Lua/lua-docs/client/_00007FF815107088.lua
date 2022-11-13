---@meta
---@class Barotrauma.CrewManager : System.Object
---`Field Private Instance`
---@field screenResolution Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field DraggedOrderPrefab Barotrauma.OrderPrefab
---`Field Public Instance`
---@field DragOrder System.Boolean|boolean
---`Field Private Instance`
---@field dropOrder System.Boolean|boolean
---`Field Private Instance`
---@field framesToSkip System.Int32|integer
---`Field Private Instance`
---@field dragOrderTreshold System.Single|number
---`Field Private Instance`
---@field dragPoint Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field guiFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field crewArea Barotrauma.GUIFrame
---`Field Private Instance`
---@field crewList Barotrauma.GUIListBox
---`Field Private Instance`
---@field crewListOpenState System.Single|number
---`Field Private Instance`
---@field _isCrewMenuOpen System.Boolean|boolean
---`Field Private Instance`
---@field crewListEntrySize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field prevUIScale System.Single|number
---`Field Public Instance`
---@field AllowCharacterSwitch System.Boolean|boolean
---`Field Public Instance`
---@field OrderOptionButtons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field jobIndicatorBackground Barotrauma.Sprite
---`Field Private Instance`
---@field previousOrderArrow Barotrauma.Sprite
---`Field Private Instance`
---@field cancelIcon Barotrauma.Sprite
---`Field Private Instance`
---@field commandFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field targetFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field centerNode Barotrauma.GUIButton
---`Field Private Instance`
---@field returnNode Barotrauma.GUIButton
---`Field Private Instance`
---@field expandNode Barotrauma.GUIButton
---`Field Private Instance`
---@field shortcutCenterNode Barotrauma.GUIFrame
---`Field Private Instance`
---@field optionNodes System.Collections.Generic.List*1Barotrauma*CrewManager*OptionNode|Barotrauma.CrewManager.OptionNode[]
---`Field Private Instance`
---@field returnNodeHotkey Microsoft.Xna.Framework.Input.Keys
---`Field Private Instance`
---@field expandNodeHotkey Microsoft.Xna.Framework.Input.Keys
---`Field Private Instance`
---@field shortcutNodes System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Instance`
---@field extraOptionNodes System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Instance`
---@field nodeConnectors Barotrauma.GUICustomComponent
---`Field Private Instance`
---@field background Barotrauma.GUIImage
---`Field Private Instance`
---@field selectedNode Barotrauma.GUIButton
---`Field Private Instance`
---@field selectionTime System.Single|number
---`Field Private Instance`
---@field timeSelected System.Single|number
---`Field Private Instance`
---@field clicklessSelectionActive System.Boolean|boolean
---`Field Private Instance`
---@field isOpeningClick System.Boolean|boolean
---`Field Private Instance`
---@field isSelectionHighlighted System.Boolean|boolean
---`Field Private Instance`
---@field centerNodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field nodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field shortcutCenterNodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field shortcutNodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field returnNodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field assignmentNodeSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field centerNodeMargin System.Single|number
---`Field Private Instance`
---@field optionNodeMargin System.Single|number
---`Field Private Instance`
---@field shortcutCenterNodeMargin System.Single|number
---`Field Private Instance`
---@field shortcutNodeMargin System.Single|number
---`Field Private Instance`
---@field returnNodeMargin System.Single|number
---`Field Private Instance`
---@field availableCategories System.Collections.Generic.List*1Barotrauma*OrderCategory|Barotrauma.OrderCategory[]
---`Field Private Instance`
---@field historyNodes System.Collections.Generic.Stack*1Barotrauma*GUIButton|(fun():Barotrauma.GUIButton)
---`Field Private Instance`
---@field extraOptionCharacters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field nodeDistance System.Int32|integer
---`Field Private Instance`
---@field characterContext Barotrauma.Character
---`Field Private Instance`
---@field itemContext Barotrauma.Item
---`Field Private Instance`
---@field hullContext Barotrauma.Hull
---`Field Private Instance`
---@field wallContext Barotrauma.WallSection
---`Field Private Instance`
---@field isContextual System.Boolean|boolean
---`Field Private Instance`
---@field contextualOrders System.Collections.Generic.List*1Barotrauma*Order|Barotrauma.Order[]
---`Field Private Instance`
---@field shorcutCenterNodeOffset Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field conversationTimer System.Single|number
---`Field Private Instance`
---@field conversationLineTimer System.Single|number
---`Field Private Instance`
---@field pendingConversationLines System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Character*2System*String|System.ValueTuple*1Barotrauma*Character*1System*String[]
---`Field Private Instance`
---@field characterInfos System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Field Private Instance`
---@field characters System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field welcomeMessageNPC Barotrauma.Character
---`Field Public Instance`
---@field ActiveReadyCheck Barotrauma.ReadyCheck
---`Field Public Static`
---@field PreferCrewMenuOpen System.Boolean|boolean
---`Field Private Static`
---@field CommandNodeAnimDuration System.Single|number
---`Field Private Static`
---@field nodeColorMultiplier System.Single|number
---`Field Private Static`
---@field returnNodeDistanceModifier System.Single|number
---`Field Private Static`
---@field maxShortcutNodeCount System.Int32|integer
---`Field Private Static`
---@field ConversationIntervalMin System.Single|number
---`Field Private Static`
---@field ConversationIntervalMax System.Single|number
---`Field Private Static`
---@field ConversationIntervalMultiplierMultiplayer System.Single|number
---`Field Public Static`
---@field MaxCrewSize System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ReportButtonFrame Barotrauma.GUIComponent
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ChatBox Barotrauma.ChatBox
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsCrewMenuOpen System.Boolean|boolean
---`Getter Public Static`
---@field IsCommandInterfaceOpen System.Boolean|boolean
---`Getter Private Instance`
---@field dismissedOrderPrefab Barotrauma.OrderPrefab
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field WasCommandInterfaceDisabledThisUpdate System.Boolean|boolean
---`Getter Public Static`
---@field CanIssueOrders System.Boolean|boolean
---`Getter Public Instance`
---@field CharacterInfos System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HasBots System.Boolean|boolean
---`Getter Public Instance`
---@field ActiveOrders System.Collections.Generic.List*1Barotrauma*CrewManager*ActiveOrder|Barotrauma.CrewManager.ActiveOrder[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsSinglePlayer System.Boolean|boolean
_G['CrewManager'] = {}

---`Method Private Instance`
_G['CrewManager'].CreateOrderCategoryNodes = function() end

---`Method Private Instance`
---@param category Barotrauma.OrderCategory
---@param offset Microsoft.Xna.Framework.Point
---@param hotkey System.Int32|integer
_G['CrewManager'].CreateOrderCategoryNode = function(category, offset, hotkey) end

---`Method Private Instance`
_G['CrewManager'].CreateShortcutNodes = function() end

---`Method Private Instance`
---@param orderCategory Barotrauma.OrderCategory
_G['CrewManager'].CreateOrderNodes = function(orderCategory) end

---`Method Private Instance`
_G['CrewManager'].CreateContextualOrderNodes = function() end

---`Method Public Static`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['CrewManager'].DoesItemHaveContextualOrders = function(item) end

---`Method Private Instance`
---@param size Microsoft.Xna.Framework.Point
---@param parent Barotrauma.RectTransform
---@param offset Microsoft.Xna.Framework.Point
---@param order Barotrauma.Order
---@param hotkey System.Int32|integer
---@param disableNode? System.Boolean|boolean
---@param checkIfOrderCanBeHeard? System.Boolean|boolean
---@return Barotrauma.GUIButton
_G['CrewManager'].CreateOrderNode = function(size, parent, offset, order, hotkey, disableNode, checkIfOrderCanBeHeard) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@param submarine Barotrauma.Submarine
---@param matchingItems System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['CrewManager'].CreateMinimapNodes = function(order, submarine, matchingItems) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@param targetItem Barotrauma.Item
_G['CrewManager'].CreateOrderOptionNodes = function(order, targetItem) end

---`Method Private Instance`
---@param size Microsoft.Xna.Framework.Point
---@param parent Barotrauma.RectTransform
---@param offset Microsoft.Xna.Framework.Point
---@param order Barotrauma.Order
---@param hotkey System.Int32|integer
---@return Barotrauma.GUIButton
_G['CrewManager'].CreateOrderOptionNode = function(size, parent, offset, order, hotkey) end

---`Method Private Instance`
---@param node Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['CrewManager'].CreateAssignmentNodes = function(node) end

---`Method Private Instance`
---@param characters System.Int32|integer
---@param firstRing? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['CrewManager'].GetAssignmentNodeOffsets = function(characters, firstRing) end

---`Method Private Instance`
---@param node Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['CrewManager'].ExpandAssignmentNodes = function(node, userData) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@param character Barotrauma.Character
---@param offset Microsoft.Xna.Framework.Point
---@param hotkey System.Int32|integer
---@param nameLabelScale? System.Single|number
_G['CrewManager'].CreateAssignmentNode = function(order, character, offset, hotkey, nameLabelScale) end

---`Method Private Instance`
---@overload fun(relativeSize:Microsoft.Xna.Framework.Vector2, parent:Barotrauma.RectTransform, sprite:Barotrauma.Sprite, color:Microsoft.Xna.Framework.Color, tooltip?:Barotrauma.LocalizedString):Barotrauma.GUIImage
---@overload fun(absoluteSize:Microsoft.Xna.Framework.Point, parent:Barotrauma.RectTransform, sprite:Barotrauma.Sprite, color:Microsoft.Xna.Framework.Color, tooltip?:Barotrauma.LocalizedString):Barotrauma.GUIImage
---@param parent Barotrauma.RectTransform
---@param style System.String|string
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param tooltip? Barotrauma.LocalizedString
_G['CrewManager'].CreateNodeIcon = function(parent, style, color, tooltip) end

---`Method Private Instance`
---@param parent Barotrauma.RectTransform
---@param hotkey System.Int32|integer
---@param enlargeIcon? System.Boolean|boolean
_G['CrewManager'].CreateHotkeyIcon = function(parent, hotkey, enlargeIcon) end

---`Method Private Instance`
---@param parent Barotrauma.RectTransform
---@param tooltip? Barotrauma.LocalizedString
_G['CrewManager'].CreateBlockIcon = function(parent, tooltip) end

---`Method Private Instance`
---@param nodes System.Int32|integer
---@return System.Int32|integer
_G['CrewManager'].GetCircumferencePointCount = function(nodes) end

---`Method Private Instance`
---@param nodeCount System.Int32|integer
---@return System.Single|number
_G['CrewManager'].GetFirstNodeAngle = function(nodeCount) end

---`Method Private Instance`
---@param startPoint Microsoft.Xna.Framework.Vector2
---@param endPoint Microsoft.Xna.Framework.Vector2
---@param flipY? System.Boolean|boolean
---@param flipX? System.Boolean|boolean
---@return System.Single|number
_G['CrewManager'].GetBearing = function(startPoint, endPoint, flipY, flipX) end

---`Method Private Instance`
---@param breachedHull Barotrauma.Hull-ref
---@param hoveredWall Barotrauma.WallSection-ref
---@return System.Boolean|boolean
_G['CrewManager'].TryGetBreachedHullAtHoveredWall = function(breachedHull, hoveredWall) end

---`Method Private Instance`
---@return Barotrauma.Submarine
_G['CrewManager'].GetTargetSubmarine = function() end

---`Method Private Instance`
---@param component Barotrauma.GUIComponent
---@param character Barotrauma.Character
_G['CrewManager'].SetCharacterTooltip = function(component, character) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@return Barotrauma.LocalizedString
_G['CrewManager'].GetOrderNameBasedOnContextuality = function(order) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param order Barotrauma.Order
---@return System.Int32|integer
_G['CrewManager'].GetManualOrderPriority = function(character, order) end

---`Method Private Instance`
---@overload fun(order:Barotrauma.Order):System.Boolean|boolean
---@param order Barotrauma.OrderPrefab
---@return System.Boolean|boolean
_G['CrewManager'].IsOrderAvailable = function(order) end

---`Method Private Instance`
---@param node Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['CrewManager'].CanOpenManualAssignmentMinimapOrder = function(node) end

---`Method Private Instance`
---@param node Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['CrewManager'].CanOpenManualAssignment = function(node) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@return Barotrauma.Character
_G['CrewManager'].GetCharacterForQuickAssignment = function(order) end

---`Method Public Static`
---@param order Barotrauma.Order
---@param controlledCharacter Barotrauma.Character
---@param characters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@param includeSelf? System.Boolean|boolean
---@return Barotrauma.Character
_G['CrewManager'].GetCharacterForQuickAssignment = function(order, controlledCharacter, characters, includeSelf) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@return System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]
_G['CrewManager'].GetCharactersForManualAssignment = function(order) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CrewManager'].GetOrderableFriendlyNPCs = function() end

---`Method Public Instance`
_G['CrewManager'].UpdateReports = function() end

---`Method Private Instance`
---@overload fun(orderIdentifier:System.String|string, enabled:System.Boolean|boolean)
---@param orderIdentifier Barotrauma.Identifier
---@param enabled System.Boolean|boolean
_G['CrewManager'].ToggleReportButton = function(orderIdentifier, enabled) end

---`Method Public Instance`
_G['CrewManager'].InitSinglePlayerRound = function() end

---`Method Public Instance`
_G['CrewManager'].Reset = function() end

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['CrewManager'].Save = function(parentElement) end

---`Method Public Static`
---@param inc Barotrauma.Networking.IReadMessage
_G['CrewManager'].ClientReadActiveOrders = function(inc) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CrewManager'].GetCharacters = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CharacterInfo|(fun():Barotrauma.CharacterInfo)
_G['CrewManager'].GetCharacterInfos = function() end

---`Method Private Instance`
_G['CrewManager'].InitProjectSpecific = function() end

---`Method Public Instance`
---@param order Barotrauma.Order
---@param fadeOutTime System.Nullable*1System*Single|number
---@return System.Boolean|boolean
_G['CrewManager'].AddOrder = function(order, fadeOutTime) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].AddCharacterElements = function(element) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].RemoveCharacterInfo = function(characterInfo) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param sortCrewList? System.Boolean|boolean
_G['CrewManager'].AddCharacter = function(character, sortCrewList) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param removeInfo? System.Boolean|boolean
---@param resetCrewListIndex? System.Boolean|boolean
_G['CrewManager'].RemoveCharacter = function(character, removeInfo, resetCrewListIndex) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].AddCharacterInfo = function(characterInfo) end

---`Method Public Instance`
_G['CrewManager'].InitRound = function() end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param newName System.String|string
_G['CrewManager'].RenameCharacter = function(characterInfo, newName) end

---`Method Private Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].RenameCharacterProjSpecific = function(characterInfo) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManager'].FireCharacter = function(characterInfo) end

---`Method Public Instance`
_G['CrewManager'].ClearCurrentOrders = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['CrewManager'].Update = function(deltaTime) end

---`Method Public Instance`
---@param conversationLines System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Character*2System*String|System.ValueTuple*1Barotrauma*Character*1System*String[]
_G['CrewManager'].AddConversation = function(conversationLines) end

---`Method Private Instance`
_G['CrewManager'].CreateRandomConversation = function() end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['CrewManager'].UpdateConversations = function(deltaTime) end

---`Method Public Static`
---@param order Barotrauma.Order
---@param characters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@param controlledCharacter Barotrauma.Character
---@param includeSelf System.Boolean|boolean
---@param extraCharacters? System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['CrewManager'].GetCharactersSortedForOrder = function(order, characters, controlledCharacter, includeSelf, extraCharacters) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['CrewManager'].UpdateProjectSpecific = function(deltaTime) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].SaveActiveOrders = function(element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['CrewManager'].LoadActiveOrders = function(element) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['CrewManager'].AutoShowCrewList = function() end

---`Method Public Instance`
_G['CrewManager'].AutoHideCrewList = function() end

---`Method Public Instance`
_G['CrewManager'].ResetCrewList = function() end

---`Method Public Static`
---@param crewManager Barotrauma.CrewManager
---@param parent Barotrauma.GUIComponent
---@param reports System.Collections.Generic.IReadOnlyList*1Barotrauma*OrderPrefab|Barotrauma.OrderPrefab[]
---@param isHorizontal System.Boolean|boolean
_G['CrewManager'].CreateReportButtons = function(crewManager, parent, reports, isHorizontal) end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Rectangle
_G['CrewManager'].GetActiveCrewArea = function() end

---`Method Public Instance`
---@param character Barotrauma.Character
---@return Barotrauma.GUIComponent
_G['CrewManager'].AddCharacterToCrewList = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['CrewManager'].RemoveCharacterFromCrewList = function(character) end

---`Method Private Static`
---@param characterComponent Barotrauma.GUIComponent
_G['CrewManager'].SetCharacterComponentTooltip = function(characterComponent) end

---`Method Public Instance`
---@param component Barotrauma.GUIComponent
---@param selection System.Object
---@return System.Boolean|boolean
_G['CrewManager'].CharacterClicked = function(component, selection) end

---`Method Public Instance`
---@param revivedCharacter Barotrauma.Character
_G['CrewManager'].ReviveCharacter = function(revivedCharacter) end

---`Method Public Instance`
---@param killedCharacter Barotrauma.Character
---@param resetCrewListIndex? System.Boolean|boolean
_G['CrewManager'].KillCharacter = function(killedCharacter, resetCrewListIndex) end

---`Method Private Instance`
---@param component Barotrauma.GUIComponent
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['CrewManager'].KillCharacterAnim = function(component) end

---`Method Private Instance`
---@param crewList Barotrauma.GUIListBox
---@param draggedElementData System.Object
_G['CrewManager'].OnCrewListRearranged = function(crewList, draggedElementData) end

---`Method Private Instance`
---@param c Barotrauma.Character
_G['CrewManager'].ResetCrewListIndex = function(c) end

---`Method Private Instance`
_G['CrewManager'].UpdateCrewListIndices = function() end

---`Method Private Instance`
_G['CrewManager'].SortCrewList = function() end

---`Method Public Instance`
---@overload fun(senderName:Barotrauma.LocalizedString, text:Barotrauma.LocalizedString, messageType:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character)
---@overload fun(senderName:System.String|string, text:System.String|string, messageType:Barotrauma.Networking.ChatMessageType, sender:Barotrauma.Character)
---@param message Barotrauma.Networking.ChatMessage
_G['CrewManager'].AddSinglePlayerChatMessage = function(message) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param muted System.Boolean|boolean
---@param mutedLocally System.Boolean|boolean
_G['CrewManager'].SetPlayerVoiceIconState = function(client, muted, mutedLocally) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['CrewManager'].SetClientSpeaking = function(client) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['CrewManager'].SetCharacterSpeaking = function(character) end

---`Method Private Instance`
---@overload fun(characterComponent:Barotrauma.GUIComponent):Barotrauma.GUIComponent
---@param character Barotrauma.Character
---@return Barotrauma.GUIComponent
_G['CrewManager'].GetSoundIconParent = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param order Barotrauma.Order
---@param isNewOrder? System.Boolean|boolean
_G['CrewManager'].SetCharacterOrder = function(character, order, isNewOrder) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param order Barotrauma.Order
_G['CrewManager'].AddCurrentOrderIcon = function(character, order) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param characterComponent Barotrauma.GUIComponent
---@param orderInfo Barotrauma.Order
_G['CrewManager'].AddPreviousOrderIcon = function(character, characterComponent, orderInfo) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param oldCharacterComponent Barotrauma.GUIComponent
_G['CrewManager'].AddOldPreviousOrderIcons = function(character, oldCharacterComponent) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
_G['CrewManager'].RemoveLastOrderIcon = function(characterComponent) end

---`Method Private Instance`
---@param iconGroup Barotrauma.GUILayoutGroup
---@return System.Boolean|boolean
_G['CrewManager'].RemoveLastPreviousOrderIcon = function(iconGroup) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
---@return Barotrauma.GUIListBox
_G['CrewManager'].GetCurrentOrderIconList = function(characterComponent) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
---@return Barotrauma.GUILayoutGroup
_G['CrewManager'].GetPreviousOrderIconGroup = function(characterComponent) end

---`Method Private Instance`
---@param orderList Barotrauma.GUIListBox
---@param userData System.Object
_G['CrewManager'].OnOrdersRearranged = function(orderList, userData) end

---`Method Private Instance`
---@overload fun(orderPrefab:Barotrauma.OrderPrefab, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity):Barotrauma.LocalizedString
---@param order Barotrauma.Order
---@return Barotrauma.LocalizedString
_G['CrewManager'].CreateOrderTooltip = function(order) end

---`Method Private Instance`
---@param order Barotrauma.Order
---@return Barotrauma.Sprite
_G['CrewManager'].GetOrderIconSprite = function(order) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['CrewManager'].DrawMiniMapOverlay = function(spriteBatch, container) end

---`Method Public Instance`
_G['CrewManager'].AddToGUIUpdateList = function() end

---`Method Public Instance`
_G['CrewManager'].SelectNextCharacter = function() end

---`Method Public Instance`
_G['CrewManager'].SelectPreviousCharacter = function() end

---`Method Private Instance`
---@param character Barotrauma.Character
_G['CrewManager'].SelectCharacter = function(character) end

---`Method Private Instance`
---@param amount System.Int32|integer
---@return System.Int32|integer
_G['CrewManager'].TryAdjustIndex = function(amount) end

---`Method Private Instance`
---@param orderPrefab Barotrauma.OrderPrefab
---@param targetHull? Barotrauma.Hull
---@return System.Boolean|boolean
_G['CrewManager'].CreateOrder = function(orderPrefab, targetHull) end

---`Method Private Instance`
_G['CrewManager'].UpdateOrderDrag = function() end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
---@param orderIdentifier Barotrauma.Identifier
---@param orderOption Barotrauma.Identifier
_G['CrewManager'].SetOrderHighlight = function(characterComponent, orderIdentifier, orderOption) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param orderIdentifier Barotrauma.Identifier
---@param orderOption Barotrauma.Identifier
_G['CrewManager'].SetOrderHighlight = function(character, orderIdentifier, orderOption) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
_G['CrewManager'].DisableOrderHighlight = function(characterComponent) end

---`Method Private Instance`
---@overload fun(characterComponent:Barotrauma.GUIComponent, sprite:Barotrauma.Sprite, tooltip:Barotrauma.LocalizedString)
---@param characterComponent Barotrauma.GUIComponent
---@param objective Barotrauma.AIObjective
_G['CrewManager'].CreateObjectiveIcon = function(characterComponent, objective) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param identifier Barotrauma.Identifier
---@param option Barotrauma.Identifier
---@param targetEntity Barotrauma.Entity
_G['CrewManager'].CreateObjectiveIcon = function(character, identifier, option, targetEntity) end

---`Method Private Instance`
---@overload fun(identifier:Barotrauma.Identifier, option:Barotrauma.Identifier, targetEntity:Barotrauma.Entity):Barotrauma.LocalizedString
---@param objective Barotrauma.AIObjective
---@return Barotrauma.LocalizedString
_G['CrewManager'].GetObjectiveIconTooltip = function(objective) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
---@return Barotrauma.GUIComponent
_G['CrewManager'].GetObjectiveIconParent = function(characterComponent) end

---`Method Private Instance`
---@param characterComponent Barotrauma.GUIComponent
_G['CrewManager'].RemoveObjectiveIcon = function(characterComponent) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['CrewManager'].CanCharacterBeHeard = function() end

---`Method Private Instance`
---@return Barotrauma.Entity
_G['CrewManager'].FindEntityContext = function() end

---`Method Private Instance`
---@param entityContext? Barotrauma.Entity
---@param forceContextual? System.Boolean|boolean
_G['CrewManager'].CreateCommandUI = function(entityContext, forceContextual) end

---`Method Public Instance`
_G['CrewManager'].ToggleCommandUI = function() end

---`Method Private Instance`
_G['CrewManager'].ScaleCommandUI = function() end

---`Method Private Instance`
---@return System.Collections.Generic.List*1Barotrauma*OrderCategory|Barotrauma.OrderCategory[]
_G['CrewManager'].GetAvailableCategories = function() end

---`Method Private Instance`
_G['CrewManager'].CreateNodeConnectors = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUIComponent
_G['CrewManager'].DrawNodeConnectors = function(spriteBatch, container) end

---`Method Private Instance`
---@param startNodePos Microsoft.Xna.Framework.Vector2
---@param startNodeMargin System.Single|number
---@param endNode Barotrauma.GUIComponent
---@param endNodeMargin System.Single|number
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param widthMultiplier? System.Single|number
_G['CrewManager'].DrawNodeConnector = function(startNodePos, startNodeMargin, endNode, endNodeMargin, spriteBatch, widthMultiplier) end

---`Method Public Instance`
_G['CrewManager'].DisableCommandUI = function() end

---`Method Private Instance`
---@param node Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['CrewManager'].NavigateForward = function(node, userData) end

---`Method Private Instance`
---@param node Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['CrewManager'].NavigateBackward = function(node, userData) end

---`Method Private Instance`
_G['CrewManager'].HideMinimap = function() end

---`Method Private Instance`
_G['CrewManager'].CreateReturnNodeHotkey = function() end

---`Method Private Instance`
---@param node Barotrauma.GUIButton
---@param resetAnchor? System.Boolean|boolean
_G['CrewManager'].SetCenterNode = function(node, resetAnchor) end

---`Method Private Instance`
---@param node Barotrauma.GUIButton
---@param offset Microsoft.Xna.Framework.Point
_G['CrewManager'].SetReturnNode = function(node, offset) end

---`Method Private Instance`
---@param userData System.Object
---@return System.Boolean|boolean
_G['CrewManager'].CreateNodes = function(userData) end

---`Method Private Instance`
_G['CrewManager'].RemoveOptionNodes = function() end

---`Method Private Instance`
_G['CrewManager'].RemoveExtraOptionNodes = function() end

---`Constructor Public Instance`
---@overload fun(isSinglePlayer:System.Boolean|boolean):Barotrauma.CrewManager
---@overload fun():Barotrauma.CrewManager
---@param element System.Xml.Linq.XElement
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'] = function(element, isSinglePlayer) end

---`Constructor Public Instance`
---@overload fun(isSinglePlayer:System.Boolean|boolean):Barotrauma.CrewManager
---@overload fun():Barotrauma.CrewManager
---@param element System.Xml.Linq.XElement
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'].__new = function(element, isSinglePlayer) end

---`Constructor Private Static`
---@overload fun(isSinglePlayer:System.Boolean|boolean):Barotrauma.CrewManager
---@overload fun():Barotrauma.CrewManager
---@param element System.Xml.Linq.XElement
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'] = function(element, isSinglePlayer) end

---`Constructor Private Static`
---@overload fun(isSinglePlayer:System.Boolean|boolean):Barotrauma.CrewManager
---@overload fun():Barotrauma.CrewManager
---@param element System.Xml.Linq.XElement
---@param isSinglePlayer System.Boolean|boolean
---@return Barotrauma.CrewManager
_G['CrewManager'].__new = function(element, isSinglePlayer) end

