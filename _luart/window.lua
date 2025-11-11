--- @class Window
local Window = {}

---@alias WindowsVirtualKey "VK_DIVIDE"|"VK_OEM_AUTO"|"VK_VOLUME_MUTE"|"VK_CAPITAL"|"F"|"VK_PA1"|"J"|"S"|"H"|"VK_LSHIFT"|"VK_OEM_FJ_TOUROKU"|"VK_SELECT"|"VK_RSHIFT"|"K"|"VK_LAUNCH_MAIL"|"VK_OEM_CLEAR"|"2"|"VK_OEM_PA1"|"VK_OEM_FJ_ROYA"|"VK_END"|"VK_NUMPAD2"|"VK_LWIN"|"VK_ADD"|"VK_OEM_102"|"VK_LAUNCH_MEDIA_SELECT"|"VK_MENU"|"VK_XBUTTON1"|"7"|"VK_LCONTROL"|"VK_ZOOM"|"VK_NUMPAD4"|"VK_RIGHT"|"VK_OEM_ENLW"|"VK_INSERT"|"VK_OEM_BACKTAB"|"VK_DECIMAL"|"VK_PAUSE"|"VK_F24"|"VK_NUMPAD7"|"VK_NUMPAD6"|"VK_BROWSER_REFRESH"|"VK_PROCESSKEY"|"VK_CANCEL"|"VK_F4"|"VK_NUMPAD1"|"I"|"VK_OEM_7"|"VK_F9"|"VK_PRIOR"|"VK_LBUTTON"|"VK_MEDIA_PREV_TRACK"|"VK_OEM_5"|"VK_OEM_FJ_MASSHOU"|"C"|"Y"|"VK_OEM_8"|"G"|"VK_ICO_CLEAR"|"VK_LMENU"|"Z"|"X"|"VK_OEM_AX"|"VK_OEM_FINISH"|"VK_NUMLOCK"|"VK_F7"|"VK_F16"|"VK_NUMPAD0"|"8"|"VK_F21"|"VK_TAB"|"1"|"VK_SPACE"|"VK_ICO_HELP"|"VK_F3"|"U"|"VK_MBUTTON"|"VK_OEM_RESET"|"VK_EXECUTE"|"4"|"VK_SNAPSHOT"|"3"|"VK_OEM_PA3"|"VK_BROWSER_BACK"|"5"|"VK_OEM_6"|"6"|"VK_F19"|"VK_ABNT_C1"|"VK_OEM_COMMA"|"VK_OEM_WSCTRL"|"9"|"VK_OEM_FJ_LOYA"|"VK_ABNT_C2"|"VK_OEM_3"|"VK_BROWSER_STOP"|"VK_PRINT"|"W"|"VK_RCONTROL"|"VK_APPS"|"VK_XBUTTON2"|"VK_OEM_PLUS"|"VK_NUMPAD9"|"VK_MULTIPLY"|"VK_F8"|"VK_RWIN"|"VK_JUNJA"|"VK_SCROLL"|"VK_RMENU"|"VK_OEM_FJ_JISHO"|"VK_BROWSER_SEARCH"|"O"|"VK_LEFT"|"VK_F12"|"VK_UP"|"VK_ESCAPE"|"E"|"VK_CONVERT"|"VK_F18"|"VK_F20"|"VK_KANJI"|"VK_NUMPAD3"|"VK_NUMPAD5"|"VK_MODECHANGE"|"VK_F15"|"VK_SUBTRACT"|"VK_MEDIA_NEXT_TRACK"|"VK_NONCONVERT"|"VK_SEPARATOR"|"VK_OEM_1"|"VK_BROWSER_FAVORITES"|"VK_BROWSER_FORWARD"|"VK_OEM_4"|"N"|"VK_VOLUME_DOWN"|"VK_MEDIA_PLAY_PAUSE"|"VK_F10"|"VK_F6"|"VK_LAUNCH_APP1"|"VK_LAUNCH_APP2"|"VK_F2"|"VK_HELP"|"VK_OEM_2"|"VK_VOLUME_UP"|"VK_F13"|"VK_FINAL"|"P"|"D"|"A"|"VK_PACKET"|"VK_ACCEPT"|"B"|"VK_OEM_PA2"|"VK_KANA"|"VK_OEM_JUMP"|"VK_F22"|"VK_HOME"|"VK_EREOF"|"VK_F17"|"VK_BROWSER_HOME"|"VK_DELETE"|"VK_BACK"|"VK_OEM_PERIOD"|"VK_CONTROL"|"Q"|"VK_OEM_MINUS"|"VK_ATTN"|"L"|"M"|"VK_PLAY"|"VK_F23"|"VK_RETURN"|"VK_CRSEL"|"VK_OEM_ATTN"|"VK_RBUTTON"|"VK_SLEEP"|"R"|"VK_OEM_CUSEL"|"VK_F14"|"0"|"VK_EXSEL"|"VK_OEM_COPY"|"VK_CLEAR"|"VK_F11"|"VK_NUMPAD8"|"VK_F1"|"VK_F5"|"VK_DOWN"|"V"|"VK_MEDIA_STOP"|"T"|"VK_NEXT"|"VK_SHIFT"
---@alias ui_alignment "all"|"bottom"|"top"|"right"|"left"
---@alias ui_cursor "arrow"|"cross"|"working"|"hand"|"help"|"ibeam"|"forbidden"|"cardinal"|"horizontal"|"vertical"|"leftdiagonal"|"rightdiagonal"|"up"|"wait"|"none"

