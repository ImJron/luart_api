--- @class TreeItem
local TreeItem = {}

---@type number
--- ***READONLY***
---
--- Get the count of the TreeItem subitems.
---
--- https://www.luart.org/doc/ui/TreeItem-count.html
TreeItem.count = {}


---@type number
--- ***READONLY***
---
--- Get the index of the TreeItem. The index is an integer value representing the numerical position of the TreeItem among all others in the Tree, starting from 1.
---
--- https://www.luart.org/doc/ui/TreeItem-index.html
TreeItem.index = {}


---@type TreeItem
--- ***READONLY***
---
--- Retrieves the next sibling item after the TreeItem
---
--- https://www.luart.org/doc/ui/TreeItem-next.html
TreeItem.next = {}


---@type TreeItem|Tree
--- ***READONLY***
---
--- Get the object that owns the TreeItem, either a :
--- - Tree, when the TreeItem is a root item in the Tree.
--- - TreeItem Tree, when the Treeitem is a subitem of another TreeItem.
---
--- https://www.luart.org/doc/ui/TreeItem-parent.html
TreeItem.parent = {}


---@type TreeItem
--- ***READONLY***
---
--- Retrieves the previous sibling item before the TreeItem
---
--- https://www.luart.org/doc/ui/TreeItem-previous.html
TreeItem.previous = {}


---@type TreeItem[]
--- ***READ/WRITE***
---
--- Provides access to the TreeItem subitems.
---
--- https://www.luart.org/doc/ui/TreeItem-subitems.html
TreeItem.subitems = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the item caption as a string.
---
--- https://www.luart.org/doc/ui/TreeItem-text.html
TreeItem.text = {}


--- Add one or more subitems to the TreeItem.
--- @param itemtext1 string One or more strings representing the text of the new TreeItem items.
--- These items can later be accessed using the TreeItem.items property, as TreeItemItems objects.
--- @return TreeItemItem
---
--- This function returns the last added TreeItemItem
---
--- https://www.luart.org/doc/ui/TreeItem-add.html
function TreeItem:add(itemtext1) end

--- Remove all items from the TreeItem.
---
--- https://www.luart.org/doc/ui/TreeItem-clear.html
function TreeItem:clear() end

--- Begins in-place editing of the specified TreeItem's caption.
---
--- When the user has done editing it, the parent Tree will receive a Tree:onChange() event.
---
--- https://www.luart.org/doc/ui/TreeItem-edit.html
function TreeItem:edit() end

--- Expands or collapses the subitems associated with the TreeItem.
--- @param expanding? boolean An optional boolean value indicating if the item should expand (true) or collapse (false).
---
--- If omitted, the TreeItem will toggle and collapse if it is already expanded, or expand if it is collapsed.
---
--- https://www.luart.org/doc/ui/TreeItem-expand.html
function TreeItem:expand(expanding) end

--- Loads an item icon, displayed to the left of the item's text.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the TreeItem.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the TreeItem icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/TreeItem-loadicon.html
function TreeItem:loadicon(path, index) end

--- Removes the TreeItem from the Tree it belongs to.
---
--- https://www.luart.org/doc/ui/TreeItem-remove.html
function TreeItem:remove() end

--- Show and activate the TreeItem (events can now be fired).
---
--- https://www.luart.org/doc/ui/TreeItem-show.html
function TreeItem:show() end

--- Sorts all the subitems of the TreeItem in ascending order.
--- @param recursive? boolean An optional boolean value indicating if all levels of subitems below the parent TreeItem should also be sorted (true) or only the first level (false).
---
--- If omitted, the TreeItem will sort only its first level subitems.
---
--- https://www.luart.org/doc/ui/TreeItem-sort.html
function TreeItem:sort(recursive) end
