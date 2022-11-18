---@meta
---@class System.Xml.Linq.XNode : System.Xml.Linq.XObject
---`Field NonPublic Instance`
---@field next System.Xml.Linq.XNode
---`Field Private Static`
---@field s_documentOrderComparer System.Xml.Linq.XNodeDocumentOrderComparer
---`Field Private Static`
---@field s_equalityComparer System.Xml.Linq.XNodeEqualityComparer
---`Getter Public Instance`
---@field NextNode System.Xml.Linq.XNode
---`Getter Public Instance`
---@field PreviousNode System.Xml.Linq.XNode
---`Getter Public Static`
---@field DocumentOrderComparer System.Xml.Linq.XNodeDocumentOrderComparer
---`Getter Public Static`
---@field EqualityComparer System.Xml.Linq.XNodeEqualityComparer
_G['XNode'] = {}

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XNode'].AddAfterSelf = function(...) end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XNode'].AddBeforeSelf = function(...) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].Ancestors = function(name) end

---`Method Public Static`
---@param n1 System.Xml.Linq.XNode
---@param n2 System.Xml.Linq.XNode
---@return System.Int32|integer
_G['XNode'].CompareDocumentOrder = function(n1, n2) end

---`Method Public Instance`
---@overload fun():System.Xml.XmlReader
---@param readerOptions System.Xml.Linq.ReaderOptions
---@return System.Xml.XmlReader
_G['XNode'].CreateReader = function(readerOptions) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XNode'].NodesAfterSelf = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XNode'].NodesBeforeSelf = function() end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].ElementsAfterSelf = function(name) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].ElementsBeforeSelf = function(name) end

---`Method Public Instance`
---@param node System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XNode'].IsAfter = function(node) end

---`Method Public Instance`
---@param node System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XNode'].IsBefore = function(node) end

---`Method Public Static`
---@param reader System.Xml.XmlReader
---@return System.Xml.Linq.XNode
_G['XNode'].ReadFrom = function(reader) end

---`Method Public Static`
---@param reader System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XNode
_G['XNode'].ReadFromAsync = function(reader, cancellationToken) end

---`Method Private Static`
---@param reader System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XNode
_G['XNode'].ReadFromAsyncInternal = function(reader, cancellationToken) end

---`Method Public Instance`
_G['XNode'].Remove = function() end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XNode'].ReplaceWith = function(...) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['XNode'].ToString = function() end

---`Method Public Instance`
---@param options System.Xml.Linq.SaveOptions
---@return System.String|string
_G['XNode'].ToString = function(options) end

---`Method Public Static`
---@param n1 System.Xml.Linq.XNode
---@param n2 System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XNode'].DeepEquals = function(n1, n2) end

---`Method NonPublic Instance Abstract Virtual`
---@param node System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XNode'].DeepEquals = function(node) end

---`Method Public Instance Abstract Virtual`
---@param writer System.Xml.XmlWriter
_G['XNode'].WriteTo = function(writer) end

---`Method Public Instance Abstract Virtual`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XNode'].WriteToAsync = function(writer, cancellationToken) end

---`Method NonPublic Instance Virtual`
---@param sb System.Text.StringBuilder
_G['XNode'].AppendText = function(sb) end

---`Method NonPublic Instance Abstract Virtual`
---@return System.Xml.Linq.XNode
_G['XNode'].CloneNode = function() end

---`Method NonPublic Instance`
---@param name System.Xml.Linq.XName
---@param self System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].GetAncestors = function(name, self) end

---`Method Private Instance`
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].GetElementsAfterSelf = function(name) end

---`Method Private Instance`
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XNode'].GetElementsBeforeSelf = function(name) end

---`Method NonPublic Instance Abstract Virtual`
---@return System.Int32|integer
_G['XNode'].GetDeepHashCode = function() end

---`Method NonPublic Static`
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.XmlReaderSettings
_G['XNode'].GetXmlReaderSettings = function(o) end

---`Method NonPublic Static`
---@param o System.Xml.Linq.SaveOptions
---@return System.Xml.XmlWriterSettings
_G['XNode'].GetXmlWriterSettings = function(o) end

---`Method Private Instance`
---@param o System.Xml.Linq.SaveOptions
---@return System.String|string
_G['XNode'].GetXmlString = function(o) end

---`Constructor NonPublic Instance`
---@return System.Xml.Linq.XNode
_G['XNode'] = function() end

---`Constructor NonPublic Instance`
---@return System.Xml.Linq.XNode
_G['XNode'].__new = function() end

