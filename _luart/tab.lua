--- @class Tab
local Tab = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Tab alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Tab alignment :
--- - "all" : the Tab will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Tab will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Tab will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Tab will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Tab will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Tab-align.html
Tab.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tab's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Tab-allowdrop.html
Tab.allowdrop = {}



---@type number
--- ***READONLY***
---
--- Get the current items count in the Tab.
---
--- https://www.luart.org/doc/ui/Tab-count.html
Tab.count = {}

--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Tab. Mouse cursors are represented by strings :
--- - "arrow" : the default Tabs mouse cursor.
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
--- The Tab.cursor property affects only the Tab client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Tab-cursor.html
Tab.cursor = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tab ability to respond to mouse, keyboard and any other events. When set to false, disable the Tab (the user will not be able to interact with it), and Tab's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Tab-enabled.html
Tab.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the Tab font, a string value that represent the font name.
---
--- To set the Tab.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Tab.fontstyle and the Tab.fontsize properties).
---
--- https://www.luart.org/doc/ui/Tab-font.html
Tab.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tab font size, a number that represent the font size in pixels.
--- - By changing the font style of the Tab, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Tab-fontsize.html
Tab.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Tab font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Tab-fontstyle.html
Tab.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Tab's height. The height starts from 0 (top side of the Tab) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Tab, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Tab-height.html
Tab.height = {}


---@type table
--- ***READ/WRITE***
---
--- Provides access to the Tab items.
---
--- https://www.luart.org/doc/ui/Tab-items.html
Tab.items = {}



---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Tab.
---
--- https://www.luart.org/doc/ui/Tab-parent.html
Tab.parent = {}


---@type TabItem
--- ***READ/WRITE***
---
--- Get or set the current selected  TabItem or nil if no selection has been made.
---
--- https://www.luart.org/doc/ui/Tab-selected.html
Tab.selected = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tab visibility on screen, a true value means that the Tab is shown, a false value means that the Tab is hidden.
--- - The Tab.visible property is also affected by the Tab:show() and Tab:hide() methods.
---
--- https://www.luart.org/doc/ui/Tab-visible.html
Tab.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Tab's width. The width starts from 0 (left side of the Tab) and increase to the right direction.
--- - The width property represent the width of the client area of the Tab, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Tab-width.html
Tab.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tab horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Tab-x.html
Tab.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tab vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Tab-y.html
Tab.y = {}


--- Add one or more items to the Tab list.
--- @param itemtext1 string One or more strings representing the text of the new Tab items.
--- These items can later be accessed using the Tab.items property, as TabItems objects.
--- @return TabItem
---
--- This function returns the last added TabItem
---
--- https://www.luart.org/doc/ui/Tab-add.html
function Tab:add(itemtext1) end

--- Centers the Tab on the parent widget.
---
--- https://www.luart.org/doc/ui/Tab-center.html
function Tab:center() end

--- Remove all items from the Tab.
---
--- https://www.luart.org/doc/ui/Tab-clear.html
function Tab:clear() end

--- Hide and deactivate the Tab (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Tab-hide.html
function Tab:hide() end

--- Remove an item from the Tab.
--- @param item number|TabItem A number representing an item index, or a TabItem representing the item to be removed.
---
--- https://www.luart.org/doc/ui/Tab-remove.html
function Tab:remove(item) end

--- Show and activate the Tab (events can now be fired).
---
--- https://www.luart.org/doc/ui/Tab-show.html
function Tab:show() end

--- Puts the Tab behind all other Tabs, or behind the specified Tab.
--- @param widget any The widget below which the current Tab will be.
---
--- https://www.luart.org/doc/ui/Tab-toback.html
function Tab:toback(widget) end

--- Brings the current Tab in front of all other Tabs, or in front of the specified Tab.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Tab-tofront.html
function Tab:tofront(widget) end

--- This event is fired when the user has clicked on the Tab.
--- @param x number The horizontal position of the mouse in the Tab area.
---@param y number The vertical position of the mouse in the Tab area.
---
--- https://www.luart.org/doc/ui/Tab-onClick.html
function Tab:onClick(x, y) end

--- This event is fired when a right-click occured on the specified TabItem or on the current Tab page
--- @param TabItem TabItem
---
--- https://www.luart.org/doc/ui/Tab-onContext.html
function Tab:onContext(TabItem) end

--- This event is fired when the Tab object has just been created (just after the Tab:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Tab-onCreate.html
function Tab:onCreate() end

--- This event is fired when the user has dropped the mouse over the Tab.
--- @param kind string A string representing the kind of content dropped on the Tab.
--- @param content any The content dropped on the Tab, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Tab-onDrop.html
function Tab:onDrop(kind, content) end

--- This event is fired when the Tab is hidden by the user (when clicking on the Tab close button) or when calling Tab:hide() or setting the Tab.visible property to false.
---
--- https://www.luart.org/doc/ui/Tab-onHide.html
function Tab:onHide() end

--- This event is fired when the Tab is shown (with a call to Tab:show() or setting the Tab.visible property to true).
---
--- https://www.luart.org/doc/ui/Tab-onShow.html
function Tab:onShow() end
