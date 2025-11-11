--- @class Checkbox
local Checkbox = {}


---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Checkbox alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Checkbox alignment :
--- - "all" : the Checkbox will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Checkbox will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Checkbox will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Checkbox will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Checkbox will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Checkbox-align.html
Checkbox.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Checkbox's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Checkbox-allowdrop.html
Checkbox.allowdrop = {}


---@type boolean
--- ***READ/WRITE***
---
--- Set or check wether the Checkbox item is selected.
---
--- https://www.luart.org/doc/ui/Checkbox-checked.html
Checkbox.checked = {}


--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Checkbox. Mouse cursors are represented by strings :
--- - "arrow" : the default Checkboxs mouse cursor.
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
--- The Checkbox.cursor property affects only the Checkbox client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Checkbox-cursor.html
Checkbox.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Checkbox ability to respond to mouse, keyboard and any other events. When set to false, disable the Checkbox (the user will not be able to interact with it), and Checkbox's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Checkbox-enabled.html
Checkbox.enabled = {}




---@type string|File
--- ***READ/WRITE***
---
--- Get the Checkbox font, a string value that represent the font name.
---
--- To set the Checkbox.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Checkbox.fontstyle and the Checkbox.fontsize properties).
---
--- https://www.luart.org/doc/ui/Checkbox-font.html
Checkbox.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Checkbox font size, a number that represent the font size in pixels.
--- - By changing the font style of the Checkbox, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Checkbox-fontsize.html
Checkbox.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Checkbox font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Checkbox-fontstyle.html
Checkbox.fontstyle = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Checkbox's height. The height starts from 0 (top side of the Checkbox) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Checkbox, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Checkbox-height.html
Checkbox.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Checkbox.
---
--- https://www.luart.org/doc/ui/Checkbox-parent.html
Checkbox.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Checkbox caption as a string.
---
--- https://www.luart.org/doc/ui/Checkbox-text.html
Checkbox.text = {}



---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Checkbox-tooltip.html
Checkbox.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Checkbox visibility on screen, a true value means that the Checkbox is shown, a false value means that the Checkbox is hidden.
--- - The Checkbox.visible property is also affected by the Checkbox:show() and Checkbox:hide() methods.
---
--- https://www.luart.org/doc/ui/Checkbox-visible.html
Checkbox.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Checkbox's width. The width starts from 0 (left side of the Checkbox) and increase to the right direction.
--- - The width property represent the width of the client area of the Checkbox, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Checkbox-width.html
Checkbox.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Checkbox horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Checkbox-x.html
Checkbox.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Checkbox vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Checkbox-y.html
Checkbox.y = {}



--- Resize the Checkbox automatically to accommodate its content.
---
--- https://www.luart.org/doc/ui/Checkbox-autosize.html
function Checkbox:autosize() end

--- Centers the Checkbox on the parent widget.
---
--- https://www.luart.org/doc/ui/Checkbox-center.html
function Checkbox:center() end

--- Hide and deactivate the Checkbox (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Checkbox-hide.html
function Checkbox:hide() end

--- Show and activate the Checkbox (events can now be fired).
---
--- https://www.luart.org/doc/ui/Checkbox-show.html
function Checkbox:show() end

--- Puts the Checkbox behind all other Checkboxs, or behind the specified Checkbox.
--- @param widget any The widget below which the current Checkbox will be.
---
--- https://www.luart.org/doc/ui/Checkbox-toback.html
function Checkbox:toback(widget) end

--- Brings the current Checkbox in front of all other Checkboxs, or in front of the specified Checkbox.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Checkbox-tofront.html
function Checkbox:tofront(widget) end

--- This event is fired when the user has clicked on the Checkbox.
---
--- https://www.luart.org/doc/ui/Checkbox-onClick.html
function Checkbox:onClick() end

--- This event is fired when the user has clicked on the Checkbox with the right mouse button.
---
--- https://www.luart.org/doc/ui/Checkbox-onContext.html
function Checkbox:onContext() end

--- This event is fired when the Checkbox object has just been created (just after the Checkbox:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Checkbox-onCreate.html
function Checkbox:onCreate() end

--- This event is fired when the user has dropped the mouse over the Checkbox.
--- @param kind string A string representing the kind of content dropped on the Checkbox.
--- @param content any The content dropped on the Checkbox, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Checkbox-onDrop.html
function Checkbox:onDrop(kind, content) end

--- This event is fired when the Checkbox is hidden by the user (when clicking on the Checkbox close button) or when calling Checkbox:hide() or setting the Checkbox.visible property to false.
---
--- https://www.luart.org/doc/ui/Checkbox-onHide.html
function Checkbox:onHide() end

--- This event is fired when the user moves the mouse pointer over the Checkbox.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Checkbox-onHover.html
function Checkbox:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Checkbox.
---
--- https://www.luart.org/doc/ui/Checkbox-onLeave.html
function Checkbox:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Checkbox.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Checkbox-onMouseDown.html
function Checkbox:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Checkbox.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Checkbox-onMouseUp.html
function Checkbox:onMouseUp(button, x, y) end

--- This event is fired when the Checkbox is shown (with a call to Checkbox:show() or setting the Checkbox.visible property to true).
---
--- https://www.luart.org/doc/ui/Checkbox-onShow.html
function Checkbox:onShow() end
