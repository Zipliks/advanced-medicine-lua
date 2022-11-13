---@meta
---@class System.Xml.Linq.XContainer : System.Xml.Linq.XNode
---`Field NonPublic Instance`
---@field content System.Object
---`Getter Public Instance`
---@field FirstNode System.Xml.Linq.XNode
---`Getter Public Instance`
---@field LastNode System.Xml.Linq.XNode
_G['XContainer'] = {}

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XContainer'].Add = function(...) end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XContainer'].AddFirst = function(...) end

---`Method Public Instance`
---@return System.Xml.XmlWriter
_G['XContainer'].CreateWriter = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XContainer'].DescendantNodes = function() end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XContainer'].Descendants = function(name) end

---`Method Public Instance`
---@param name System.Xml.Linq.XName
---@return System.Xml.Linq.XElement
_G['XContainer'].Element = function(name) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XContainer'].Elements = function(name) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XContainer'].Nodes = function() end

---`Method Public Instance`
_G['XContainer'].RemoveNodes = function() end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XContainer'].ReplaceNodes = function(...) end

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XContainer'].AddAttribute = function(a) end

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XContainer'].AddAttributeSkipNotify = function(a) end

---`Method NonPublic Instance`
---@param content System.Object
_G['XContainer'].AddContentSkipNotify = function(content) end

---`Method NonPublic Instance`
---@param n System.Xml.Linq.XNode
_G['XContainer'].AddNode = function(n) end

---`Method NonPublic Instance`
---@param n System.Xml.Linq.XNode
_G['XContainer'].AddNodeSkipNotify = function(n) end

---`Method NonPublic Instance`
---@param s System.String|string
_G['XContainer'].AddString = function(s) end

---`Method NonPublic Instance`
---@param s System.String|string
_G['XContainer'].AddStringSkipNotify = function(s) end

---`Method NonPublic Instance`
---@param n System.Xml.Linq.XNode
_G['XContainer'].AppendNode = function(n) end

---`Method NonPublic Instance`
---@param n System.Xml.Linq.XNode
_G['XContainer'].AppendNodeSkipNotify = function(n) end

---`Method NonPublic Instance Virtual`
---@param sb System.Text.StringBuilder
_G['XContainer'].AppendText = function(sb) end

---`Method Private Instance`
---@return System.String|string
_G['XContainer'].GetTextOnly = function() end

---`Method Private Instance`
---@param n System.Xml.Linq.XNode-ref
---@return System.String|string
_G['XContainer'].CollectText = function(n) end

---`Method NonPublic Instance`
---@param e System.Xml.Linq.XContainer
---@return System.Boolean|boolean
_G['XContainer'].ContentsEqual = function(e) end

---`Method NonPublic Instance`
---@return System.Int32|integer
_G['XContainer'].ContentsHashCode = function() end

---`Method NonPublic Instance`
_G['XContainer'].ConvertTextToNode = function() end

---`Method NonPublic Instance`
---@param self System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XContainer'].GetDescendantNodes = function(self) end

---`Method NonPublic Instance`
---@param name System.Xml.Linq.XName
---@param self System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XContainer'].GetDescendants = function(name, self) end

---`Method Private Instance`
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XContainer'].GetElements = function(name) end

---`Method NonPublic Static`
---@param value System.Object
---@return System.String|string
_G['XContainer'].GetStringValue = function(value) end

---`Method NonPublic Instance`
---@overload fun(r:System.Xml.XmlReader)
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
_G['XContainer'].ReadContentFrom = function(r, o) end

---`Method NonPublic Instance`
---@overload fun(r:System.Xml.XmlReader, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XContainer'].ReadContentFromAsync = function(r, o, cancellationToken) end

---`Method NonPublic Instance`
---@param n System.Xml.Linq.XNode
_G['XContainer'].RemoveNode = function(n) end

---`Method Private Instance`
_G['XContainer'].RemoveNodesSkipNotify = function() end

---`Method NonPublic Instance Virtual`
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
_G['XContainer'].ValidateNode = function(node, previous) end

---`Method NonPublic Instance Virtual`
---@param s System.String|string
_G['XContainer'].ValidateString = function(s) end

---`Method NonPublic Instance`
---@param writer System.Xml.XmlWriter
_G['XContainer'].WriteContentTo = function(writer) end

---`Method NonPublic Instance`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XContainer'].WriteContentToAsync = function(writer, cancellationToken) end

---`Method Private Static`
---@param list System.Collections.Generic.List*1System*Object|System.Object[]
---@param content System.Object
_G['XContainer'].AddContentToList = function(list, content) end

---`Method NonPublic Static`
---@param content System.Object
---@return System.Object
_G['XContainer'].GetContentSnapshot = function(content) end

---`Constructor NonPublic Instance`
---@overload fun():System.Xml.Linq.XContainer
---@param other System.Xml.Linq.XContainer
---@return System.Xml.Linq.XContainer
_G['XContainer'] = function(other) end

---`Constructor NonPublic Instance`
---@overload fun():System.Xml.Linq.XContainer
---@param other System.Xml.Linq.XContainer
---@return System.Xml.Linq.XContainer
_G['XContainer'].__new = function(other) end

