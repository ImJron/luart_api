--- @class Groupbox
local Groupbox = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Groupbox alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Groupbox alignment :
--- - "all" : the Groupbox will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Groupbox will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Groupbox will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Groupbox will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Groupbox will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Groupbox-align.html
Groupbox.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Groupbox's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Groupbox-allowdrop.html
Groupbox.allowdrop = {}


---@type table
--- ***READONLY***
---
--- Get a list of the Groupbox's widgets, as a table. Each items in the list is a widget who's parent is the current window.
---
--- https://www.luart.org/doc/ui/Groupbox-childs.html
Groupbox.childs = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window ability to respond to mouse, keyboard and any other events. When set to false, disable the Groupbox (the user will not be able to interact with it), and window's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Groupbox-enabled.html
Groupbox.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the window font, a string value that represent the font name.
---
--- To set the Groupbox.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Groupbox.fontstyle and the Groupbox.fontsize properties).
---
---  - By changing the font of the window, you also change the font of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Groupbox-font.html
Groupbox.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the window font size, a number that represent the font size in pixels.
--- - By changing the font style of the window, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Groupbox-fontsize.html
Groupbox.fontsize = {}


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
--- https://www.luart.org/doc/ui/Groupbox-fontstyle.html
Groupbox.fontstyle = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Groupbox's height. The height starts from 0 (top side of the Groupbox) and increase to the bottom direction.
--- - The height property represent the height of the client area of the window, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Groupbox-height.html
Groupbox.height = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget if it exists, or nil otherwise.
---
--- https://www.luart.org/doc/ui/Groupbox-parent.html
Groupbox.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Groupbox text as a string, that appear as a title in its top left border.
---
--- https://www.luart.org/doc/ui/Groupbox-text.html
Groupbox.text = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window visibility on screen, a true value means that the window is shown, a false value means that the window is hidden.
--- - The window.visible property is also affected by the Groupbox:show() and Groupbox:hide() methods.
---
--- https://www.luart.org/doc/ui/Groupbox-visible.html
Groupbox.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Groupbox's width. The width starts from 0 (left side of the Groupbox) and increase to the right direction.
--- - The width property represent the width of the client area of the window, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Groupbox-width.html
Groupbox.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Groupbox horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Groupbox-x.html
Groupbox.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Groupbox vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Groupbox-y.html
Groupbox.y = {}

--- Centers the Groupbox on the parent widget.
---
--- https://www.luart.org/doc/ui/Groupbox-center.html
function Groupbox:center() end

--- Hide and deactivate the Groupbox (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Groupbox-hide.html
function Groupbox:hide() end

--- Show and activate the Groupbox (events can now be fired).
---
--- https://www.luart.org/doc/ui/Groupbox-show.html
function Groupbox:show() end

--- Puts the Groupbox behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Groupbox will be.
---
--- https://www.luart.org/doc/ui/Groupbox-toback.html
function Groupbox:toback(widget) end

--- Brings the current Groupbox in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Groupbox-tofront.html
function Groupbox:tofront(widget) end

--- This event is fired when the user has clicked on the Groupbox.
---
--- https://www.luart.org/doc/ui/Groupbox-onClick.html
function Groupbox:onClick() end

--- This event is fired when the Groupbox object has just been created (just after the Groupbox:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Groupbox-onCreate.html
function Groupbox:onCreate() end

--- This event is fired when the user has dropped the mouse over the Groupbox.
--- @param kind string A string representing the kind of content dropped on the Groupbox.
--- @param content any The content dropped on the Groupbox, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Groupbox-onDrop.html
function Groupbox:onDrop(kind, content) end

--- This event is fired when the Groupbox is hidden by the user (when clicking on the Groupbox close button) or when calling Groupbox:hide() or setting the Groupbox.visible property to false.
---
--- https://www.luart.org/doc/ui/Groupbox-onHide.html
function Groupbox:onHide() end

--- This event is fired when the user presses a mouse button while beeing over the Groupbox.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Groupbox-onMouseDown.html
function Groupbox:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Groupbox.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Groupbox-onMouseUp.html
function Groupbox:onMouseUp(button, x, y) end

--- This event is fired when the Groupbox is shown (with a call to Groupbox:show() or setting the Groupbox.visible property to true).
---
--- https://www.luart.org/doc/ui/Groupbox-onShow.html
function Groupbox:onShow() end
