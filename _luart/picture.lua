--- @class Picture
local Picture = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Picture alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Picture alignment :
--- - "all" : the Picture will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Picture will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Picture will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Picture will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Picture will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Picture-align.html
Picture.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Picture's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Picture-allowdrop.html
Picture.allowdrop = {}


--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the window. Mouse cursors are represented by strings :
--- - "arrow" : the default Windows mouse cursor.
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
--- The window.cursor property affects only the window client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Picture-cursor.html
Picture.cursor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window ability to respond to mouse, keyboard and any other events. When set to false, disable the Picture (the user will not be able to interact with it), and window's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Picture-enabled.html
Picture.enabled = {}




---@type number
--- ***READ/WRITE***
---
--- Get or set the Picture's height. The height starts from 0 (top side of the Picture) and increase to the bottom direction.
--- - The height property represent the height of the client area of the window, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Picture-height.html
Picture.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget if it exists, or nil otherwise.
---
--- https://www.luart.org/doc/ui/Picture-parent.html
Picture.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Picture-tooltip.html
Picture.tooltip = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window visibility on screen, a true value means that the window is shown, a false value means that the window is hidden.
--- - The window.visible property is also affected by the Picture:show() and Picture:hide() methods.
---
--- https://www.luart.org/doc/ui/Picture-visible.html
Picture.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Picture's width. The width starts from 0 (left side of the Picture) and increase to the right direction.
--- - The width property represent the width of the client area of the window, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Picture-width.html
Picture.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Picture horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Picture-x.html
Picture.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Picture vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Picture-y.html
Picture.y = {}


--- Centers the Picture on the parent widget.
---
--- https://www.luart.org/doc/ui/Picture-center.html
function Picture:center() end

--- Hide and deactivate the Picture (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Picture-hide.html
function Picture:hide() end

--- Change the Picture image by loading it from a file on disk.
--- @param file File|string A  File object or a filename string, representing the image file whose content will be loaded.
--- @param width? number An optional number indicating the new width of the Picture widget, defaulting to the image width.
--- @param height? number An optional number indicating the new height of the Picture widget, defaulting to the image height.
--- @return boolean @This function returns true if the image loading succeeded, or false otherwise.
---
--- https://www.luart.org/doc/ui/Picture-load.html
function Picture:load(file, width, height) end

--- Resize the Picture by a certain amount.
--- @param factor number A number indicating the scale factor to apply. Using a value inferior to 1 will shrink the Picture. A value superior to 1 will enlarge the Picture.
---
--- https://www.luart.org/doc/ui/Picture-resize.html
function Picture:resize(factor) end

--- Save the Picture image to a file on disk.
--- @param file File|string A  File object or a filename string, representing the image file whose content will be saved.
--- @return boolean @This function returns true if the image saving succeeded, or false otherwise.
---
--- https://www.luart.org/doc/ui/Picture-save.html
function Picture:save(file) end

--- Show and activate the Picture (events can now be fired).
---
--- https://www.luart.org/doc/ui/Picture-show.html
function Picture:show() end

--- Puts the Picture behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Picture will be.
---
--- https://www.luart.org/doc/ui/Picture-toback.html
function Picture:toback(widget) end

--- Brings the current Picture in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Picture-tofront.html
function Picture:tofront(widget) end

--- This event is fired when the user has clicked on the Picture.
---
--- https://www.luart.org/doc/ui/Picture-onClick.html
function Picture:onClick() end

--- This event is fired when the user has clicked on the Picture with the right mouse button.
---
--- https://www.luart.org/doc/ui/Picture-onContext.html
function Picture:onContext() end

--- This event is fired when the Picture object has just been created (just after the Picture:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Picture-onCreate.html
function Picture:onCreate() end

--- This event is fired when the user has doubleclicked on the Picture.
---
--- https://www.luart.org/doc/ui/Picture-onDoubleClick.html
function Picture:onDoubleClick() end

--- This event is fired when the user has dropped the mouse over the Picture.
--- @param kind string A string representing the kind of content dropped on the Picture.
--- @param content any The content dropped on the Picture, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Picture-onDrop.html
function Picture:onDrop(kind, content) end

--- This event is fired when the Picture is hidden by the user (when clicking on the Picture close button) or when calling Picture:hide() or setting the Picture.visible property to false.
---
--- https://www.luart.org/doc/ui/Picture-onHide.html
function Picture:onHide() end

--- This event is fired when the user moves the mouse pointer over the Picture.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Picture-onHover.html
function Picture:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Picture.
---
--- https://www.luart.org/doc/ui/Picture-onLeave.html
function Picture:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Picture.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Picture-onMouseDown.html
function Picture:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Picture.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Picture-onMouseUp.html
function Picture:onMouseUp(button, x, y) end

--- This event is fired when the Picture is shown (with a call to Picture:show() or setting the Picture.visible property to true).
---
--- https://www.luart.org/doc/ui/Picture-onShow.html
function Picture:onShow() end
