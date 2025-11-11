--- @class Tree
local Tree = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Tree alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Tree alignment :
--- - "all" : the Tree will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Tree will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Tree will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Tree will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Tree will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Tree-align.html
Tree.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tree's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Tree-allowdrop.html
Tree.allowdrop = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the edit border visibility, a true value means that the border is shown, a false value means that the border is hidden.
---
--- https://www.luart.org/doc/ui/Tree-border.html
Tree.border = {}


---@type number
--- ***READONLY***
---
--- Get the current items count in the Tree.
---
--- https://www.luart.org/doc/ui/Tree-count.html
Tree.count = {}

--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Tree. Mouse cursors are represented by strings :
--- - "arrow" : the default Trees mouse cursor.
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
--- The Tree.cursor property affects only the Tree client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Tree-cursor.html
Tree.cursor = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tree ability to respond to mouse, keyboard and any other events. When set to false, disable the Tree (the user will not be able to interact with it), and Tree's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Tree-enabled.html
Tree.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the Tree font, a string value that represent the font name.
---
--- To set the Tree.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Tree.fontstyle and the Tree.fontsize properties).
---
--- https://www.luart.org/doc/ui/Tree-font.html
Tree.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tree font size, a number that represent the font size in pixels.
--- - By changing the font style of the Tree, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Tree-fontsize.html
Tree.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Tree font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Tree-fontstyle.html
Tree.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Tree's height. The height starts from 0 (top side of the Tree) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Tree, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Tree-height.html
Tree.height = {}


---@type table
--- ***READ/WRITE***
---
--- Provides access to the Tree items.
---
--- https://www.luart.org/doc/ui/Tree-items.html
Tree.items = {}



---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Tree.
---
--- https://www.luart.org/doc/ui/Tree-parent.html
Tree.parent = {}


---@type boolean
--- ***READ/WRITE***
---
--- Controls whether the Tree is editable by the user, a true value meaning that the Tree is readonly (the default).
---
--- https://www.luart.org/doc/ui/Tree-readonly.html
Tree.readonly = {}


---@type TreeItem
--- ***READ/WRITE***
---
--- Get or set the current selected  TreeItem or nil if no selection has been made.
---
--- https://www.luart.org/doc/ui/Tree-selected.html
Tree.selected = {}


---@type "text"|"icons"
--- ***READ/WRITE***
---
--- Get or set the current style, a string value, that specifies the Tree appearance :
--- - "text" : Tree will display only text items (default).
--- - "icons" : Tree will display text items with their icons, using  TreeItem:loadicon().
---
--- When setting the style property from "icons" to "text" all previously loaded icons are preserved.
---
--- https://www.luart.org/doc/ui/Tree-style.html
Tree.style = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Tree visibility on screen, a true value means that the Tree is shown, a false value means that the Tree is hidden.
--- - The Tree.visible property is also affected by the Tree:show() and Tree:hide() methods.
---
--- https://www.luart.org/doc/ui/Tree-visible.html
Tree.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Tree's width. The width starts from 0 (left side of the Tree) and increase to the right direction.
--- - The width property represent the width of the client area of the Tree, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Tree-width.html
Tree.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tree horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Tree-x.html
Tree.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Tree vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Tree-y.html
Tree.y = {}



--- Add one or more items to the Tree list.
--- @param itemtext1 string One or more strings representing the text of the new Tree items.
--- These items can later be accessed using the Tree.items property, as TreeItems objects.
--- @return TreeItem
---
--- This function returns the last added TreeItem
---
--- https://www.luart.org/doc/ui/Tree-add.html
function Tree:add(itemtext1) end

--- Centers the Tree on the parent widget.
---
--- https://www.luart.org/doc/ui/Tree-center.html
function Tree:center() end

--- Remove all items from the Tree.
---
--- https://www.luart.org/doc/ui/Tree-clear.html
function Tree:clear() end

--- Hide and deactivate the Tree (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Tree-hide.html
function Tree:hide() end

--- Remove an item from the Tree.
--- @param item string|TreeItem A string representing an item's text, or a TreeItem representing the item to be removed.
---
--- https://www.luart.org/doc/ui/Tree-remove.html
function Tree:remove(item) end

--- Show and activate the Tree (events can now be fired).
---
--- https://www.luart.org/doc/ui/Tree-show.html
function Tree:show() end

--- Sort Tree root items by ascending order.
--- @param subitems? boolean An optional boolean value that specifies to sort all levels of child items below the root items, defaulting to false.
---
--- https://www.luart.org/doc/ui/Tree-sort.html
function Tree:sort(subitems) end

--- Puts the Tree behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Tree will be.
---
--- https://www.luart.org/doc/ui/Tree-toback.html
function Tree:toback(widget) end

--- Brings the current Tree in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Tree-tofront.html
function Tree:tofront(widget) end

--- This event is fired when an item have been removed or edited by the user after a call to TreeItem:edit().
--- @param itemtext string|TreeItem If an item have been removed, this argument represent the item text as a string
--- If an item have been edited, this argument represent the edited  TreeItem.
---@param action "removed"|"edited" A string that represent the change that occured :
--- - "removed" :  TreeItem has been removed.
--- - "edited" :  TreeItem has been edited.
---
--- https://www.luart.org/doc/ui/Tree-onChange.html
function Tree:onChange(itemtext, action) end

--- This event is fired when the user has clicked on the Tree.
--- @param x number The horizontal position of the mouse in the Tree area.
---@param y number The vertical position of the mouse in the Tree area.
---
--- https://www.luart.org/doc/ui/Tree-onClick.html
function Tree:onClick(x, y) end

--- This event is fired when the user has clicked on the Tree with the right mouse button.
--- @param TreeItem TreeItem The TreeItem that was right-clicked, or nil if the right click occurred elsewhere than on an item in the Tree.
---
--- https://www.luart.org/doc/ui/Tree-onContext.html
function Tree:onContext(TreeItem) end

--- This event is fired when the Tree object has just been created (just after the Tree:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Tree-onCreate.html
function Tree:onCreate() end

--- This event is fired when a double-click occured on an item in the Tree.
---
--- https://www.luart.org/doc/ui/Tree-onDoubleClick.html
function Tree:onDoubleClick() end

--- This event is fired when the user has dropped the mouse over the Tree.
--- @param kind string A string representing the kind of content dropped on the Tree.
--- @param content any The content dropped on the Tree, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Tree-onDrop.html
function Tree:onDrop(kind, content) end

--- This event is fired when the Tree is hidden by the user (when clicking on the Tree close button) or when calling Tree:hide() or setting the Tree.visible property to false.
---
--- https://www.luart.org/doc/ui/Tree-onHide.html
function Tree:onHide() end

--- This event is fired when the user moves the mouse pointer over the Tree.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Tree-onHover.html
function Tree:onHover(x, y, buttons) end

--- This event is fired when the user presses a mouse button while beeing over the Tree.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Tree-onMouseDown.html
function Tree:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Tree.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Tree-onMouseUp.html
function Tree:onMouseUp(button, x, y) end

--- Event fired when the user has choosen an item in the Tree list.
--- @param TreeItem TreeItem
---
--- https://www.luart.org/doc/ui/Tree-onSelect.html
function Tree:onSelect(TreeItem) end

--- This event is fired when the Tree is shown (with a call to Tree:show() or setting the Tree.visible property to true).
---
--- https://www.luart.org/doc/ui/Tree-onShow.html
function Tree:onShow() end
