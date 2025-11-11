--- @class Label
local Label = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Label alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Label alignment :
--- - "all" : the Label will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Label will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Label will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Label will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Label will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Label-align.html
Label.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Label's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Label-allowdrop.html
Label.allowdrop = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the global Label background color.
--- - The color is represented by a number, an RGB value (one byte per primary color)
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Label-bgcolor.html
Label.bgcolor = {}



--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Label. Mouse cursors are represented by strings :
--- - "arrow" : the default Labels mouse cursor.
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
--- The Label.cursor property affects only the Label client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Label-cursor.html
Label.cursor = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Label ability to respond to mouse, keyboard and any other events. When set to false, disable the Label (the user will not be able to interact with it), and Label's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Label-enabled.html
Label.enabled = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the current Label text color, that apply to all text content.
--- - The color is represented by a number, an RGB value (one byte per primary color).
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Label-fgcolor.html
Label.fgcolor = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the Label font, a string value that represent the font name.
---
--- To set the Label.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Label.fontstyle and the Label.fontsize properties).
---
--- https://www.luart.org/doc/ui/Label-font.html
Label.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Label font size, a number that represent the font size in pixels.
--- - By changing the font style of the Label, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Label-fontsize.html
Label.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Label font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Label-fontstyle.html
Label.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Label's height. The height starts from 0 (top side of the Label) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Label, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Label-height.html
Label.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Label.
---
--- https://www.luart.org/doc/ui/Label-parent.html
Label.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Label text content from a string.
--- - This property does not take into account Rich Text formatting (use Label.richtext property instead).
---
--- https://www.luart.org/doc/ui/Label-text.html
Label.text = {}


--- @type ui_text_align
--- ***READ/WRITE***
---
--- Get or set the Label text alignment, a string value that represent how the text will be displayed.
--- - "left" : the text is aligned to the left edge of the Label.
--- - "right" : the text is aligned to the right edge of the Label.
--- - "center" : the text is aligned in the center of the Label area (the default).
---
--- https://www.luart.org/doc/ui/Label-textalign.html
Label.textalign = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Label-tooltip.html
Label.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Label visibility on screen, a true value means that the Label is shown, a false value means that the Label is hidden.
--- - The Label.visible property is also affected by the Label:show() and Label:hide() methods.
---
--- https://www.luart.org/doc/ui/Label-visible.html
Label.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Label's width. The width starts from 0 (left side of the Label) and increase to the right direction.
--- - The width property represent the width of the client area of the Label, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Label-width.html
Label.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Label horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Label-x.html
Label.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Label vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Label-y.html
Label.y = {}

--- Resize the Label automatically to accommodate its content.
---
--- https://www.luart.org/doc/ui/Label-autosize.html
function Label:autosize() end

--- Centers the Label on the parent widget.
---
--- https://www.luart.org/doc/ui/Label-center.html
function Label:center() end

--- Hide and deactivate the Label (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Label-hide.html
function Label:hide() end

--- Show and activate the Label (events can now be fired).
---
--- https://www.luart.org/doc/ui/Label-show.html
function Label:show() end

--- Puts the Label behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Label will be.
---
--- https://www.luart.org/doc/ui/Label-toback.html
function Label:toback(widget) end

--- Brings the current Label in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Label-tofront.html
function Label:tofront(widget) end

--- This event is fired when items have been modified in the List.
---
--- https://www.luart.org/doc/ui/List-onChange.html
function List:onChange() end

--- This event is fired when the user has clicked on the Label.
---
--- https://www.luart.org/doc/ui/Label-onClick.html
function Label:onClick() end

--- This event is fired when the user has clicked on the Label with the right mouse button.
--- @param ListItem ListItem
---
--- https://www.luart.org/doc/ui/Label-onContext.html
function Label:onContext(ListItem) end

--- This event is fired when the Label object has just been created (just after the Label:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Label-onCreate.html
function Label:onCreate() end

--- This event is fired when the user has doubleclicked on the Label.
--- @param ListItem ListItem
---
--- https://www.luart.org/doc/ui/Label-onDoubleClick.html
function Label:onDoubleClick(ListItem) end

--- This event is fired when the user has dropped the mouse over the Label.
--- @param kind string A string representing the kind of content dropped on the Label.
--- @param content any The content dropped on the Label, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Label-onDrop.html
function Label:onDrop(kind, content) end

--- This event is fired when the Label is hidden by the user (when clicking on the Label close button) or when calling Label:hide() or setting the Label.visible property to false.
---
--- https://www.luart.org/doc/ui/Label-onHide.html
function Label:onHide() end

--- This event is fired when the user moves the mouse pointer over the Label.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Label-onHover.html
function Label:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Label.
---
--- https://www.luart.org/doc/ui/Label-onLeave.html
function Label:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Label.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Label-onMouseDown.html
function Label:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Label.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Label-onMouseUp.html
function Label:onMouseUp(button, x, y) end

--- Event fired when the user has choosen an item in the List.
--- @param ListItem ListItem
---
--- https://www.luart.org/doc/ui/List-onSelect.html
function Label:onSelect(ListItem) end

--- This event is fired when the Label is shown (with a call to Label:show() or setting the Label.visible property to true).
---
--- https://www.luart.org/doc/ui/Label-onShow.html
function Label:onShow() end
