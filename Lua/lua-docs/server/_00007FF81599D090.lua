---@meta
---@class Barotrauma.Items.Components.Steering : Barotrauma.Items.Components.Powered
---`Field Public Instance`
---@field MaintainPos System.Boolean|boolean
---`Field Public Instance`
---@field LevelStartSelected System.Boolean|boolean
---`Field Public Instance`
---@field LevelEndSelected System.Boolean|boolean
---`Field Private Instance`
---@field targetVelocity Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field steeringInput Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field autoPilot System.Boolean|boolean
---`Field Private Instance`
---@field posToMaintain System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field steeringPath Barotrauma.SteeringPath
---`Field Private Instance`
---@field pathFinder Barotrauma.PathFinder
---`Field Private Instance`
---@field networkUpdateTimer System.Single|number
---`Field Private Instance`
---@field unsentChanges System.Boolean|boolean
---`Field Private Instance`
---@field autopilotRayCastTimer System.Single|number
---`Field Private Instance`
---@field autopilotRecalculatePathTimer System.Single|number
---`Field Private Instance`
---@field avoidStrength Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field neutralBallastLevel System.Single|number
---`Field Private Instance`
---@field steeringAdjustSpeed System.Single|number
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Private Instance`
---@field sonar Barotrauma.Items.Components.Sonar
---`Field Private Instance`
---@field controlledSub Barotrauma.Submarine
---`Field Private Instance`
---@field navigateTactically System.Boolean|boolean
---`Field Private Instance`
---@field showIceSpireWarning System.Boolean|boolean
---`Field Private Instance`
---@field connectedSubs System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Field Private Instance`
---@field connectedSubUpdateTimer System.Single|number
---`Field Private Instance`
---@field lastReceivedSteeringSignalTime System.Double|number
---`Field Private Instance`
---@field debugDrawObstacles System.Collections.Generic.List*1Barotrauma*Items*Components*Steering*ObstacleDebugInfo|Barotrauma.Items.Components.Steering.ObstacleDebugInfo[]
---`Field Public Instance`
---@field DockingSources System.Collections.Generic.List*1Barotrauma*Items*Components*DockingPort|Barotrauma.Items.Components.DockingPort[]
---`Field Private Instance`
---@field searchedConnectedDockingPort System.Boolean|boolean
---`Field Private Instance`
---@field dockingModeEnabled System.Boolean|boolean
---`Field Public Static`
---@field AutopilotMinDistToPathNode System.Single|number
---`Field Private Static`
---@field AutopilotRayCastInterval System.Single|number
---`Field Private Static`
---@field RecalculatePathInterval System.Single|number
---`Field Private Static`
---@field AutoPilotSteeringLerp System.Single|number
---`Field Private Static`
---@field AutoPilotMaxSpeed System.Single|number
---`Field Private Static`
---@field AIPilotMaxSpeed System.Single|number
---`Field Private Static`
---@field DefaultSteeringAdjustSpeed System.Single|number
---`Field Private Static`
---@field ConnectedSubUpdateInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UnsentChanges System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AITacticalTarget Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AIRamTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoPilot System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeutralBallastLevel System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DockingAssistThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TargetVelocity Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SteeringInput Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field SteeringPath Barotrauma.SteeringPath
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PosToMaintain System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DockingModeEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseAutoDocking System.Boolean|boolean
_G['Components']['Steering'] = {}

---`Method NonPublic Instance Virtual`
_G['Components']['Steering'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['Steering'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Steering'].ServerEventWrite = function(msg, c, extraData) end

---`Method Private Instance`
_G['Components']['Steering'].FindConnectedDockingPort = function() end

---`Method Public Instance Virtual`
_G['Components']['Steering'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Steering'].Select = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Steering'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param deltaTime System.Single|number
_G['Components']['Steering'].IncreaseSkillLevel = function(user, deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Steering'].UpdateAutoPilot = function(deltaTime) end

---`Method Private Instance`
---@param node Barotrauma.PathNode
---@param nextNode Barotrauma.PathNode
---@return System.Nullable*1System*Single|number
_G['Components']['Steering'].GetNodePenalty = function(node, nextNode) end

---`Method Private Instance`
_G['Components']['Steering'].UpdatePath = function() end

---`Method Public Instance`
_G['Components']['Steering'].SetDestinationLevelStart = function() end

---`Method Public Instance`
_G['Components']['Steering'].SetDestinationLevelEnd = function() end

---`Method Private Instance`
_G['Components']['Steering'].SetDestinationTactical = function() end

---`Method Private Instance`
_G['Components']['Steering'].SetMaintainPosition = function() end

---`Method Private Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param slowdownAmount System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['Steering'].GetSteeringVelocity = function(worldPosition, slowdownAmount) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['Steering'].AIOperate = function(deltaTime, character, objective) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Steering'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Steering
_G['Components']['Steering'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Steering
_G['Components']['Steering'].__new = function(item, element) end

