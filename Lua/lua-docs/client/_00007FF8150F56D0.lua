---@meta
---@class System.Xml.Linq.XElement : System.Xml.Linq.XContainer
---`Field NonPublic Instance`
---@field name System.Xml.Linq.XName
---`Field NonPublic Instance`
---@field lastAttr System.Xml.Linq.XAttribute
---`Getter Public Static`
---@field EmptySequence System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---`Getter Public Instance`
---@field FirstAttribute System.Xml.Linq.XAttribute
---`Getter Public Instance`
---@field HasAttributes System.Boolean|boolean
---`Getter Public Instance`
---@field HasElements System.Boolean|boolean
---`Getter Public Instance`
---@field IsEmpty System.Boolean|boolean
---`Getter Public Instance`
---@field LastAttribute System.Xml.Linq.XAttribute
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Name System.Xml.Linq.XName
---`Getter Public Instance Virtual`
---@field NodeType System.Xml.XmlNodeType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Value System.String|string
_G['XElement'] = {}

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XElement'].AddAttribute = function(a) end

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XElement'].AddAttributeSkipNotify = function(a) end

---`Method NonPublic Instance`
---@param a System.Xml.Linq.XAttribute
_G['XElement'].AppendAttribute = function(a) end

---`Method NonPublic Instance`
---@param a System.Xml.Linq.XAttribute
_G['XElement'].AppendAttributeSkipNotify = function(a) end

---`Method Private Instance`
---@param e System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['XElement'].AttributesEqual = function(e) end

---`Method NonPublic Instance Virtual`
---@return System.Xml.Linq.XNode
_G['XElement'].CloneNode = function() end

---`Method NonPublic Instance Virtual`
---@param node System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XElement'].DeepEquals = function(node) end

---`Method Private Instance`
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XAttribute|(fun():System.Xml.Linq.XAttribute)
_G['XElement'].GetAttributes = function(name) end

---`Method Private Instance`
---@param prefix System.String|string
---@param outOfScope System.Xml.Linq.XElement
---@return System.String|string
_G['XElement'].GetNamespaceOfPrefixInScope = function(prefix, outOfScope) end

---`Method NonPublic Instance Virtual`
---@return System.Int32|integer
_G['XElement'].GetDeepHashCode = function() end

---`Method Private Instance`
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
_G['XElement'].ReadElementFrom = function(r, o) end

---`Method Private Instance`
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@param cancellationTokentoken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XElement'].ReadElementFromAsync = function(r, o, cancellationTokentoken) end

---`Method Private Instance`
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
_G['XElement'].ReadElementFromImpl = function(r, o) end

---`Method NonPublic Instance`
---@param a System.Xml.Linq.XAttribute
_G['XElement'].RemoveAttribute = function(a) end

---`Method Private Instance`
_G['XElement'].RemoveAttributesSkipNotify = function() end

---`Method NonPublic Instance`
---@param lineNumber System.Int32|integer
---@param linePosition System.Int32|integer
_G['XElement'].SetEndElementLineInfo = function(lineNumber, linePosition) end

---`Method NonPublic Instance Virtual`
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
_G['XElement'].ValidateNode = function(node, previous) end

---`Method NonPublic Static`
---@param r System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XElement
_G['XElement'].CreateAsync = function(r, cancellationToken) end

---`Method Public Instance`
---@overload fun(fileName:System.String|string)
---@overload fun(fileName:System.String|string, options:System.Xml.Linq.SaveOptions)
---@overload fun(stream:System.IO.Stream)
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.SaveOptions)
---@overload fun(textWriter:System.IO.TextWriter)
---@overload fun(textWriter:System.IO.TextWriter, options:System.Xml.Linq.SaveOptions)
---@param writer System.Xml.XmlWriter
_G['XElement'].Save = function(writer) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XElement'].AncestorsAndSelf = function(name) end

---`Method Public Instance`
---@param name System.Xml.Linq.XName
---@return System.Xml.Linq.XAttribute
_G['XElement'].Attribute = function(name) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XAttribute|(fun():System.Xml.Linq.XAttribute)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XAttribute|(fun():System.Xml.Linq.XAttribute)
_G['XElement'].Attributes = function(name) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XNode|(fun():System.Xml.Linq.XNode)
_G['XElement'].DescendantNodesAndSelf = function() end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
---@param name System.Xml.Linq.XName
---@return System.Collections.Generic.IEnumerable*1System*Xml*Linq*XElement|(fun():System.Xml.Linq.XElement)
_G['XElement'].DescendantsAndSelf = function(name) end

