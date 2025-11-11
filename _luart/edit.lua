--- @class Edit
local Edit = {}

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Edit alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Edit alignment :
--- - "all" : the Edit will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Edit will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Edit will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Edit will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Edit will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Edit-align.html
Edit.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Edit's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Edit-allowdrop.html
Edit.allowdrop = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the global Edit background color.
--- - The color is represented by a number, an RGB value (one byte per primary color)
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Edit-bgcolor.html
Edit.bgcolor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the edit border visibility, a true value means that the border is shown, a false value means that the border is hidden.
---
--- https://www.luart.org/doc/ui/Edit-border.html
Edit.border = {}


---@type boolean
--- ***READONLY***
---
--- Get a boolean value, indicating wether the user can redo the last Edit operation.
---
--- https://www.luart.org/doc/ui/Edit-canredo.html
Edit.canredo = {}



---@type boolean
--- ***READONLY***
---
--- Get a boolean value, indicating wether the user can undo the last Edit operation.
---
--- https://www.luart.org/doc/ui/Edit-canundo.html
Edit.canundo = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit current caret position. The caret position starts from 1 (before the first character) and ends after the last character.
--- Set the caret position to 0 to set it at the last character (without the need to get the Edit's content size).
--- - Caret position is expressed in characters : the caret in position 1 is just before the first character.
--- - Use caret position 0 to reach end of the Edit's content.
---
--- https://www.luart.org/doc/ui/Edit-caret.html
Edit.caret = {}



--- @type ui_cursor
--- ***READ/WRITE***
---
--- Get or set the image of the mouse cursor as it hovers over the Edit. Mouse cursors are represented by strings :
--- - "arrow" : the default Edits mouse cursor.
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
--- The Edit.cursor property affects only the Edit client area. The title bar and borders are not affected.
---
--- https://www.luart.org/doc/ui/Edit-cursor.html
Edit.cursor = {}




---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Edit ability to respond to mouse, keyboard and any other events. When set to false, disable the Edit (the user will not be able to interact with it), and Edit's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Edit-enabled.html
Edit.enabled = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the current Edit text color, that apply to all text content.
--- - The color is represented by a number, an RGB value (one byte per primary color).
--- - A RGB color can be represented as an hexadecimal number : 0xRRGGBB , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/ui/Edit-fgcolor.html
Edit.fgcolor = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the Edit font, a string value that represent the font name.
---
--- To set the Edit.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Edit.fontstyle and the Edit.fontsize properties).
---
--- https://www.luart.org/doc/ui/Edit-font.html
Edit.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit font size, a number that represent the font size in pixels.
--- - By changing the font style of the Edit, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Edit-fontsize.html
Edit.fontsize = {}


---@type ui_font_style
--- ***READ/WRITE***
---
--- Get or set the Edit font style, a table value that contains the following keys/values :
--- - "italic" : set to true if the font is in italic.
--- - "underline" : set to true if the font is underlined.
--- - "strike" : set to true if the font is striked.
--- - "thin" : set to true if the font is thin.
--- - "bold" : set to true if the font is bold.
--- - "heavy" : set to true if the font is heavy.
---
--- https://www.luart.org/doc/ui/Edit-fontstyle.html
Edit.fontstyle = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit's height. The height starts from 0 (top side of the Edit) and increase to the bottom direction.
--- - The height property represent the height of the client area of the Edit, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Edit-height.html
Edit.height = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit current line position. The line position starts from 1 and grows until the last line of Edit content.
--- Setting this property will move the caret position at the start of the line.
--- - If this property is set with a line number higher than the last line, the caret stays at the current position.
---
--- https://www.luart.org/doc/ui/Edit-line.html
Edit.line = {}



