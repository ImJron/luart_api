--- @class Radiobutton
local Radiobutton = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Radiobutton alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Radiobutton alignment :
--- - "all" : the Radiobutton will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Radiobutton will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Radiobutton will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Radiobutton will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Radiobutton will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Radiobutton-align.html
Radiobutton.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Radiobutton's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Radiobutton-allowdrop.html
Radiobutton.allowdrop = {}


---@type boolean
--- ***READ/WRITE***
---
--- Set or check wether the Radiobutton item is selected.
--- - A Radiobutton is always used in groups, grouped by their parent object.
--- - Radiobuttons are exclusive in the same group : selecting one deselects the others.
---
--- https://www.luart.org/doc/ui/Radiobutton-checked.html
Radiobutton.checked = {}


--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Radiobutton. Mouse cursors are represented by strings :
--- - "arrow" : the default Radiobuttons mouse cursor.
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
--- The Radiobutton.cursor property affects only the Radiobutton client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Radiobutton-cursor.html
Radiobutton.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Radiobutton ability to respond to mouse, keyboard and any other events. When set to false, disable the Radiobutton (the user will not be able to interact with it), and Radiobutton's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Radiobutton-enabled.html
Radiobutton.enabled = {}




---@type string|File
--- ***READ/WRITE***
---
--- Get the Radiobutton font, a string value that represent the font name.
---
--- To set the Radiobutton.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Radiobutton.fontstyle and the Radiobutton.fontsize properties).
---
--- https://www.luart.org/doc/ui/Radiobutton-font.html
Radiobutton.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Radiobutton font size, a number that represent the font size in pixels.
--- - By changing the font style of the Radiobutton, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Radiobutton-fontsize.html
Radiobutton.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Radiobutton font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Radiobutton-fontstyle.html
Radiobutton.fontstyle = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Radiobutton's height. The height starts from 0 (top side of the Radiobutton) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Radiobutton, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Radiobutton-height.html
Radiobutton.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Radiobutton.
---
--- https://www.luart.org/doc/ui/Radiobutton-parent.html
Radiobutton.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Radiobutton caption as a string.
---
--- https://www.luart.org/doc/ui/Radiobutton-text.html
Radiobutton.text = {}



---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Radiobutton-tooltip.html
Radiobutton.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Radiobutton visibility on screen, a true value means that the Radiobutton is shown, a false value means that the Radiobutton is hidden.
--- - The Radiobutton.visible property is also affected by the Radiobutton:show() and Radiobutton:hide() methods.
---
--- https://www.luart.org/doc/ui/Radiobutton-visible.html
Radiobutton.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Radiobutton's width. The width starts from 0 (left side of the Radiobutton) and increase to the right direction.
--- - The width property represent the width of the client area of the Radiobutton, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Radiobutton-width.html
Radiobutton.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Radiobutton horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Radiobutton-x.html
Radiobutton.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Radiobutton vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Radiobutton-y.html
Radiobutton.y = {}



--- Resize the Radiobutton automatically to accommodate its content.
---
--- https://www.luart.org/doc/ui/Radiobutton-autosize.html
function Radiobutton:autosize() end

-- Centers the Radiobutton on the parent widget.
---
--- https://www.luart.org/doc/ui/Radiobutton-center.html
function Radiobutton:center() end

--- Hide and deactivate the Radiobutton (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Radiobutton-hide.html
function Radiobutton:hide() end

--- Show and activate the Radiobutton (events can now be fired).
---
--- https://www.luart.org/doc/ui/Radiobutton-show.html
function Radiobutton:show() end

--- Puts the Radiobutton behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Radiobutton will be.
---
--- https://www.luart.org/doc/ui/Radiobutton-toback.html
function Radiobutton:toback(widget) end

--- Brings the current Radiobutton in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Radiobutton-tofront.html
function Radiobutton:tofront(widget) end

--- This event is fired when the user has clicked on the Radiobutton.
---
--- https://www.luart.org/doc/ui/Radiobutton-onClick.html
function Radiobutton:onClick() end

--- This event is fired when the user has clicked on the Radiobutton with the right mouse button.
---
--- https://www.luart.org/doc/ui/Radiobutton-onContext.html
function Radiobutton:onContext() end

--- This event is fired when the Radiobutton object has just been created (just after the Radiobutton:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Radiobutton-onCreate.html
function Radiobutton:onCreate() end

--- This event is fired when the user has dropped the mouse over the Radiobutton.
--- @param kind string A string representing the kind of content dropped on the Radiobutton.
--- @param content any The content dropped on the Radiobutton, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Radiobutton-onDrop.html
function Radiobutton:onDrop(kind, content) end

--- This event is fired when the Radiobutton is hidden by the user (when clicking on the Radiobutton close button) or when calling Radiobutton:hide() or setting the Radiobutton.visible property to false.
---
--- https://www.luart.org/doc/ui/Radiobutton-onHide.html
function Radiobutton:onHide() end

--- This event is fired when the user moves the mouse pointer over the Radiobutton.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Radiobutton-onHover.html
function Radiobutton:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Radiobutton.
---
--- https://www.luart.org/doc/ui/Radiobutton-onLeave.html
function Radiobutton:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Radiobutton.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Radiobutton-onMouseDown.html
function Radiobutton:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Radiobutton.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Radiobutton-onMouseUp.html
function Radiobutton:onMouseUp(button, x, y) end

--- This event is fired when the Radiobutton is shown (with a call to Radiobutton:show() or setting the Radiobutton.visible property to true).
---
--- https://www.luart.org/doc/ui/Radiobutton-onShow.html
function Radiobutton:onShow() end
