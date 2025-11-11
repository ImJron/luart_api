--- @class MenuItem
local MenuItem = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the MenuItem checked state, a boolean value.
--- When set to true, places a checked mark to the left of the Menu item text.
---
--- https://www.luart.org/doc/ui/MenuItem-checked.html
MenuItem.checked = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the MenuItem enabled state, a boolean value.
--- When set to false, the MenuItem is disabled and cannot receive events anymore.
---
--- https://www.luart.org/doc/ui/MenuItem-enabled.html
MenuItem.enabled = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the MenuItem position, a number starting from 1 and increasing until the total count of items in the Menu.
---
--- https://www.luart.org/doc/ui/MenuItem-index.html
MenuItem.index = {}


---@type Menu
--- ***READ/WRITE***
---
--- Get or set the MenuItem submenu, a  Menu object.
--- A nil value indicate that the MenuItem has no submenu.
---
--- https://www.luart.org/doc/ui/MenuItem-submenu.html
MenuItem.submenu = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the MenuItem caption as a string.
---
--- https://www.luart.org/doc/ui/MenuItem-text.html
MenuItem.text = {}


--- Loads a MenuItem icon, displayed to the left of the MenuItem caption.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the MenuItem.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the MenuItem icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/MenuItem-loadicon.html
function MenuItem:loadicon(path, index) end

--- Removes the MenuItem from the Combobox it belongs to.
---
--- https://www.luart.org/doc/ui/MenuItem-remove.html
function MenuItem:remove() end

--- This event is fired when the user has clicked on the MenuItem.
---
--- https://www.luart.org/doc/ui/MenuItem-onClick.html
function MenuItem:onClick() end
