--- @class Node

local Node = {}

---@type table
--- ***READONLY***
---
--- A read-only table that allows dynamic access and modification of XML attributes using standard Lua table syntax.
---
--- https://www.luart.org/doc/xml/Node-attributes.html
Node.attributes = {}


---@type boolean
--- ***READONLY***
---
--- A read-only boolean property indicating whether this node has no child nodes.
---
--- https://www.luart.org/doc/xml/Node-isleaf.html
Node.isleaf = {}


---@type Node
--- ***READ/WRITE***
---
--- Gets or sets the parent node of the current node. A nil value means the Node has no parent.
---
--- https://www.luart.org/doc/xml/Node-parent.html
Node.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Gets or sets the text content of the node, as a string
---
--- https://www.luart.org/doc/xml/Node-text.html
Node.name = {}


---@type string
--- ***READ/WRITE***
---
--- Gets or sets the text content of the node, as a string
---
--- https://www.luart.org/doc/xml/Node-text.html
Node.text = {}



--- Adds a new child node with the specified name and optional text content.
--- @param name string A string representing the name of the child node.
--- @param text? @An optional string representing the content for the child node.
--- @return Node @Returns the newly added  Node object.
---
--- https://www.luart.org/doc/xml/Node-add.html
function Node:add(name, text) end

--- Creates a deep copy of the current node, including its attributes and all descendant nodes.
--- @return Node @Returns a new  Node identical to the original.
---
--- https://www.luart.org/doc/xml/Node-clone.html
function Node:clone() end

--- Executes a path expression (XPath 1.0 and XSLT 1.0 standards) relative to this node and returns the results as a table of  Node, or nil if no match is found.
--- @param path string A string path expression to evaluate.
--- @return Node[] @Returns the first matching  Node, or nil if no match is found.
---
--- https://www.luart.org/doc/xml/Node-query.html
function Node:query(path) end

--- Detaches the current  Node from its parent node. If the node has no parent, the operation does nothing.
--- @return boolean @Returns true if the node was removed, or false if it had no parent.
---
--- https://www.luart.org/doc/xml/Node-remove.html
function Node:remove() end
