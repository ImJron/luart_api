--- @class Panel
local Panel = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Panel alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Panel alignment :
--- - "all" : the Panel will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Panel will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Panel will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Panel will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Panel will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Panel-align.html
Panel.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Panel's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Panel-allowdrop.html
Panel.allowdrop = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Panel background color.
---
--- https://www.luart.org/doc/ui/Panel-bgcolor.html
Panel.bgcolor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Shows or hides the Panel border.
---
--- https://www.luart.org/doc/ui/Panel-border.html
Panel.border = {}


---@type table
--- ***READONLY***
---
--- Get a list of the Panel's widgets, as a table. Each items in the list is a widget who's parent is the current window.
---
--- https://www.luart.org/doc/ui/Panel-childs.html
Panel.childs = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window ability to respond to mouse, keyboard and any other events. When set to false, disable the Panel (the user will not be able to interact with it), and window's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Panel-enabled.html
Panel.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the window font, a string value that represent the font name.
---
--- To set the Panel.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Panel.fontstyle and the Panel.fontsize properties).
---
---  - By changing the font of the window, you also change the font of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Panel-font.html
Panel.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the window font size, a number that represent the font size in pixels.
--- - By changing the font style of the window, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Panel-fontsize.html
Panel.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the window font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Panel-fontstyle.html
Panel.fontstyle = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Panel's height. The height starts from 0 (top side of the Panel) and increase to the bottom direction.
--- - The height property represent the height of the client area of the window, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Panel-height.html
Panel.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget if it exists, or nil otherwise.
---
--- https://www.luart.org/doc/ui/Panel-parent.html
Panel.parent = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window visibility on screen, a true value means that the window is shown, a false value means that the window is hidden.
--- - The window.visible property is also affected by the Panel:show() and Panel:hide() methods.
---
--- https://www.luart.org/doc/ui/Panel-visible.html
Panel.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Panel's width. The width starts from 0 (left side of the Panel) and increase to the right direction.
--- - The width property represent the width of the client area of the window, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Panel-width.html
Panel.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Panel horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Panel-x.html
Panel.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Panel vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Panel-y.html
Panel.y = {}


--- Centers the Panel on the parent widget.
---
--- https://www.luart.org/doc/ui/Panel-center.html
function Panel:center() end

--- Hide and deactivate the Panel (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Panel-hide.html
function Panel:hide() end

--- Show and activate the Panel (events can now be fired).
---
--- https://www.luart.org/doc/ui/Panel-show.html
function Panel:show() end

--- Puts the Panel behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Panel will be.
---
--- https://www.luart.org/doc/ui/Panel-toback.html
function Panel:toback(widget) end

--- Brings the current Panel in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Panel-tofront.html
function Panel:tofront(widget) end

-- This event is fired when the user has clicked on the Panel.
---
--- https://www.luart.org/doc/ui/Panel-onClick.html
function Panel:onClick() end

--- This event is fired when the user has clicked on the Panel with the right mouse button.
--- @param ListItem ListItem
---
--- https://www.luart.org/doc/ui/Panel-onContext.html
function Panel:onContext(ListItem) end

--- This event is fired when the Panel object has just been created (just after the Panel:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Panel-onCreate.html
function Panel:onCreate() end

--- This event is fired when the user has dropped the mouse over the Panel.
--- @param kind string A string representing the kind of content dropped on the Panel.
--- @param content any The content dropped on the Panel, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Panel-onDrop.html
function Panel:onDrop(kind, content) end

--- This event is fired when the Panel is hidden by the user (when clicking on the Panel close button) or when calling Panel:hide() or setting the Panel.visible property to false.
---
--- https://www.luart.org/doc/ui/Panel-onHide.html
function Panel:onHide() end

--- This event is fired when the user moves the mouse pointer over the Panel.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Panel-onHover.html
function Panel:onHover(x, y, buttons) end

--- This event is fired when a key was pressed.
--- @param key string A string that represent the key name.
--- Key names are defined by the following rules:
--- - For digit keys 0..9, the name is the digit as a string : "0", "1" ...
--- - For alphabetical keys A..Z, the name is the character as a string : "A", "B" ...
--- - Any other key is represented by the Windows virtual key as a string : "VK_SPACE", "VK_RETURN", "VK_SHIFT"...
--- - The full list of Windows virtual keys is available [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
---
--- https://www.luart.org/doc/ui/Panel-onKey.html
function Panel:onKey(key) end

--- This event is fired when the mouse cursor leaves the Panel.
---
--- https://www.luart.org/doc/ui/Panel-onLeave.html
function Panel:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Panel.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Panel-onMouseDown.html
function Panel:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Panel.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Panel-onMouseUp.html
function Panel:onMouseUp(button, x, y) end

--- This event is fired when the Panel position has been changed by the user or by setting the Panel.x or Panel.y properties.
---
--- https://www.luart.org/doc/ui/Panel-onMove.html
function Panel:onMove() end

--- This event is fired when the Panel has been resized by the user or by setting the Panel.width or Panel.height properties.
---
--- https://www.luart.org/doc/ui/Panel-onResize.html
function Panel:onResize() end

--- This event is fired when the Panel is shown (with a call to Panel:show() or setting the Panel.visible property to true).
---
--- https://www.luart.org/doc/ui/Panel-onShow.html
function Panel:onShow() end
