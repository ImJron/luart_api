--- @class Menu
local Menu = {}

---@type number
--- ***READONLY***
---
--- Get the current count of menu items.
---
--- https://www.luart.org/doc/ui/Menu-count.html
Menu.count = {}


---@type table
--- ***READ/WRITE***
---
--- Provides access to the list of Menu items.
---
--- https://www.luart.org/doc/ui/Menu-items.html
Menu.items = {}



--- Append a new item to the Menu.
--- @param itemtext string A string representing the item text to be added to the Menu. This item can later be accessed using the Menu.items property, as a  MenuItem object.
--- @return MenuItem
---
--- https://www.luart.org/doc/ui/Menu-add.html
function Menu:add(itemtext) end

--- Remove all items from the Menu.
--- - An empty Window menu will not be drawn. Adding items to an empty Window menu will draw it again.
---
--- https://www.luart.org/doc/ui/Menu-clear.html
function Menu:clear() end

--- Insert an item in the Menu, at the specified index, with an optional submenu.
--- @param index number A number representing the item position in the Menu, starting at 1
--- @param caption? string An optional string representing the item caption.
--- @return MenuItem @This function returns the inserted  MenuItem
---
--- https://www.luart.org/doc/ui/Menu-insert.html
function Menu:insert(index, caption) end

--- Remove an existing item from the Menu.
--- @param item number|MenuItem A number representing the item index, or the  MenuItem to be removed.
---
--- https://www.luart.org/doc/ui/Menu-remove.html
function Menu:remove(item) end

--- This event is fired when the user has clicked on a Menu item.
--- @param item MenuItem The MenuItem that have been clicked.
---
--- https://www.luart.org/doc/ui/Menu-onClick.html
function Menu:onClick(item) end