---@type table
--- ***READONLY***
---
--- Returns a proxy table to get/set the lines of text in the Edit.
---
--- You can use this proxy table this way :
--- - Edit.lines[line_number] : gets or sets the line at index line_number. The line index start from 1 and grows until the last line of text.
--- - #Edit.lines : gets the line count of the Edit.
--- - You can use each(Edit.lines) or ipairs(Edit.lines) to iterate through each line of the Edit text.
---
--- Edit.lines is a proxy table and should not be used for anything other than setting/getting lines.
---
--- https://www.luart.org/doc/ui/Edit-lines.html
Edit.lines = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set a boolean value, indicating whether the Edit has been modified.
---
--- https://www.luart.org/doc/ui/Edit-modified.html
Edit.modified = {}


---@type number
--- ***READONLY***
---
--- Get the nearest character position from the current mouse screen coordinates, or 0 if the mouse cursor is outside the Edit widget.
---
--- https://www.luart.org/doc/ui/Edit-mousepos.html
Edit.mousepos = {}


---@type any
--- ***READONLY***
---
--- Get the parent widget that owns the Edit.
---
--- https://www.luart.org/doc/ui/Edit-parent.html
Edit.parent = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the the readonly mode of the Edit. A true value, indicate that the user cannot enter any new text content.
---
--- https://www.luart.org/doc/ui/Edit-readonly.html
Edit.readonly = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Edit text content as a string, with Rich Text Formatting.
--- To get the text without formatting, use the Edit.text property instead.
--- - Changing this property may erase the current text if the provided string don't contains Rich Text Formatted text.
---
--- https://www.luart.org/doc/ui/Edit-richtext.html
Edit.richtext = {}


---@type boolean
--- ***READ/WRITE***
---
--- Determines if the Edit control uses plain text (the default) or RTF formatted text, a true value meaning that the Edit uses Rich Text Format.
---
--- https://www.luart.org/doc/ui/Edit-rtf.html
Edit.rtf = {}

--- @class edit_selection_proxy
--- @field from number
--- @field to number
--- @field text string
--- @field fgcolor number
--- @field bgcolor number
--- @field font string
--- @field fontsize number
--- @field fontstyle string
--- @field visible boolean

---@type edit_selection_proxy
--- ***READONLY***
---
--- Returns a proxy table to get/set the current Edit selection properties.
--- You can get or set the following fields :
--- - selection.from: the starting character position of the current selection (1 means the caret is just before the first character)
--- - selection.to: the ending character position of the current selection (0 means the caret is after the last character)
--- - selection.text: the text of the current selection
--- - selection.fgcolor: the text color (a number RGB value) of the current selection (nil means default color)
--- - selection.bgcolor: the background color (a number RGB value) of the current selection (nil means default color)
--- - selection.font: the font name of the current selection
--- - selection.fontsize: the font size, in pixels, of the current selection
--- - selection.fontstyle: the fontstyle of the current selection
--- - selection.visible: controls the scrolling/visibility when manipulating the selection
--- - You can use #edit.selection to get current selection length, in characters.
---
--- Edit.selection is a proxy table and should not be used for anything other than setting/getting field values.
---
--- https://www.luart.org/doc/ui/Edit-selection.html
Edit.selection = {}




---@type string
--- ***READ/WRITE***
---
--- Get or set the Edit text content from a string.
--- - This property does not take into account Rich Text formatting (use Edit.richtext property instead).
---
--- https://www.luart.org/doc/ui/Edit-text.html
Edit.text = {}


---@type number
--- ***READONLY***
---
--- Get the length of the Edit text content, expressed as a number of characters.
---
--- https://www.luart.org/doc/ui/Edit-textlength.html
Edit.textlength = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the tooltip text that appears when the user moves the mouse over the control, represented as a string value.
--- Set the property to an empty string to remove the tooltip message.
---
--- https://www.luart.org/doc/ui/Edit-tooltip.html
Edit.tooltip = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Edit visibility on screen, a true value means that the Edit is shown, a false value means that the Edit is hidden.
--- - The Edit.visible property is also affected by the Edit:show() and Edit:hide() methods.
---
--- https://www.luart.org/doc/ui/Edit-visible.html
Edit.visible = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit's width. The width starts from 0 (left side of the Edit) and increase to the right direction.
--- - The width property represent the width of the client area of the Edit, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Edit-width.html
Edit.width = {}


