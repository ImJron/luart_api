--- @class ComboItem
local ComboItem = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the item position, a number starting from 1 and increase until the total count of items in the Combobox.
---
--- https://www.luart.org/doc/ui/ComboItem-index.html
ComboItem.index = {}


---@type Combobox
--- ***READONLY***
---
--- Get the  Combobox that owns the ComboItem.
---
--- https://www.luart.org/doc/ui/ComboItem-owner.html
ComboItem.owner = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the item caption as a string.
---
--- https://www.luart.org/doc/ui/ComboItem-text.html
ComboItem.text = {}



--- Loads a ComboItem icon, displayed to the left of the ComboItem caption.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the ComboItem.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the ComboItem icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/ComboItem-loadicon.html
function ComboItem:loadicon(path, index) end

--- Removes the ComboItem from the Combobox it belongs to.
---
--- https://www.luart.org/doc/ui/ComboItem-remove.html
function ComboItem:remove() end