---`Method Public Instance`
---@return System.Xml.Linq.XNamespace
_G['XElement'].GetDefaultNamespace = function() end

---`Method Public Instance`
---@param prefix System.String|string
---@return System.Xml.Linq.XNamespace
_G['XElement'].GetNamespaceOfPrefix = function(prefix) end

---`Method Public Instance`
---@param ns System.Xml.Linq.XNamespace
---@return System.String|string
_G['XElement'].GetPrefixOfNamespace = function(ns) end

---`Method Public Static`
---@overload fun(uri:System.String|string):System.Xml.Linq.XElement
---@overload fun(uri:System.String|string, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XElement
---@overload fun(stream:System.IO.Stream):System.Xml.Linq.XElement
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XElement
---@overload fun(textReader:System.IO.TextReader):System.Xml.Linq.XElement
---@overload fun(textReader:System.IO.TextReader, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XElement
---@overload fun(reader:System.Xml.XmlReader):System.Xml.Linq.XElement
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'].Load = function(reader, options) end

---`Method Public Static`
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.LoadOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task*1System*Xml*Linq*XElement
---@overload fun(textReader:System.IO.TextReader, options:System.Xml.Linq.LoadOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task*1System*Xml*Linq*XElement
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XElement
_G['XElement'].LoadAsync = function(reader, options, cancellationToken) end

---`Method Private Static`
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XElement
_G['XElement'].LoadAsyncInternal = function(reader, options, cancellationToken) end

---`Method Public Static`
---@overload fun(text:System.String|string):System.Xml.Linq.XElement
---@param text System.String|string
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'].Parse = function(text, options) end

---`Method Public Instance`
_G['XElement'].RemoveAll = function() end

---`Method Public Instance`
_G['XElement'].RemoveAttributes = function() end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XElement'].ReplaceAll = function(...) end

---`Method Public Instance`
---@overload fun(content:System.Object)
---@param ... System.Object
_G['XElement'].ReplaceAttributes = function(...) end

---`Method Public Instance`
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.SaveOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(textWriter:System.IO.TextWriter, options:System.Xml.Linq.SaveOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XElement'].SaveAsync = function(writer, cancellationToken) end

---`Method Private Instance`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XElement'].SaveAsyncInternal = function(writer, cancellationToken) end

---`Method Public Instance`
---@param name System.Xml.Linq.XName
---@param value System.Object
_G['XElement'].SetAttributeValue = function(name, value) end

---`Method Public Instance`
---@param name System.Xml.Linq.XName
---@param value System.Object
_G['XElement'].SetElementValue = function(name, value) end

---`Method Public Instance`
---@param value System.Object
_G['XElement'].SetValue = function(value) end

---`Method Public Instance Virtual`
---@param writer System.Xml.XmlWriter
_G['XElement'].WriteTo = function(writer) end

---`Method Public Instance Virtual`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XElement'].WriteToAsync = function(writer, cancellationToken) end

---`Constructor Public Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'] = function(r, o) end

---`Constructor Public Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'].__new = function(r, o) end

---`Constructor NonPublic Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'] = function(r, o) end

---`Constructor NonPublic Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'].__new = function(r, o) end

---`Constructor Private Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'] = function(r, o) end

---`Constructor Private Instance`
---@overload fun(name:System.Xml.Linq.XName):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, content:System.Object):System.Xml.Linq.XElement
---@overload fun(name:System.Xml.Linq.XName, ...:System.Object):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XElement):System.Xml.Linq.XElement
---@overload fun(other:System.Xml.Linq.XStreamingElement):System.Xml.Linq.XElement
---@overload fun():System.Xml.Linq.XElement
---@overload fun(r:System.Xml.XmlReader):System.Xml.Linq.XElement
---@overload fun(s:System.Xml.Linq.XElement.AsyncConstructionSentry):System.Xml.Linq.XElement
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XElement
_G['XElement'].__new = function(r, o) end

