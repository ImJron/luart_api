--- @class Button
local Button = {}

--- @alias ui_text_align "left"|"right"|"center"


---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Button alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Button alignment :
--- - "all" : the Button will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Button will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Button will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Button will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Button will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Button-align.html
Button.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Button's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Button-allowdrop.html
Button.allowdrop = {}



--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Button. Mouse cursors are represented by strings :
--- - "arrow" : the default Buttons mouse cursor.
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
--- The Button.cursor property affects only the Button client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Button-cursor.html
Button.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Button ability to respond to mouse, keyboard and any other events. When set to false, disable the Button (the user will not be able to interact with it), and Button's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Button-enabled.html
Button.enabled = {}




---@type string|File
--- ***READ/WRITE***
---
--- Get the Button font, a string value that represent the font name.
---
--- To set the Button.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Button.fontstyle and the Button.fontsize properties).
---
--- https://www.luart.org/doc/ui/Button-font.html
Button.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Button font size, a number that represent the font size in pixels.
--- - By changing the font style of the Button, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Button-fontsize.html
Button.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Button font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Button-fontstyle.html
Button.fontstyle = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the button's text visibility on screen, a true value means that the text is shown, a false value means that the text is hidden.
--- - When setting the value to false, the button's text value is lost.
---
--- https://www.luart.org/doc/ui/Button-hastext.html
Button.hastext = {}




---@type number
--- ***READ/WRITE***
---
--- Get or set the Button's height. The height starts from 0 (top side of the Button) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Button, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Button-height.html
Button.height = {}




---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Button.
---
--- https://www.luart.org/doc/ui/Button-parent.html
Button.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Button caption as a string.
---
--- https://www.luart.org/doc/ui/Button-text.html
Button.text = {}


--- @type ui_text_align
--- ***READ/WRITE***
---
--- Get or set the Button text alignment, a string value that represent how the text will be displayed.
--- - "left" : the text is aligned to the left edge of the Button.
--- - "right" : the text is aligned to the right edge of the Button.
--- - "center" : the text is aligned in the center of the Button area (the default).
---
--- https://www.luart.org/doc/ui/Button-textalign.html
Button.textalign = {}




---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Button-tooltip.html
Button.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Button visibility on screen, a true value means that the Button is shown, a false value means that the Button is hidden.
--- - The Button.visible property is also affected by the Button:show() and Button:hide() methods.
---
--- https://www.luart.org/doc/ui/Button-visible.html
Button.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Button's width. The width starts from 0 (left side of the Button) and increase to the right direction.
--- - The width property represent the width of the client area of the Button, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Button-width.html
Button.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Button horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Button-x.html
Button.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Button vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Button-y.html
Button.y = {}



--- Resize the Button automatically to accommodate its content.
---
--- https://www.luart.org/doc/ui/Button-autosize.html
function Button:autosize() end

--- Centers the Button on the parent widget.
---
--- https://www.luart.org/doc/ui/Button-center.html
function Button:center() end

--- Hide and deactivate the Button (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Button-hide.html
function Button:hide() end

--- Loads a Button icon, displayed to the left of the Button caption.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the Button.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the Button icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/Button-loadicon.html
function Button:loadicon(path, index) end

--- Show and activate the Button (events can now be fired).
---
--- https://www.luart.org/doc/ui/Button-show.html
function Button:show() end

--- Puts the Button behind all other Buttons, or behind the specified Button.
--- @param widget any The widget below which the current Button will be.
---
--- https://www.luart.org/doc/ui/Button-toback.html
function Button:toback(widget) end

--- Brings the current Button in front of all other Buttons, or in front of the specified Button.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Button-tofront.html
function Button:tofront(widget) end

--- This event is fired when the user has clicked on the Button.
---
--- https://www.luart.org/doc/ui/Button-onClick.html
function Button:onClick() end

--- This event is fired when the user has clicked on the Button with the right mouse button.
---
--- https://www.luart.org/doc/ui/Button-onContext.html
function Button:onContext() end

--- This event is fired when the Button object has just been created (just after the Button:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Button-onCreate.html
function Button:onCreate() end

--- This event is fired when the user has dropped the mouse over the Button.
--- @param kind string A string representing the kind of content dropped on the Button.
--- @param content any The content dropped on the Button, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Button-onDrop.html
function Button:onDrop(kind, content) end

--- This event is fired when the Button is hidden by the user (when clicking on the Button close button) or when calling Button:hide() or setting the Button.visible property to false.
---
--- https://www.luart.org/doc/ui/Button-onHide.html
function Button:onHide() end

--- This event is fired when the user moves the mouse pointer over the Button.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Button-onHover.html
function Button:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Button.
---
--- https://www.luart.org/doc/ui/Button-onLeave.html
function Button:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Button.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Button-onMouseDown.html
function Button:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Button.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Button-onMouseUp.html
function Button:onMouseUp(button, x, y) end

--- This event is fired when the Button is shown (with a call to Button:show() or setting the Button.visible property to true).
---
--- https://www.luart.org/doc/ui/Button-onShow.html
function Button:onShow() end
