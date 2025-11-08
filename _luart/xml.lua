--- @class xml
local xml = {}

---@type string
--- ***READONLY***
---
--- A read-only string property containing the last error message from XML operation, or nil if no error occured.
---
--- https://www.luart.org/doc/xml/error.html
xml.error = {}


--- Parses a string containing XML content and returns the root  Node object representing the XML structure.
--- @param str string A string containing valid XML data to be parsed.
--- @return Node @Returns a  Node object if parsing succeeds, or nil if the XML is invalid.
---
--- https://www.luart.org/doc/xml/encode.html
function xml.encode(str) end

--- Loads and parses an XML file, returning the root  Node object representing the XML structure.
--- @param file File|string A  File object or a filename string representing the XML file to load.
--- @return Node @Returns a  Node object representing the root of the XML tree, or nil in case of error.
---
--- https://www.luart.org/doc/xml/load.html
function xml.load(file) end

--- Serializes a  Node object and writes it to an XML file.
--- @param file File|string A  File object or a filename string representing the destination XML file.
--- @param node Node The  Node object to be saved.
--- @return boolean @Returns true on success or false in case of error.
---
--- https://www.luart.org/doc/xml/save.html
function xml.save(file, node) end

--- Creates a new Node object instance to represent an XML element with child nodes, attributes and text content.
--- @param name string The name of the XML element , as a string
--- @param content? string Optional text content of the XML element, as a string
--- @return Node
---
--- https://www.luart.org/doc/xml/add.html
function xml.Node(name, content) end

return xml
