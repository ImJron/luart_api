--- @class Calendar
local Calendar = {}


---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Calendar alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Calendar alignment :
--- - "all" : the Calendar will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Calendar will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Calendar will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Calendar will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Calendar will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Calendar-align.html
Calendar.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Calendar's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Calendar-allowdrop.html
Calendar.allowdrop = {}



--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Calendar. Mouse cursors are represented by strings :
--- - "arrow" : the default Calendars mouse cursor.
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
--- The Calendar.cursor property affects only the Calendar client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Calendar-cursor.html
Calendar.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Calendar ability to respond to mouse, keyboard and any other events. When set to false, disable the Calendar (the user will not be able to interact with it), and Calendar's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Calendar-enabled.html
Calendar.enabled = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Calendar's height. The height starts from 0 (top side of the Calendar) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Calendar, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Calendar-height.html
Calendar.height = {}




---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Calendar.
---
--- https://www.luart.org/doc/ui/Calendar-parent.html
Calendar.parent = {}



---@type Datetime
--- ***READ/WRITE***
---
--- Get or set the current selected date on the Calendar. The selected date is a  Datetime value.
--- - When the Calendar widget is created, the default selected date is the current day.
---
--- https://www.luart.org/doc/ui/Calendar-selected.html
Calendar.selected = {}



---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Calendar-tooltip.html
Calendar.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Calendar visibility on screen, a true value means that the Calendar is shown, a false value means that the Calendar is hidden.
--- - The Calendar.visible property is also affected by the Calendar:show() and Calendar:hide() methods.
---
--- https://www.luart.org/doc/ui/Calendar-visible.html
Calendar.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Calendar's width. The width starts from 0 (left side of the Calendar) and increase to the right direction.
--- - The width property represent the width of the client area of the Calendar, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Calendar-width.html
Calendar.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Calendar horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Calendar-x.html
Calendar.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Calendar vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Calendar-y.html
Calendar.y = {}

--- Centers the Calendar on the parent widget.
---
--- https://www.luart.org/doc/ui/Calendar-center.html
function Calendar:center() end

--- Hide and deactivate the Calendar (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Calendar-hide.html
function Calendar:hide() end

--- Show and activate the Calendar (events can now be fired).
---
--- https://www.luart.org/doc/ui/Calendar-show.html
function Calendar:show() end

--- Puts the Calendar behind all other Calendars, or behind the specified Calendar.
--- @param widget any The widget below which the current Calendar will be.
---
--- https://www.luart.org/doc/ui/Calendar-toback.html
function Calendar:toback(widget) end

--- Brings the current Calendar in front of all other Calendars, or in front of the specified Calendar.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Calendar-tofront.html
function Calendar:tofront(widget) end

--- This event is fired when the user has clicked on the Calendar.
---
--- https://www.luart.org/doc/ui/Calendar-onClick.html
function Calendar:onClick() end

--- This event is fired when the user has clicked on the Calendar with the right mouse button.
---
--- https://www.luart.org/doc/ui/Calendar-onContext.html
function Calendar:onContext() end

--- This event is fired when the Calendar object has just been created (just after the Calendar:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Calendar-onCreate.html
function Calendar:onCreate() end

--- This event is fired when the user has dropped the mouse over the Calendar.
--- @param kind string A string representing the kind of content dropped on the Calendar.
--- @param content any The content dropped on the Calendar, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Calendar-onDrop.html
function Calendar:onDrop(kind, content) end

--- This event is fired when the Calendar is hidden by the user (when clicking on the Calendar close button) or when calling Calendar:hide() or setting the Calendar.visible property to false.
---
--- https://www.luart.org/doc/ui/Calendar-onHide.html
function Calendar:onHide() end

--- This event is fired when the user moves the mouse pointer over the Calendar.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Calendar-onHover.html
function Calendar:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Calendar.
---
--- https://www.luart.org/doc/ui/Calendar-onLeave.html
function Calendar:onLeave() end

--- This event is fired when the user presses a mouse button while beeing over the Calendar.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Calendar-onMouseDown.html
function Calendar:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Calendar.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Calendar-onMouseUp.html
function Calendar:onMouseUp(button, x, y) end

--- This event is fired when the user has choosen a date on the Calendar.
--- @param date Datetime
---
--- https://www.luart.org/doc/ui/Calendar-onSelect.html
function Calendar:onSelect(date) end

--- This event is fired when the Calendar is shown (with a call to Calendar:show() or setting the Calendar.visible property to true).
---
--- https://www.luart.org/doc/ui/Calendar-onShow.html
function Calendar:onShow() end