---@type ui_alignment
--- ***READ/WRITE***
---
--- Get or set the Window alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
--- This property uses a string to specify the Window alignment :
--- - "all" : the Window will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Window will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Window will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Window will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Window will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/ui/Window-align.html
Window.align = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Window's ability to be used as the target of a drag-and-drop operation
---
--- https://www.luart.org/doc/ui/Window-allowdrop.html
Window.allowdrop = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Window background color.
---
--- https://www.luart.org/doc/ui/Window-bgcolor.html
Window.bgcolor = {}


---@type table
--- ***READONLY***
---
--- Get a list of the Window's widgets, as a table. Each items in the list is a widget who's parent is the current window.
---
--- https://www.luart.org/doc/ui/Window-childs.html
Window.childs = {}




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
--- https://www.luart.org/doc/ui/Window-cursor.html
Window.cursor = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window ability to respond to mouse, keyboard and any other events. When set to false, disable the Window (the user will not be able to interact with it), and window's events won't be fired anymore.
---
--- https://www.luart.org/doc/ui/Window-enabled.html
Window.enabled = {}




---@type string|File
--- ***READ/WRITE***
---
--- Get the window font, a string value that represent the font name.
---
--- To set the Window.font property, you can assign a string that represent either a font name of an installed system font, or a font file (*.ttf, *.fon...). A File can also be provided, representing a font file.
---
--- Note that only the font family is changed. The font style and font size are not affected (see the Window.fontstyle and the Window.fontsize properties).
---
---  - By changing the font of the window, you also change the font of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Window-font.html
Window.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the window font size, a number that represent the font size in pixels.
--- - By changing the font style of the window, you also change the font style of any newly created child controls.
---
--- https://www.luart.org/doc/ui/Window-fontsize.html
Window.fontsize = {}


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
--- https://www.luart.org/doc/ui/Window-fontstyle.html
Window.fontstyle = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Window fullscreen mode. When set to true, the Window is resized to fill the entire screen, and the title bar is hidden.
---
--- https://www.luart.org/doc/ui/Window-fullscreen.html
Window.fullscreen = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Window's height. The height starts from 0 (top side of the Window) and increase to the bottom direction.
--- - The height property represent the height of the client area of the window, excluding the title bar.
---
--- https://www.luart.org/doc/ui/Window-height.html
Window.height = {}


