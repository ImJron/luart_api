--- @class Combobox
local Combobox = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Combobox alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Combobox alignment :
--- - "all" : the Combobox will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Combobox will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Combobox will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Combobox will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Combobox will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Combobox-align.html
Combobox.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Combobox's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Combobox-allowdrop.html
Combobox.allowdrop = {}


---@type number
--- ***READONLY***
---
--- Get the current items count in the Combobox.
---
--- https://www.luart.org/doc/ui/Combobox-count.html
Combobox.count = {}


--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Combobox. Mouse cursors are represented by strings :
--- - "arrow" : the default Comboboxs mouse cursor.
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
--- The Combobox.cursor property affects only the Combobox client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Combobox-cursor.html
Combobox.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Combobox ability to respond to mouse, keyboard and any other events. When set to false, disable the Combobox (the user will not be able to interact with it), and Combobox's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Combobox-enabled.html
Combobox.enabled = {}




---@type string|File
--- ***READ/WRITE***
---
--- Get the Combobox font, a string value that represent the font name.
---
--- To set the Combobox.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Combobox.fontstyle and the Combobox.fontsize properties).
---
--- https://www.luart.org/doc/ui/Combobox-font.html
Combobox.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Combobox font size, a number that represent the font size in pixels.
--- - By changing the font style of the Combobox, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Combobox-fontsize.html
Combobox.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Combobox font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Combobox-fontstyle.html
Combobox.fontstyle = {}




---@type number
--- ***READ/WRITE***
---
--- Get or set the Combobox's height. The height starts from 0 (top side of the Combobox) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Combobox, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Combobox-height.html
Combobox.height = {}



---@type table
--- ***READ/WRITE***
---
--- Provides access to the list of the Combobox items.
---
--- https://www.luart.org/doc/ui/Combobox-items.html
Combobox.items = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Combobox.
---
--- https://www.luart.org/doc/ui/Combobox-parent.html
Combobox.parent = {}


---@type ComboItem
--- ***READ/WRITE***
---
--- Get or set the current selected  ComboItem or nil if no selection has been made.
---
--- https://www.luart.org/doc/ui/Combobox-selected.html
Combobox.selected = {}


---@type "text"|"icons"
--- ***READ/WRITE***
---
--- Get or set the current style, a string value, that specifies the Combobox appearance :
--- - "text" : Combobox will display only text items (default).
--- - "icons" : Combobox will display text items with their icons, using  ComboItem:loadicon().
---
--- When setting the style property from "icons" to "text" all previously loaded icons are preserved.
---
--- https://www.luart.org/doc/ui/Combobox-style.html
Combobox.style = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Combobox caption as a string.
---
--- https://www.luart.org/doc/ui/Combobox-text.html
Combobox.text = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Combobox visibility on screen, a true value means that the Combobox is shown, a false value means that the Combobox is hidden.
--- - The Combobox.visible property is also affected by the Combobox:show() and Combobox:hide() methods.
---
--- https://www.luart.org/doc/ui/Combobox-visible.html
Combobox.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Combobox's width. The width starts from 0 (left side of the Combobox) and increase to the right direction.
--- - The width property represent the width of the client area of the Combobox, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Combobox-width.html
Combobox.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Combobox horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Combobox-x.html
Combobox.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Combobox vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Combobox-y.html
Combobox.y = {}


--- Add one or more items to the Combobox list.
--- @param itemtext1 string One or more strings representing the text of the new Combobox items.
--- These items can later be accessed using the Combobox.items property, as ComboItems objects.
--- @return ComboItem
---
--- This function returns the last added ComboItem
---
--- https://www.luart.org/doc/ui/Combobox-add.html
function Combobox:add(itemtext1) end

--- Centers the Combobox on the parent widget.
---
--- https://www.luart.org/doc/ui/Combobox-center.html
function Combobox:center() end

--- Remove all items from the Combobox.
---
--- https://www.luart.org/doc/ui/Combobox-clear.html
function Combobox:clear() end

--- Hide and deactivate the Combobox (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Combobox-hide.html
function Combobox:hide() end

--- Remove an item from the Combobox.
--- @param item number|ComboItem A number representing an item index, or a ComboItem representing the item to be removed.
---
--- https://www.luart.org/doc/ui/Combobox-remove.html
function Combobox:remove(item) end

--- Show and activate the Combobox (events can now be fired).
---
--- https://www.luart.org/doc/ui/Combobox-show.html
function Combobox:show() end

--- Puts the Combobox behind all other Comboboxs, or behind the specified Combobox.
--- @param widget any The widget below which the current Combobox will be.
---
--- https://www.luart.org/doc/ui/Combobox-toback.html
function Combobox:toback(widget) end

--- Brings the current Combobox in front of all other Comboboxs, or in front of the specified Combobox.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Combobox-tofront.html
function Combobox:tofront(widget) end

--- This event is fired when the user has modified the Combobox text.
---
--- https://www.luart.org/doc/ui/Combobox-onChange.html
function Combobox:onChange() end

--- This event is fired when the user has clicked on the Combobox.
---
--- https://www.luart.org/doc/ui/Combobox-onClick.html
function Combobox:onClick() end

--- This event is fired when the Combobox object has just been created (just after the Combobox:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Combobox-onCreate.html
function Combobox:onCreate() end

--- This event is fired when the user has dropped the mouse over the Combobox.
--- @param kind string A string representing the kind of content dropped on the Combobox.
--- @param content any The content dropped on the Combobox, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Combobox-onDrop.html
function Combobox:onDrop(kind, content) end

--- This event is fired when the Combobox is hidden by the user (when clicking on the Combobox close button) or when calling Combobox:hide() or setting the Combobox.visible property to false.
---
--- https://www.luart.org/doc/ui/Combobox-onHide.html
function Combobox:onHide() end

--- Event fired when the user has choosen an item in the Combobox list.
--- @param ComboItem ComboItem
---
--- https://www.luart.org/doc/ui/Combobox-onSelect.html
function Combobox:onSelect(ComboItem) end

--- This event is fired when the Combobox is shown (with a call to Combobox:show() or setting the Combobox.visible property to true).
---
--- https://www.luart.org/doc/ui/Combobox-onShow.html
function Combobox:onShow() end
