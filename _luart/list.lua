--- @class List
local List = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the List alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the List alignment :
--- - "all" : the List will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the List will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the List will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the List will be aligned along the right border of the parent, preserving its width.
--- - "left" : the List will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/List-align.html
List.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the List's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/List-allowdrop.html
List.allowdrop = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the edit border visibility, a true value means that the border is shown, a false value means that the border is hidden.
---
--- https://www.luart.org/doc/ui/List-border.html
List.border = {}


---@type number
--- ***READONLY***
---
--- Get the current items count in the List.
---
--- https://www.luart.org/doc/ui/List-count.html
List.count = {}

--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the List. Mouse cursors are represented by strings :
--- - "arrow" : the default Lists mouse cursor.
--- - "cross" : a crosshair cursor.
--- - "working" : the standard arrow with a small hourglass.
--- - "hand" : a hand cursor.
--- - "help" : the standard arrow with a small question mark.
--- - "ibeam" : the default I-Beam text cursor.
--- - "forbidden" : a slashed circle cursor.
--- - "cardinal" : a four-pointed arrow pointing up, down, right, and left.
--- - "horizontal" : a double-pointed arrow pointing right and left.
--- - "vertical" : a double-pointed arrow pointing up and down.
--- - "leftdiagonal" : a double-pointed arrow pointing topright down to the left.
--- - "rightdiagonal" :a double-pointed arrow pointing topleft down to the right.
--- - "up" : an arrow pointing up.
--- - "wait" : a hourglass cursor.
--- - "none" or nil : no cursor is displayed.
---
--- The List.cursor property affects only the List client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/List-cursor.html
List.cursor = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the List ability to respond to mouse, keyboard and any other events. When set to false, disable the List (the user will not be able to interact with it), and List's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/List-enabled.html
List.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the List font, a string value that represent the font name.
---
--- To set the List.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the List.fontstyle and the List.fontsize properties).
---
--- https://www.luart.org/doc/ui/List-font.html
List.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the List font size, a number that represent the font size in pixels.
--- - By changing the font style of the List, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/List-fontsize.html
List.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the List font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/List-fontstyle.html
List.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the List's height. The height starts from 0 (top side of the List) and increase to the bottom direction.
--- - The height property represent the height of the client area of the List, excluding the title bar.
---
--- https://www.luart.org/doc/ui/List-height.html
List.height = {}


---@type table
--- ***READ/WRITE***
---
--- Provides access to the List items.
---
--- https://www.luart.org/doc/ui/List-items.html
List.items = {}



---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the List.
---
--- https://www.luart.org/doc/ui/List-parent.html
List.parent = {}


---@type ListItem
--- ***READ/WRITE***
---
--- Get or set the current selected  ListItem or nil if no selection has been made.
---
--- https://www.luart.org/doc/ui/List-selected.html
List.selected = {}


---@type "text"|"icons"
--- ***READ/WRITE***
---
--- Get or set the current style, a string value, that specifies the List appearance :
--- - "text" : List will display only text items (default).
--- - "icons" : List will display text items with their icons, using  ListItem:loadicon().
---
--- When setting the style property from "icons" to "text" all previously loaded icons are preserved.
---
--- https://www.luart.org/doc/ui/List-style.html
List.style = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the List visibility on screen, a true value means that the List is shown, a false value means that the List is hidden.
--- - The List.visible property is also affected by the List:show() and List:hide() methods.
---
--- https://www.luart.org/doc/ui/List-visible.html
List.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the List's width. The width starts from 0 (left side of the List) and increase to the right direction.
--- - The width property represent the width of the client area of the List, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/List-width.html
List.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the List horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/List-x.html
List.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the List vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/List-y.html
List.y = {}

--- Add one or more items to the List list.
--- @param itemtext1 string One or more strings representing the text of the new List items.
--- These items can later be accessed using the List.items property, as ListItems objects.
--- @return ListItem
---
--- This function returns the last added ListItem
---
--- https://www.luart.org/doc/ui/List-add.html
function List:add(itemtext1) end

--- Centers the List on the parent widget.
---
--- https://www.luart.org/doc/ui/List-center.html
function List:center() end

--- Remove all items from the List.
---
--- https://www.luart.org/doc/ui/List-clear.html
function List:clear() end

--- Hide and deactivate the List (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/List-hide.html
function List:hide() end

--- Remove an item from the List.
--- @param item number|ListItem A number representing an item index, or a ListItem representing the item to be removed.
---
--- https://www.luart.org/doc/ui/List-remove.html
function List:remove(item) end

--- Show and activate the List (events can now be fired).
---
--- https://www.luart.org/doc/ui/List-show.html
function List:show() end

--- Sort the List items.
--- @param direction "none"|"ascend"|"descend" A string that specifies the sort direction :
--- - "none" : No sorting.
--- - "ascend" : the List will be sorted in alphabetic order
--- - "descend" : the List will be sorted in inverse alphabetic order.
---
--- https://www.luart.org/doc/ui/List-sort.html
function List:sort(direction) end

--- Puts the List behind all other Lists, or behind the specified List.
--- @param widget any The widget below which the current List will be.
---
--- https://www.luart.org/doc/ui/List-toback.html
function List:toback(widget) end

--- Brings the current List in front of all other Lists, or in front of the specified List.
--- @param widget any
---
--- https://www.luart.org/doc/ui/List-tofront.html
function List:tofront(widget) end

--- This event is fired when the user has modified the List text.
---
--- https://www.luart.org/doc/ui/List-onChange.html
function List:onChange() end

--- This event is fired when the user has clicked on the List.
---
--- https://www.luart.org/doc/ui/List-onClick.html
function List:onClick() end

--- This event is fired when the user has clicked on the List with the right mouse button.
---
--- https://www.luart.org/doc/ui/List-onContext.html
function List:onContext() end

--- This event is fired when the List object has just been created (just after the List:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/List-onCreate.html
function List:onCreate() end

--- This event is fired when the user has dropped the mouse over the List.
--- @param kind string A string representing the kind of content dropped on the List.
--- @param content any The content dropped on the List, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/List-onDrop.html
function List:onDrop(kind, content) end

--- This event is fired when the List is hidden by the user (when clicking on the List close button) or when calling List:hide() or setting the List.visible property to false.
---
--- https://www.luart.org/doc/ui/List-onHide.html
function List:onHide() end

--- Event fired when the user has choosen an item in the List list.
--- @param ListItem ListItem
---
--- https://www.luart.org/doc/ui/List-onSelect.html
function List:onSelect(ListItem) end

--- This event is fired when the List is shown (with a call to List:show() or setting the List.visible property to true).
---
--- https://www.luart.org/doc/ui/List-onShow.html
function List:onShow() end