---@type Menu
--- ***READ/WRITE***
---
--- Get or set the main  Menu of the Window.
--- - Assigning the nil value to this property will remove the main menu from the window
---
--- https://www.luart.org/doc/ui/Window-menu.html
Window.menu = {}

---@type monitor_property
--- ***READONLY***
---
--- Retrieves the characteristics of the monitor on which the window is located, as a table containing the following fields :
--- - "name" : a string representing the display name
--- - "width" : the monitor physical width as a number
--- - "height" : the monitor physical height as a number
--- - "primary" : a boolean indicating if the monitor is the primary display
---
--- https://www.luart.org/doc/ui/Window-monitor.html
Window.monitor = {}


---@type Window
--- ***READONLY***
---
--- Get the parent  Window if it exists, or nil otherwise.
---
--- https://www.luart.org/doc/ui/Window-parent.html
Window.parent = {}


---@type string
--- ***READ/WRITE***
---
--- Get or set the Window title as a string.
---
--- https://www.luart.org/doc/ui/Window-title.html
Window.title = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Window capability to always stay over other windows, a true value means that the window will always stay at the top position.
---
--- https://www.luart.org/doc/ui/Window-topmost.html
Window.topmost = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the window's transparency intensity, a number value from 0 (full transparency) to 255 (full opacity, the default value).
--- - The window.transprency might affect correct rendering of some widgets, use it wisely.
---
--- https://www.luart.org/doc/ui/Window-transparency.html
Window.transparency = {}


---@type string
--- ***READ/WRITE***
---
--- Get the window tray icon tooltip, a string value.
--- - This event is fired only if a tray icon has been previously loaded with Window.loadtrayicon().
---
--- https://www.luart.org/doc/ui/Window-traytooltip.html
Window.traytooltip = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the window visibility on screen, a true value means that the window is shown, a false value means that the window is hidden.
--- - The window.visible property is also affected by the Window:show() and Window:hide() methods.
---
--- https://www.luart.org/doc/ui/Window-visible.html
Window.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Window's width. The width starts from 0 (left side of the Window) and increase to the right direction.
--- - The width property represent the width of the client area of the window, excluding the left and right borders
---
--- https://www.luart.org/doc/ui/Window-width.html
Window.width = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Window horizontal position. The horizontal position start from 0 (left side of the Desktop) and increase to the right (right side of the Desktop).
---
--- https://www.luart.org/doc/ui/Window-x.html
Window.x = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Window vertical position. The vertical position start from 0 (top side of the Desktop) and increase to the bottom side of the Desktop.
---
---  https://www.luart.org/doc/ui/Window-y.html
Window.y = {}




--- Centers the Window on the parent widget.
---
--- https://www.luart.org/doc/ui/Window-center.html
function Window:center() end

