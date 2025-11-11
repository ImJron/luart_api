--- @class ui
local ui = {}

---@type number
--- ***READONLY***
---
--- Get the current Windows DPI scaling factor as a number
---
--- https://www.luart.org/doc/ui/dpi.html
ui.dpi = {}


---@type Window
--- ***READ/WRITE***
---
--- Get or set the main Window, a  Window object.
--- The main Window, when closed by the user, will stop the ui Task (event won't be processed anymore).
--- - The first created main Window is the main Window by default.
---
--- https://www.luart.org/doc/ui/mainWindow.html
ui.mainWindow = {}


--- @class monitor_property
--- @field name string
--- @field width number
--- @field height number
--- @field primary boolean

---@type monitor_property[]
--- ***READONLY***
---
--- Retrieves the characteristics of all the active display monitors, as an integer indexed table.
--- Each entry value is a table containing the following fields :
--- - "name" : a string representing the display name
--- - "width" : the monitor physical width as a number
--- - "height" : the monitor physical height as a number
--- - "primary" : a boolean indicating if the monitor is the primary display
---
--- https://www.luart.org/doc/ui/monitors.html
ui.monitors = {}



---@type boolean
--- ***READ/WRITE***
---
--- Get or set the right to left application layout, as a boolean value.
--- This setting must be applied before any window or widget creation, as RTL layout won't be applied for the Windows created before.
---
--- https://www.luart.org/doc/ui/rtl.html
ui.rtl = {}


---@type "dark"|"light"
--- ***READONLY***
---
--- Get the current Windows color theme, as a string value :
--- - "dark" : current Windows color theme is dark
--- - "light" : current Windows color theme is light
---
--- https://www.luart.org/doc/ui/systheme.html
ui.systheme = {}



---@type Task
--- ***READONLY***
---
--- Get the current ui Task, that process ui events in the background. The ui Task is terminated once the ui.mainWindow is closed, or when using Task:cancel() programmaticaly
---
--- https://www.luart.org/doc/ui/task.html
ui.task = {}



---@type "dark"|"light"
--- ***READ/WRITE***
---
--- Get or set the current application color theme, as a string value :
--- - "dark" : uses the Windows dark theme for the application
--- - "light" : uses the Windows light theme for the application
---
--- https://www.luart.org/doc/ui/theme.html
ui.theme = {}


---@type Window[]
--- ***READONLY***
---
--- Get a table, representing a list of all created  Window objects, even if not visible.
---
--- https://www.luart.org/doc/ui/windows.html
ui.windows = {}



--- Displays a dialog box for the user to choose a color.
--- @param color? number
--- - The dialog box only uses the current Windows system theme
--- @return number color This function returns a number representing a RGB color (one byte per primary color), or nil if no color have been choosen.
--- A RGB color can be represented as an hexadecimal number : 0xRRGGBB, RR meaning a 8bit hexadecimal red value and so on.
---
--- https://www.luart.org/doc/ui/colordialog.html
function ui.colordialog(color) end

--- Displays a confirmation message dialog box with a question-mark icon, and waits for the user to click the Yes, No or Cancel button.
--- @param msg string A string, or any value converted to a string, that indicates the message to display to the user.
--- @param title? string An optional string that indicates the title of the message dialog box (defaulting to "Confirmation")
--- @return "yes"|"no"|"cancel" @This function returns the string:
--- - "yes" once the user has pressed the Yes button.
--- - "no" once the user has pressed the No button.
--- - "cancel" once the user has pressed the Cancel button or after having closed the dialog.
---
--- https://www.luart.org/doc/ui/confirm.html
function ui.confirm(msg, title) end

--- Displays a Windows dialog for the user to choose a directory.
--- @param title? string An optional string that provides a dialog title.
--- @param path? Directory|string An optional  Directory or string that indicates the folder selected when the dialog shows.
--- @return Directory|string @The function returns the selected folder as a  Directory object or nil if the user selected none.
---
--- https://www.luart.org/doc/ui/dirdialog.html
function ui.dirdialog(title, path) end

--- Starts a drag and drop operation.
--- The function does not return until the user cancels the operation or drops the content.
--- @param content string|table Contains the content that will be dragged and dropped, among the following possible values :
--- - A string : to drag and drop text data
--- - A table : to drag and drop a list of files and directories (using paths as string,  File or  Directory).
--- @return boolean @This function returns a boolean value indicating if the drag and drop operation succeeded (ie the user dropped the content).
---
--- https://www.luart.org/doc/ui/drag.html
function ui.drag(content) end

--- Displays an error message dialog box with a red-cross icon, and waits for the user to click the OK button.
--- @param msg string|any A string, or any value converted to a string, that indicates the error message to display to the user.
--- @param title? string An optional string that indicates the title of the message dialog box (defaulting to "Error")
--- @return string @This function returns the string "ok" once the user has pressed the OK button or after having closed the dialog.
---
--- https://www.luart.org/doc/ui/error.html
function ui.error(msg, title) end

--- @class ui_font_style
--- @field italic boolean
--- @field underline boolean
--- @field striked boolean
--- @field bold boolean
--- @field thin boolean
--- @field heavy boolean


--- Displays a dialog box for the user to choose a Windows system font.
--- @param widget? any An optional widget whose font will initialize dialog's fields. If an  Edit widget is provided, the current selection font is used to initialize dialog's fields.
--- @param color? number An optional number representing a RGB color value, to initialize the dialog color field.
--- - The dialog box only uses the current Windows system theme
--- @return string font_name The font name as a string.
--- @return number font_number The font size as a number.
--- @return ui_font_style font_style The font style as a table with boolean fields "italic", "underline", "striked", "bold", "thin", "heavy".
--- @return number font_color The font color as a number.
---
--- If the user clicked on the Cancel button, this function returns nil.
---
--- https://www.luart.org/doc/ui/fontdialog.html
function ui.fontdialog(widget, color) end

--- Displays an information message dialog box with an icon consisting of a lowercase letter i in a circle, and waits for the user to click the OK button.
--- @param msg string A string, or any value converted to a string, that indicates the message to display to the user.
--- @param title? string An optional string that indicates the title of the message dialog box (defaulting to "Information")
--- @return string @This function returns the string "ok" once the user has pressed the OK button or after having closed the dialog.
---
--- https://www.luart.org/doc/ui/info.html
function ui.info(msg, title) end

--- Get the current mouse position on the screen.
--- @return number x
--- @return number y
---
--- This function returns two numbers : the horizontal position and vertical position of the mouse.
---
--- https://www.luart.org/doc/ui/mousepos.html
function ui.mousepos() end

--- Displays a message dialog box, and waits for the user to click the OK button.
--- @param msg string A string that indicates the message to display to the user.
--- @param title? string An optional string that indicates the title of the message dialog box (defaulting to "Message")
--- @return string @This function returns the string "ok" once the user has pressed the OK button or after having closed the dialog.
---
--- https://www.luart.org/doc/ui/msg.html
function ui.msg(msg, title) end

--- Displays a dialog box for the user to choose a file or set of files to be opened. The file(s) must exist physically on the drive.
--- @param title? string An optional string that indicates the title of the dialog box (use the default system title if not specified).
--- @param allow_multiple_selection? boolean An optional boolean value that indicates if the dialog allow multiple files selection or not.
--- @param filters? string An optional string that indicates filters. A filter is used to display only files with a specified pattern. If omitted, the dialog shows all files.
--- A filter is composed of a and a field, each separated by the character "|".For example, the string "All files (*.*)|*.*|Text files (*.txt)|*.txt" defines 2 filters :
--- - A filter named "All files (*.*)" that correspond to the search pattern "*.*"
--- - A filter named "Text files (*.txt)" that correspond to the search pattern "*.txt"
---
--- @return File @The function returns the selected file(s) as  File object(s) or nil if no files have been choosen.
---
--- https://www.luart.org/doc/ui/opendialog.html
function ui.opendialog(title, allow_multiple_selection, filters) end

--- Removes a widget from its parent.
--- @param widget any The widget to be removed.
---
--- https://www.luart.org/doc/ui/remove.html
function ui.remove(widget) end

--- Run a new  Task that updates the user interface asynchronously.
--- @deprecated
--- @param main_window Window A Window object instance that represents the main Window.
--- - The main Window will be automatically shown and will determine the end of the Task once it has been closed.
--- @return Task @This function returns the  Task that updates the user interface asynchronously.
---
--- https://www.luart.org/doc/ui/run.html
function ui.run(main_window) end

--- Displays a dialog box for the user to specify the drive, directory, and name of a file to save.
--- @param title? string An optional string that indicates the title of the dialog box (use the default system title if not specified).
--- @param allow_multiple_selection? boolean An optional boolean value that indicates if the dialog allow multiple files selection or not.
--- @param filters? string An optional string that indicates filters. A filter is used to display only files with a specified pattern. If omitted, the dialog shows all files.
--- A filter is composed of a and a field, each separated by the character "|".For example, the string "All files (*.*)|*.*|Text files (*.txt)|*.txt" defines 2 filters :
--- - A filter named "All files (*.*)" that correspond to the search pattern "*.*"
--- - A filter named "Text files (*.txt)" that correspond to the search pattern "*.txt"
---
--- @return File @The function returns the selected file(s) as  File object(s) or nil if no files have been choosen.
---
--- https://www.luart.org/doc/ui/savedialog.html
function ui.savedialog(title, allow_multiple_selection, filters) end

--- Displays a shell dialog box to choose a folder.
--- @param prompt? string An optional string that gives the user indication for the selection.
--- @return Directory @The function returns the selected folder as a  Directory object or nil if the user selected none.
---
--- https://www.luart.org/doc/ui/selectdir.html
function ui.selectdir(prompt) end

--- Update the user interface, process Windows messages and call widgets events.
---
--- https://www.luart.org/doc/ui/update.html
function ui.update() end

--- Displays a warning message dialog box with an exclamation-point icon, and waits for the user to click the OK button.
--- @param msg string A string, or any value converted to a string, that indicates the message to display to the user.
--- @param title? string An optional string that indicates the title of the message dialog box (defaulting to "Warning")
--- @return string @This function returns the string "ok" once the user has pressed the OK button or after having closed the dialog.
---
--- https://www.luart.org/doc/ui/warn.html
function ui.warn(msg, title) end

--- The Button constructor returns a Button value representing a push button on the parent object.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Button's text.
--- @param x? number An optional number that indicates the Button horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Button vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Button width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Button height in pixels, autosized to fit text content if omitted.
--- @return Button
---
--- https://www.luart.org/doc/ui/Button-constructor.html
function ui.Button(parent, caption, x, y, width, height) end

--- The Calendar constructor returns a Calendar value representing a month calendar to choose a date.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param x? number An optional number that indicates the Calendar horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Calendar vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Calendar width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Calendar height in pixels, autosized to fit text content if omitted.
--- @return Calendar
---
---  https://www.luart.org/doc/ui/Calendar-constructor.html
function ui.Calendar(parent, x, y, width, height) end

--- The Canvas constructor returns a Canvas instance representing a drawing surface.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param x? number An optional number that indicates the Canvas horizontal position, in pixels.
--- @param y? number An optional number that indicates the Canvas vertical position, in pixels.
--- @param width? number An optional number that indicates the Canvas width, in pixels.
--- @param height? number An optional number that indicates the Canvas height, in pixels.
--- @return Canvas
---
--- https://www.luart.org/doc/canvas/Canvas-constructor.html
function ui.Canvas(parent, x, y, width, height) end

--- The Checkbox constructor returns a Checkbox value representing a push checkbox on the parent object.
--- - Selecting one Checkbox will not affect any other, as Checkboxes are non-exclusive
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Checkbox's text.
--- @param x? number An optional number that indicates the Checkbox horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Checkbox vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Checkbox width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Checkbox height in pixels, autosized to fit text content if omitted.
--- @return Checkbox
---
--- https://www.luart.org/doc/ui/Checkbox-constructor.html
function ui.Checkbox(parent, caption, x, y, width, height) end

--- The Combobox constructor returns a Combobox value representing a text box combined with a scrollable list.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param editable? boolean An optional boolean that indicates if the edit field of the combobox can be modified (the default value is true).
--- @param items string[] A table containing a list of strings (each string will be inserted in the list).
--- @param x? number An optional number that indicates the Checkbox horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Checkbox vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Checkbox width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Checkbox height in pixels, autosized to fit text content if omitted.
--- @return Combobox
---
--- https://www.luart.org/doc/ui/Combobox-constructor.html
function ui.Combobox(parent, editable, items, x, y, width, height) end

--- @param parent Window|Groupbox|TabItem|Panel
--- @param text string A string representing the Edit's text content.
--- @param x? number An optional number that indicates the Edit horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Edit vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Edit width in pixels.
--- @param height? number An optional number that indicates the Edit height in pixels.
--- @return Edit
---
--- https://www.luart.org/doc/ui/Edit-constructor.html
function ui.Edit(parent, text, x, y, width, height) end

--- The Entry constructor returns a Entry value representing a static text area on the parent object.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Entry's text.
--- @param x? number An optional number that indicates the Entry horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Entry vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Entry width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Entry height in pixels, autosized to fit text content if omitted.
--- @return Entry
---
--- https://www.luart.org/doc/ui/Entry-constructor.html
function ui.Entry(parent, caption, x, y, width, height) end

--- The Groupbox constructor returns a Groupbox value representing a group of related controls. Whenever another widget is placed within a Groupbox, that groupbox becomes its parent.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Groupbox's text.
--- @param x? number An optional number that indicates the Groupbox horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Groupbox vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Groupbox width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Groupbox height in pixels, autosized to fit text content if omitted.
--- @return Groupbox
---
--- https://www.luart.org/doc/ui/Groupbox-constructor.html
function ui.Groupbox(parent, caption, x, y, width, height) end

--- The Label constructor returns a Label value representing a static text area on the parent object.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Label's text.
--- @param x? number An optional number that indicates the Label horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Label vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Label width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Label height in pixels, autosized to fit text content if omitted.
--- @return Label
---
--- https://www.luart.org/doc/ui/Label-constructor.html
function ui.Label(parent, caption, x, y, width, height) end

--- The List constructor returns a List value representing a scrollable list of items.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param items string[] A table containing a list of strings (each string will be inserted in the list).
--- @param x? number An optional number that indicates the List horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the List vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the List width in pixels
--- @param height? number An optional number that indicates the List height in pixels
--- @return List
---
--- https://www.luart.org/doc/ui/List-constructor.html
function ui.List(parent, items, x, y, width, height) end

--- The Menu constructor returns a Menu value representing a popup or window menu.
--- @return Menu
---
--- https://www.luart.org/doc/ui/Menu-constructor.html
function ui.Menu() end

--- The Panel constructor returns a Panel, a simple surface that can contain other widgets.
--- @param x? number An optional number that indicates the Panel horizontal position, in pixels.
--- @param y? number An optional number that indicates the Panel vertical position, in pixels.
--- @param width? number An optional number that indicates the Panel width, in pixels.
--- @param height? number An optional number that indicates the Panel height, in pixels.
--- @return Panel
---
--- https://www.luart.org/doc/ui/Panel-constructor.html
function ui.Panel(x, y, width, height) end

--- The Picture constructor returns a Picture object representing a static image on the parent object.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param image File|string A  File object or a filename string, representing the image to be loaded.
--- @param x? number An optional number that indicates the Picture horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Picture vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Picture width in pixels, autosized to fit text content if omitted.
--- Defaults to the image width if not provided.
--- @param height? number An optional number that indicates the Picture height in pixels, autosized to fit text content if omitted.
--- Defaults to the image height if not provided.
--- @return Picture
---
--- https://www.luart.org/doc/ui/Picture-constructor.html
function ui.Picture(parent, image, x, y, width, height) end

--- The Progressbar constructor returns a Progressbar instance to indicate the progress of a lengthy operation.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param x? number An optional number that indicates the Progressbar horizontal position, in pixels.
--- @param y? number An optional number that indicates the Progressbar vertical position, in pixels.
--- @param width? number An optional number that indicates the Progressbar width, in pixels.
--- @param height? number An optional number that indicates the Progressbar height, in pixels.
--- @return Progressbar
---
--- https://www.luart.org/doc/ui/Progressbar-constructor.html
function ui.Progressbar(parent, x, y, width, height) end

--- The Radiobutton constructor returns a Radiobutton value representing a push radiobutton on the parent object.
--- - A Radiobutton is always used in groups, grouped by their parent object.
--- - Radiobuttons are exclusive in the same group : selecting one deselects the others.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param caption string A string representing the Radiobutton's text.
--- @param x? number An optional number that indicates the Radiobutton horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Radiobutton vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Radiobutton width in pixels, autosized to fit text content if omitted.
--- @param height? number An optional number that indicates the Radiobutton height in pixels, autosized to fit text content if omitted.
--- @return Radiobutton
---
--- https://www.luart.org/doc/ui/Radiobutton-constructor.html
function ui.Radiobutton(parent, caption, x, y, width, height) end

--- The Tab constructor returns a Tab value representing a notebook widget, which manages multiple views with associated tabs.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param items string[] A table containing a list of strings (each string will be inserted in the Tab).
--- @param x? number An optional number that indicates the Tab horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Tab vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Tab width in pixels
--- @param height? number An optional number that indicates the Tab height in pixels
--- @return Tab
---
--- https://www.luart.org/doc/ui/Tab-constructor.html
function ui.Tab(parent, items, x, y, width, height) end

--- The Tree constructor returns a Tree value representing a scrollable tree of items.
--- @param parent Window|Groupbox|TabItem|Panel
--- @param items string[] A table containing a list of strings (each string will be inserted in the Tree).
--- @param x? number An optional number that indicates the Tree horizontal position, in pixels. Zero means the left border of the parent.
--- @param y? number An optional number that indicates the Tree vertical position, in pixels. Zero means the top border of the parent.
--- @param width? number An optional number that indicates the Tree width in pixels
--- @param height? number An optional number that indicates the Tree height in pixels
--- @return Tree
---
--- https://www.luart.org/doc/ui/Tree-constructor.html
function ui.Tree(parent, items, x, y, width, height) end

--- @alias window_style "dialog"|"fixed"|"float"|"single"|"raw"
--- The Window constructor returns a Window value representing a user interface dialog.
--- - Please note that a created Window will not be shown until its method Window:show() has been called.
--- @param parent? Window An optional  Window, that represent a parent Window or (owner Window) for the new Window, called a child Window. When this field is set, the new Window won't appear on the Windows Taskbar (only the parent Window).
--- @param title string A string representing the Window's title.
--- @param style? window_style A string that describe the Window style :
--- - "dialog" : the default, a resizeable dialog. The user can maximize/minimize the window.
--- - "fixed" : a fixed size dialog.
--- - "float" : a tiny float window.
--- - "single" : a fixed size dialog with system menu (only minimize-able).
--- - "raw" : a fixed size without title bar or borders.
--- @param width? number An optional number that indicates the Window width, in pixels, defaulting to 640.
--- @param height? number An optional number that indicates the Window height, in pixels, defaulting to 480.
--- - The width and height arguments represent the size of the client area of window, excluding borders and title bar.
--- @overload fun(title: string, style?: window_style, width?: number, height?: number): Window
--- @return Window
---
--- https://www.luart.org/doc/ui/Window-constructor.html
function ui.Window(parent, title, style, width, height) end

return ui
