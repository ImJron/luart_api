--- @class Progressbar
local Progressbar = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Progressbar alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Progressbar alignment :
--- - "all" : the Progressbar will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Progressbar will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Progressbar will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Progressbar will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Progressbar will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Progressbar-align.html
Progressbar.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Progressbar's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Progressbar-allowdrop.html
Progressbar.allowdrop = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the global Progressbar background color.
--- - The color is represented by a number, an RGB value (one byte per primary color)
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Progressbar-bgcolor.html
Progressbar.bgcolor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window ability to respond to mouse, keyboard and any other events. When set to false, disable the Progressbar (the user will not be able to interact with it), and window's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Progressbar-enabled.html
Progressbar.enabled = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the current Progressbar text color, that apply to all text content.
--- - The color is represented by a number, an RGB value (one byte per primary color).
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Progressbar-fgcolor.html
Progressbar.fgcolor = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the Progressbar's height. The height starts from 0 (top side of the Progressbar) and increase to the bottom direction.
--- - The height property represent the height of the client area of the window, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Progressbar-height.html
Progressbar.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget if it exists, or nil otherwise.
---
--- https://www.luart.org/doc/ui/Progressbar-parent.html
Progressbar.parent = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Progressbar current progression position. The position start from 0 and increase to the maximal position (defaulting to 100).
---
--- https://www.luart.org/doc/ui/Progressbar-position.html
Progressbar.position = {}


---@type table
--- ***READ/WRITE***
---
--- Get or set the Progressbar progression range. The range value is a proxy table with the following fields :
---
--- https://www.luart.org/doc/ui/Progressbar-range.html
Progressbar.range = {}


---@type boolean
--- ***READ/WRITE***
---
--- Controls whether the Progressbar uses the default Windows theming (when set to true), or if it uses custom colors (when set to false).
---
--- https://www.luart.org/doc/ui/Progressbar-themed.html
Progressbar.themed = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window visibility on screen, a true value means that the window is shown, a false value means that the window is hidden.
--- - The window.visible property is also affected by the Progressbar:show() and Progressbar:hide() methods.
---
--- https://www.luart.org/doc/ui/Progressbar-visible.html
Progressbar.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Progressbar's width. The width starts from 0 (left side of the Progressbar) and increase to the right direction.
--- - The width property represent the width of the client area of the window, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Progressbar-width.html
Progressbar.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Progressbar horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Progressbar-x.html
Progressbar.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Progressbar vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Progressbar-y.html
Progressbar.y = {}



--- Advances the Progressbar position.
--- @param step integer An integer value indicating the amount of position to advance.
---
--- https://www.luart.org/doc/ui/Progressbar-advance.html
function Progressbar:advance(step) end

-- Centers the Progressbar on the parent widget.
---
--- https://www.luart.org/doc/ui/Progressbar-center.html
function Progressbar:center() end

--- Hide and deactivate the Progressbar (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Progressbar-hide.html
function Progressbar:hide() end

--- Show and activate the Progressbar (events can now be fired).
---
--- https://www.luart.org/doc/ui/Progressbar-show.html
function Progressbar:show() end

--- Puts the Progressbar behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Progressbar will be.
---
--- https://www.luart.org/doc/ui/Progressbar-toback.html
function Progressbar:toback(widget) end

--- Brings the current Progressbar in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Progressbar-tofront.html
function Progressbar:tofront(widget) end

--- This event is fired when the user has clicked on the Progressbar.
--- @param x number The horizontal position of the mouse in the Progressbar area.
--- @param y number The vertical position of the mouse in the Progressbar area.
---
--- https://www.luart.org/doc/ui/Progressbar-onClick.html
function Progressbar:onClick(x, y) end

--- This event is fired when the user has clicked on the Progressbar with the right mouse button.
---
--- https://www.luart.org/doc/ui/Progressbar-onContext.html
function Progressbar:onContext() end

--- This event is fired when the Progressbar object has just been created (just after the Progressbar:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Progressbar-onCreate.html
function Progressbar:onCreate() end

--- This event is fired when the user has dropped the mouse over the Progressbar.
--- @param kind string A string representing the kind of content dropped on the Progressbar.
--- @param content any The content dropped on the Progressbar, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Progressbar-onDrop.html
function Progressbar:onDrop(kind, content) end

--- This event is fired when the Progressbar is hidden by the user (when clicking on the Progressbar close button) or when calling Progressbar:hide() or setting the Progressbar.visible property to false.
---
--- https://www.luart.org/doc/ui/Progressbar-onHide.html
function Progressbar:onHide() end

--- This event is fired when the user moves the mouse pointer over the Progressbar.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Progressbar-onHover.html
function Progressbar:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Progressbar.
---
--- https://www.luart.org/doc/ui/Progressbar-onLeave.html
function Progressbar:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Progressbar.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Progressbar-onMouseDown.html
function Progressbar:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Progressbar.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Progressbar-onMouseUp.html
function Progressbar:onMouseUp(button, x, y) end

--- This event is fired when the Progressbar is shown (with a call to Progressbar:show() or setting the Progressbar.visible property to true).
---
--- https://www.luart.org/doc/ui/Progressbar-onShow.html
function Progressbar:onShow() end