--- Hide and deactivate the Window (events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Window-hide.html
function Window:hide() end

--- Loads the window icon, displayed at the top left corner and on the taskbar.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the Window.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the Window icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/Window-loadicon.html
function Window:loadicon(path, index) end

--- Loads the window's tray icon, displayed in the notification area section of the taskbar.
--- @param path? string|Widget|Directory|File|Buffer Represent any of the following possible icon locations :
--- - A string which represents the path to an ".ico" icon file, or gets the icon associated with the provided file/directory.
--- - A Widget object, whose icon will be used by the Window.
--- - A  Directory or  File object, representing an ".ico" file, or gets the icon associated with the provided file/directory.
--- - A  Buffer object, whose binary content will represent the icon.
---@param index? number The icon index, an optional number starting from 1, that represent the icon to select.
---
--- When no argument or a nil path value is provided, the Window icon will be removed.
--- @return boolean @The method return a boolean value, indicating wether the operation succeeded or not.
---
--- https://www.luart.org/doc/ui/Window-loadtrayicon.html
function Window:loadtrayicon(path, index) end

--- Maximize and activate the Window to the entire desktop.
--- - Fixed Windows cannot be resized, minimized or maximized by the user. However it can still be done programmatically
---
--- https://www.luart.org/doc/ui/Window-maximize.html
function Window:maximize() end

--- Minimize the Window to the taskbar(events can no longer be fired).
---
--- https://www.luart.org/doc/ui/Window-minimize.html
function Window:minimize() end

--- Send a Windows notification.
--- @param title string A string representing the title of the notification
--- @param msg string A string representing the notification message (its length should not exceed 128 characters).
--- @param iconstyle? "window"|"none"|"info"|"warning"|"error" A string representing the kind of icon that should be used :
--- - "window" :The notification will use the current Window icon (the default).
--- - "none" :No icon will be displayed.
--- - "info" :The notification will display an information icon.
--- - "warning" :The notification will display a warning icon.
--- - "error" :The notification will display an error icon.
---
--- @return boolean @The method return a boolean value, indicating wether the notification sending succeeded or not.
---
--- https://www.luart.org/doc/ui/Window-notify.html
function Window:notify(title, msg, iconstyle) end

--- Shows a popup menu at the current window mouse position.
--- @param menu Menu A  Menu object to be displayed.
---
--- https://www.luart.org/doc/ui/Window-popup.html
function Window:popup(menu) end

--- Restore the Window size and position, after the Window has been maximized or minimized.
---
--- https://www.luart.org/doc/ui/Window-restore.html
function Window:restore() end

--- Sets a new keyboard shortcut for the window.
--- @param key string A one character string, which represents the key that will throw the shortcut's provided function.
--- @param ctrl? boolean An optional boolean value, indicating if the CONTROL key must be pressed to fire the shortcut.
--- @param shift? boolean An optional boolean value, indicating if the SHIFT key must be pressed to fire the shortcut.
--- @param alt? boolean An optional boolean value, indicating if the ALT key must be pressed to fire the shortcut.
---
--- https://www.luart.org/doc/ui/Window-shortcut.html
function Window:shortcut(key, ctrl, shift, alt) end

--- Show and activate the Window (events can now be fired).
---
--- https://www.luart.org/doc/ui/Window-show.html
function Window:show() end

--- Show and activate a child Window. The parent widget is disabled and can not be used until the user closes the child Window.
--- @param child Window The  Window object that will be shown.
---
--- https://www.luart.org/doc/ui/Window-showmodal.html
function Window:showmodal(child) end

--- Initiate a drag and move operation on the Window.
---
--- https://www.luart.org/doc/ui/Window-startmoving.html
function Window:startmoving() end

--- @param msg string One ore more optional strings, which represents messages to be displayed in the status bar. Each message is displayed in a part of the status bar.
--- When called without arguments, the Window status bar is hidden.
--- - Each argument is converted to a string if needed, following the same rules as the standard Lua tostring() function.
--- @param ... string
---
--- https://www.luart.org/doc/ui/Window-status.html
function Window:status(msg, ...) end

--- Puts the Window behind all other Windows, or behind the specified Window.
--- @param window Window The Window below which the current Window will be.
---
--- https://www.luart.org/doc/ui/Window-toback.html
function Window:toback(window) end

--- Brings the current Window in front of all other windows, or in front of the specified window.
--- @param window Window
---
--- https://www.luart.org/doc/ui/Window-tofront.html
function Window:tofront(window) end

--- This event is fired when the user has clicked on the window.
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Window-onClick.html
function Window:onClick(x, y) end

--- This event is fired when the window is about to be closed (when the user has clicked on the window close button).
--- @return boolean @This event returns true if the application actually wants to close the window or false otherwise (and the window will remain open).
---
--- https://www.luart.org/doc/ui/Window-onClose.html
function Window:onClose() end

--- This event is fired when the user has clicked on the window with the right mouse button.
---
--- https://www.luart.org/doc/ui/Window-onContext.html
function Window:onContext() end

--- This event is fired when the Window object has just been created, just after the Window:constructor() call.
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Window-onCreate.html
function Window:onCreate() end

--- This event is fired when the user has dropped the mouse over the Window.
--- @param kind string A string representing the kind of content dropped on the Window.
--- @param content any The content dropped on the Window, the type of which depends on the following table:
--- - "text" -> string
--- - "files" -> table (list of  File and  Directory)
--- - "unkown" -> nil
---
--- https://www.luart.org/doc/ui/Window-onDrop.html
function Window:onDrop(kind, content) end

--- This event is fired when the window is hidden by the user (when clicking on the window close button) or when calling Window:hide() or setting the Window.visible property to false.
---
--- https://www.luart.org/doc/ui/Window-onHide.html
function Window:onHide() end

--- This event is fired when the user moves the mouse pointer over the window.
--- @param x number
--- @param y number
--- @param buttons ui_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/ui/Window-onHover.html
function Window:onHover(x, y, buttons) end

--- This event is fired when a key was pressed.
--- @param key WindowsVirtualKey A string that represent the key name.
--- Key names are defined by the following rules:
--- - For digit keys 0..9, the name is the digit as a string : "0", "1" ...
--- - For alphabetical keys A..Z, the name is the character as a string : "A", "B" ...
--- - Any other key is represented by the Windows virtual key as a string : "VK_SPACE", "VK_RETURN", "VK_SHIFT"...
--- - The full list of Windows virtual keys is available [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
---
--- https://www.luart.org/doc/ui/Window-onKey.html
function Window:onKey(key) end

--- This event is fired when the Window has been maximized, by the user or just after a Window:maximize() call.
---
--- https://www.luart.org/doc/ui/Window-onMaximize.html
function Window:onMaximize() end

--- This event is fired when the Window has been minimized, by the user or just after a Window:minimize() call.
---
--- https://www.luart.org/doc/ui/Window-onMinimize.html
function Window:onMinimize() end

--- This event is fired when the user presses a mouse button while beeing over the Window.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Window-onMouseDown.html
function Window:onMouseDown(button, x, y) end

--- This event is fired when the user releases a mouse button while beeing over the Window.
--- @param button mouse_button
--- @param x number
--- @param y number
---
--- https://www.luart.org/doc/ui/Window-onMouseUp.html
function Window:onMouseUp(button, x, y) end

--- This event is fired when the window position has been changed by the user or by setting the Window.x or Window.y properties.
---
--- https://www.luart.org/doc/ui/Window-onMove.html
function Window:onMove() end

--- This event is fired when the window has been resized by the user or by setting the Window.width or Window.height properties.
---
--- https://www.luart.org/doc/ui/Window-onResize.html
function Window:onResize() end

--- This event is fired when the Window has been restored, by the user or just after a Window:restore() call.
--- - This event is particularly interesting when you want to initialize its properties.
---
--- https://www.luart.org/doc/ui/Window-onRestore.html
function Window:onRestore() end

--- This event is fired when the window is shown (with a call to Window:show() or setting the Window.visible property to true).
---
--- https://www.luart.org/doc/ui/Window-onShow.html
function Window:onShow() end

--- This event is fired when Windows theme has changed.
--- @param isDark boolean A boolean value that indicates if the new theme is "dark" or not.
---
--- https://www.luart.org/doc/ui/Window-onThemeChange.html
function Window:onThemeChange(isDark) end

--- This event is fired when the user has clicked on the notification icon of the window, in the tray section of the taskbar
---
--- https://www.luart.org/doc/ui/Window-onTrayClick.html
function Window:onTrayClick() end

--- This event is fired when the user right-click on the notification icon of the window, in the tray section of the taskbar
---
--- https://www.luart.org/doc/ui/Window-onTrayContext.html
function Window:onTrayContext() end

--- This event is fired when the user has double-clicked on the notification icon of the window, in the tray section of the taskbar
---
--- https://www.luart.org/doc/ui/Window-onTrayDoubleClick.html
function Window:onTrayDoubleClick() end

--- This event is fired when the mouse hovers the notification icon of the window, in the tray section of the taskbar
---
--- https://www.luart.org/doc/ui/Window-onTrayHover.html
function Window:onTrayHover() end