---@type boolean
--- ***READ/WRITE***
---
--- Determines if the Edit control inserts soft carriage returns so that the text wraps to the right, a true value means that the Edit text wraps to the right.
---
--- https://www.luart.org/doc/ui/Edit-wordwrap.html
Edit.wordwrap = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Edit-x.html
Edit.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Edit vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Edit-y.html
Edit.y = {}


--- Append text to Edit content, just after the last character position.
--- @param text string A string, representing the text to append to the Edit content.
--- - The Edit widget will scroll down automatically to show the just appended text.
---
--- https://www.luart.org/doc/ui/Edit-append.html
function Edit:append(text) end

--- Centers the Edit on the parent widget.
---
--- https://www.luart.org/doc/ui/Edit-center.html
function Edit:center() end

--- Copies the Edit current selection to the Windows clipboard. If no current selection exists, nothing is copied to the clipboard.
---
--- https://www.luart.org/doc/ui/Edit-copy.html
function Edit:copy() end

--- Cut the Edit current selected text to the clipboard. If no current selection exists, nothing is cut to the clipboard.
---
--- https://www.luart.org/doc/ui/Edit-cut.html
function Edit:cut() end

--- Hide and deactivate the Edit (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Edit-hide.html
function Edit:hide() end

--- Scrolls the Edit text horizontally.
--- @param kind "left"|"right"|"lineleft"|"lineright"|"pageleft"|"pagedown" A string value, representing the the kind of horizontal scrolling :
--- - "left": scrolls the text to the upper left.
--- - "reight": scrolls the text to the lower right.
--- - "lineleft": scrolls the text left by one unit.
--- - "lineright": scrolls the text right by one unit.
--- - "pageleft": scrolls the text left by the width of the Edit.
--- - "pagedown": scrolls the text right by the width of the Edit.
---
--- https://www.luart.org/doc/ui/Edit-hscroll.html
function Edit:hscroll(kind) end

--- Loads the Edit content from the specified file.
--- - Byte Order Mark (BOM) is used to detect file encoding automatically.
--- @param file File|string A  File object or a filename string, representing the file whose content will fill the Edit.
--- @param isrichtext? boolean An optional boolean value indicating wether the file content is in RichText format, or not. If omitted, this parameter defaults to the Edit.richtext property value.
--- @return boolean @This function returns true if it succeeds or false if it fails.
---
--- https://www.luart.org/doc/ui/Edit-load.html
function Edit:load(file, isrichtext) end

--- Paste the Windows clipboard content to the Edit object.
---
--- https://www.luart.org/doc/ui/Edit-paste.html
function Edit:paste() end

--- Redoes the last edit operation on the Edit.
---
--- https://www.luart.org/doc/ui/Edit-redo.html
function Edit:redo() end

--- Saves the Edit content to a specified file.
--- @param file File|string A  File object or a filename string, representing the file whose content will fill the Edit.
--- @param isrichtext? boolean An optional boolean value indicating whether the file content is in RichText format, or not.
--- @param encoding? file_encoding An optional string indicating the desired file encoding (See [File:open()](https://www.luart.org/doc/sys/File-open.html) for possible encoding values). If omitted, uses default raw binary encoding.
---
--- https://www.luart.org/doc/ui/Edit-save.html
function Edit:save(file, isrichtext, encoding) end

--- Search text withins the Edit content, forward from the current caret position.
--- @param findtext string A string value, representing the text to search for.
--- @param iswholeword? boolean A boolean value, indicating to search only for whole words that match the search text.
--- @param matchcase? boolean A boolean value, indicating that the search operation is case-sensitive.
--- @return number from The position of the character at the start of the search text.
--- @return number to The position at the end of the search text.
--- This function returns two numbers : the position of the character at the start of the search text, and the position at its end.
--- If the search text is not found, the function returns nil
---
--- https://www.luart.org/doc/ui/Edit-searchdown.html
function Edit:searchdown(findtext, iswholeword, matchcase) end

--- Search text withins the Edit content, backward from the current caret position.
--- @param findtext string A string value, representing the text to search for.
--- @param iswholeword? boolean A boolean value, indicating to search only for whole words that match the search text.
--- @param matchcase? boolean A boolean value, indicating that the search operation is case-sensitive.
--- @return number from The position of the character at the start of the search text.
--- @return number to The position at the end of the search text.
--- This function returns two numbers : the position of the character at the start of the search text, and the position at its end.
--- If the search text is not found, the function returns nil
---
--- https://www.luart.org/doc/ui/Edit-searchup.html
function Edit:searchdown(findtext, iswholeword, matchcase) end

--- Show and activate the Edit (events can now be fired).
---
--- https://www.luart.org/doc/ui/Edit-show.html
function Edit:show() end

--- Puts the Edit behind all other widgets, or behind the specified widget.
--- @param widget any The widget below which the current Edit will be.
---
--- https://www.luart.org/doc/ui/Edit-toback.html
function Edit:toback(widget) end

--- Brings the current widget in front of all other widgets, or in front of the specified widget.
--- @param widget any
---
--- https://www.luart.org/doc/ui/Edit-tofront.html
function Edit:tofront(widget) end

--- Undoes the last edit operation on the Edit.
---
--- https://www.luart.org/doc/ui/Edit-undo.html
function Edit:undo() end

--- Scrolls the Edit text vertically.
--- @param kind "top"|"bottom"|"lineup"|"linedown"|"pageup"|"pagedown" A string value, representing the the kind of vertical scrolling :
--- - "top": scrolls the text to the upper left.
--- - "bottom": scrolls the text to the lower right.
--- - "lineup": scrolls the text one line up.
--- - "linedown": scrolls the text one line down.
--- - "pageup": scrolls the text one page up.
--- - "pagedown": scrolls the text one page down.
---
--- https://www.luart.org/doc/ui/Edit-vscroll.html
function Edit:vscroll(kind) end

--- This event is fired when the Edit cursor position has changed.
---
--- https://www.luart.org/doc/ui/Edit-onCaret.html
function Edit:onCaret() end

--- This event is fired when the user has modified the Edit text content or format.
--- - Changing Edit content text or format during this event is possible and will not throw others onChange events.
---
--- https://www.luart.org/doc/ui/Edit-onChange.html
function Edit:onChange() end

--- This event is fired when the user has clicked on the Edit.
---
--- https://www.luart.org/doc/ui/Edit-onClick.html
function Edit:onClick() end

--- This event is fired when the Edit object has just been created (just after the Edit:constructor() call).
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Edit-onCreate.html
function Edit:onCreate() end

--- This event is fired when the user has dropped the mouse over the Edit.
--- @param kind string A string representing the kind of content dropped on the Edit.
--- @param content any The content dropped on the Edit, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Edit-onDrop.html
function Edit:onDrop(kind, content) end

--- This event is fired when the Edit is hidden by the user (when clicking on the Edit close button) or when calling Edit:hide() or setting the Edit.visible property to false.
---
--- https://www.luart.org/doc/ui/Edit-onHide.html
function Edit:onHide() end

--- This event is fired when the user presses a mouse button while beeing over the Edit.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Edit-onMouseDown.html
function Edit:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Edit.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Edit-onMouseUp.html
function Edit:onMouseUp(button, x, y) end

--- Event fired when the user has made a selection in the Edit Widget.
--- @param start number The character position at the start of the selection.
--- @param end_ number The character position at the end of the selection.
--- - Selection and caret position are expressed in characters : the cursor in position 1 is just before the first character.
--- - Selection includes everything if it starts at position 1 and ends at position 0.
--- - The selection is empty if its end and start are the same.
---
--- https://www.luart.org/doc/ui/Edit-onSelect.html
function Edit:onSelect(start, end_) end

--- This event is fired when the Edit is shown (with a call to Edit:show() or setting the Edit.visible property to true).
---
--- https://www.luart.org/doc/ui/Edit-onShow.html
function Edit:onShow() end
