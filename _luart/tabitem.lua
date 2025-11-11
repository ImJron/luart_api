--- @class TabItem
local TabItem = {}


---@type table
--- ***READONLY***
---
--- Get a list of the TabItem's widgets, as a table.
--- Each items in the list is a widget who's parent is the current TabItem.
---
--- https://www.luart.org/doc/ui/TabItem-childs.html
TabItem.childs = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the TabItem content ability to respond to mouse, and any other events.
---
--- https://www.luart.org/doc/ui/TabItem-enabled.html
TabItem.enabled = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the item position, a number starting from 1 and increase until the total count of items.
---
--- https://www.luart.org/doc/ui/TabItem-index.html
TabItem.index = {}


---@type Tab
--- ***READONLY***
---
--- Get the Tab that owns the TabItem.
---
--- https://www.luart.org/doc/ui/TabItem-owner.html
TabItem.owner = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the item caption as a string.
---
--- https://www.luart.org/doc/ui/TabItem-text.html
TabItem.text = {}



--- Loads a TabItem icon, displayed to the left of the TabItem caption.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the TabItem.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the TabItem icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/TabItem-loadicon.html
function TabItem:loadicon(path, index) end

--- Removes the TabItem from the Tab it belongs to.
---
--- https://www.luart.org/doc/ui/TabItem-remove.html
function TabItem:remove() end
