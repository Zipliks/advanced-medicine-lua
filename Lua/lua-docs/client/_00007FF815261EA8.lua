---@meta
---@class Barotrauma.VotingInterface : System.Object
---`Field Public Instance`
---@field VoteRunning System.Boolean|boolean
---`Field Private Instance`
---@field frame Barotrauma.GUIFrame
---`Field Private Instance`
---@field votingTextBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field votedTextBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field voteCounter Barotrauma.GUITextBlock
---`Field Private Instance`
---@field votingTimer Barotrauma.GUIProgressBar
---`Field Private Instance`
---@field yesVoteButton Barotrauma.GUIButton
---`Field Private Instance`
---@field noVoteButton Barotrauma.GUIButton
---`Field Private Instance`
---@field onVoteEnd System.Action|(fun())
---`Field Private Instance`
---@field yesVotes System.Int32|integer
---`Field Private Instance`
---@field noVotes System.Int32|integer
---`Field Private Instance`
---@field maxVotes System.Int32|integer
---`Field Private Instance`
---@field getYesVotes System.Func*1System*Int32|(fun():System.Int32|integer)
---`Field Private Instance`
---@field getNoVotes System.Func*1System*Int32|(fun():System.Int32|integer)
---`Field Private Instance`
---@field getMaxVotes System.Func*1System*Int32|(fun():System.Int32|integer)
---`Field Private Instance`
---@field votePassed System.Boolean|boolean
---`Field Private Instance`
---@field votingOnText Barotrauma.RichString
---`Field Private Instance`
---@field votingTime System.Single|number
---`Field Private Instance`
---@field timer System.Single|number
---`Field Private Instance`
---@field currentVoteType Barotrauma.Networking.VoteType
---`Field Private Instance`
---@field createdForResolution Microsoft.Xna.Framework.Point
---`Getter Private Instance`
---@field SubmarineColor Microsoft.Xna.Framework.Color
_G['VotingInterface'] = {}

---`Method Public Static`
---@param starter Barotrauma.Networking.Client
---@param info Barotrauma.SubmarineInfo
---@param type Barotrauma.Networking.VoteType
---@param transferItems System.Boolean|boolean
---@param votingTime System.Single|number
---@return Barotrauma.VotingInterface
_G['VotingInterface'].CreateSubmarineVotingInterface = function(starter, info, type, transferItems, votingTime) end

---`Method Public Static`
---@param starter Barotrauma.Networking.Client
---@param from Barotrauma.Networking.Client
---@param to Barotrauma.Networking.Client
---@param amount System.Int32|integer
---@param votingTime System.Single|number
---@return Barotrauma.VotingInterface
_G['VotingInterface'].CreateMoneyTransferVotingInterface = function(starter, from, to, amount, votingTime) end

---`Method Private Instance`
---@param starter Barotrauma.Networking.Client
---@param type Barotrauma.Networking.VoteType
_G['VotingInterface'].Initialize = function(starter, type) end

---`Method Private Instance`
_G['VotingInterface'].CreateVotingGUI = function() end

---`Method Private Instance`
---@param vote System.Int32|integer
_G['VotingInterface'].SetGUIToVotedState = function(vote) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['VotingInterface'].Update = function(deltaTime) end

---`Method Public Instance`
---@param passed System.Boolean|boolean
---@param yesVoteFinal System.Int32|integer
---@param noVoteFinal System.Int32|integer
_G['VotingInterface'].EndVote = function(passed, yesVoteFinal, noVoteFinal) end

---`Method Private Instance`
---@param starter Barotrauma.Networking.Client
---@param info Barotrauma.SubmarineInfo
---@param transferItems System.Boolean|boolean
---@param type Barotrauma.Networking.VoteType
_G['VotingInterface'].SetSubmarineVotingText = function(starter, info, transferItems, type) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@param type Barotrauma.Networking.VoteType
_G['VotingInterface'].SendSubmarineVoteEndMessage = function(info, type) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@param type Barotrauma.Networking.VoteType
---@param yesVoteCount System.Int32|integer
---@param noVoteCount System.Int32|integer
---@param votePassed System.Boolean|boolean
---@return Barotrauma.LocalizedString
_G['VotingInterface'].GetSubmarineVoteResultMessage = function(info, type, yesVoteCount, noVoteCount, votePassed) end

---`Method Private Instance`
---@param starter Barotrauma.Networking.Client
---@param from Barotrauma.Networking.Client
---@param to Barotrauma.Networking.Client
---@param amount System.Int32|integer
_G['VotingInterface'].SetMoneyTransferVotingText = function(starter, from, to, amount) end

---`Method Private Instance`
---@param from Barotrauma.Networking.Client
---@param to Barotrauma.Networking.Client
---@param amount System.Int32|integer
_G['VotingInterface'].SendMoneyTransferVoteEndMessage = function(from, to, amount) end

---`Method Public Static`
---@param from Barotrauma.Networking.Client
---@param to Barotrauma.Networking.Client
---@param transferAmount System.Int32|integer
---@param yesVoteCount System.Int32|integer
---@param noVoteCount System.Int32|integer
---@param votePassed System.Boolean|boolean
---@return Barotrauma.LocalizedString
_G['VotingInterface'].GetMoneyTransferVoteResultMessage = function(from, to, transferAmount, yesVoteCount, noVoteCount, votePassed) end

---`Method Public Instance`
_G['VotingInterface'].Remove = function() end

---`Constructor Public Instance`
---@return Barotrauma.VotingInterface
_G['VotingInterface'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.VotingInterface
_G['VotingInterface'].__new = function() end

