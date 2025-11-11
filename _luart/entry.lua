--- @class Entry
local Entry = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Entry alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Entry alignment :
--- - "all" : the Entry will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Entry will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Entry will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Entry will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Entry will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Entry-align.html
Entry.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Entry's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Entry-allowdrop.html
Entry.allowdrop = {}



---@type boolean
--- ***READONLY***
---
--- Get a boolean value, indicating wether the user can undo the last Entry operation.
---
--- https://www.luart.org/doc/ui/Entry-canundo.html
Entry.canundo = {}



--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Entry. Mouse cursors are represented by strings :
--- - "arrow" : the default Entrys mouse cursor.
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
--- The Entry.cursor property affects only the Entry client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Entry-cursor.html
Entry.cursor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Entry ability to respond to mouse, keyboard and any other events. When set to false, disable the Entry (the user will not be able to interact with it), and Entry's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Entry-enabled.html
Entry.enabled = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the Entry font, a string value that represent the font name.
---
--- To set the Entry.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Entry.fontstyle and the Entry.fontsize properties).
---
--- https://www.luart.org/doc/ui/Entry-font.html
Entry.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Entry font size, a number that represent the font size in pixels.
--- - By changing the font style of the Entry, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Entry-fontsize.html
Entry.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Entry font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Entry-fontstyle.html
Entry.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Entry's height. The height starts from 0 (top side of the Entry) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Entry, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Entry-height.html
Entry.height = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set a boolean value, indicating wether the user input is visible or hidden by "*" characters.
---
--- https://www.luart.org/doc/ui/Entry-masked.html
Entry.masked = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set a boolean value, indicating whether the Entry has been modified.
---
--- https://www.luart.org/doc/ui/Entry-modified.html
Entry.modified = {}



---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Entry.
---
--- https://www.luart.org/doc/ui/Entry-parent.html
Entry.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Entry text content from a string.
--- - This property does not take into account Rich Text formatting (use Entry.richtext property instead).
---
--- https://www.luart.org/doc/ui/Entry-text.html
Entry.text = {}

--- @type ui_text_align
--- ***READ/WRITE***
---
--- Get or set the Entry text alignment, a string value that represent how the text will be displayed.
--- - "left" : the text is aligned to the left edge of the Entry.
--- - "right" : the text is aligned to the right edge of the Entry.
--- - "center" : the text is aligned in the center of the Entry area (the default).
---
--- https://www.luart.org/doc/ui/Entry-textalign.html
Entry.textalign = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set a number value, indicating the maximum length of the text entered.
--- Setting the property with a value of 0 permits a maximum of 64000 characters.
---
--- https://www.luart.org/doc/ui/Entry-textlimit.html
Entry.textlimit = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Entry-tooltip.html
Entry.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Entry visibility on screen, a true value means that the Entry is shown, a false value means that the Entry is hidden.
--- - The Entry.visible property is also affected by the Entry:show() and Entry:hide() methods.
---
--- https://www.luart.org/doc/ui/Entry-visible.html
Entry.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Entry's width. The width starts from 0 (left side of the Entry) and increase to the right direction.
--- - The width property represent the width of the client area of the Entry, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Entry-width.html
Entry.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Entry horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Entry-x.html
Entry.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Entry vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Entry-y.html
Entry.y = {}


--- Resize the Entry automatically to accommodate its content.
---
--- https://www.luart.org/doc/ui/Entry-autosize.html
function Entry:autosize() end

--- Centers the Entry on the parent widget.
---
--- https://www.luart.org/doc/ui/Entry-center.html
function Entry:center() end

--- Copies the Entry current selection to the Windows clipboard. If no current selection exists, nothing is copied to the clipboard.
---
--- https://www.luart.org/doc/ui/Entry-copy.html
function Entry:copy() end

--- Cut the Entry current selected text to the clipboard. If no current selection exists, nothing is cut to the clipboard.
---
--- https://www.luart.org/doc/ui/Entry-cut.html
function Entry:cut() end

--- Hide and deactivate the Entry (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Entry-hide.html
function Entry:hide() end

--- Paste the Windows clipboard content to the Entry object.
---
--- https://www.luart.org/doc/ui/Entry-paste.html
function Entry:paste() end

--- Show and activate the Entry (events can now be fired).
---
--- https://www.luart.org/doc/ui/Entry-show.html
function Entry:show() end

--- Puts the Entry behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Entry will be.
---
--- https://www.luart.org/doc/ui/Entry-toback.html
function Entry:toback(widget) end

--- Brings the current Entry in front of all other wigets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Entry-tofront.html
function Entry:tofront(widget) end

--- Undoes the last edit operation on the Entry.
---
--- https://www.luart.org/doc/ui/Entry-undo.html
function Entry:undo() end

--- This event is fired when the user has modified the Entry text content or format.
--- - Changing Entry content text or format during this event is possible and will not throw others onChange events.
---
--- https://www.luart.org/doc/ui/Entry-onChange.html
function Entry:onChange() end

--- This event is fired when the user has clicked on the Entry.
---
--- https://www.luart.org/doc/ui/Entry-onClick.html
function Entry:onClick() end

--- This event is fired when the Entry object has just been created (just after the Entry:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Entry-onCreate.html
function Entry:onCreate() end

--- This event is fired when the user has dropped the mouse over the Entry.
--- @param kind string A string representing the kind of content dropped on the Entry.
--- @param content any The content dropped on the Entry, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Entry-onDrop.html
function Entry:onDrop(kind, content) end

--- This event is fired when the Entry is hidden by the user (when clicking on the Entry close button) or when calling Entry:hide() or setting the Entry.visible property to false.
---
--- https://www.luart.org/doc/ui/Entry-onHide.html
function Entry:onHide() end

--- This event is fired when the user moves the mouse pointer over the Entry.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Entry-onHover.html
function Entry:onHover(x, y, buttons) end

--- This event is fired when the user presses a mouse button while beeing over the Entry.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Entry-onMouseDown.html
function Entry:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Entry.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Entry-onMouseUp.html
function Entry:onMouseUp(button, x, y) end

--- Event fired when the user has made a selection in the Entry Widget.
--- @param start number The character position at the start of the selection.
--- @param end_ number The character position at the end of the selection.
--- - Selection and caret position are expressed in characters : the cursor in position 1 is just before the first character.
--- - Selection includes everything if it starts at position 1 and ends at position 0.
--- - The selection is empty if its end and start are the same.
---
--- https://www.luart.org/doc/ui/Entry-onSelect.html
function Entry:onSelect(start, end_) end

--- This event is fired when the Entry is shown (with a call to Entry:show() or setting the Entry.visible property to true).
---
--- https://www.luart.org/doc/ui/Entry-onShow.html
function Entry:onShow() end
