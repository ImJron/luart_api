---@class Console
Console = {}
--- @alias console_color "black"| "blue"| "green"| "cyan"| "red"| "purple"| "yellow"| "white"| "gray"| "lightblue"| "lightgreen"| "lightcyan"| "lightred"| "lightmagenta"| "lightyellow"| "brightwhite"

---@type console_color
--- ***READ/WRITE***
---
--- The console.bgcolor property sets or gets the current console background color. The color is represented by a string.
---
--- https://www.luart.org/doc/console/bgcolor.html
Console.bgcolor = {}

---@type console_color
--- ***READ/WRITE***
---
--- The console.color property sets or gets the current console text color. The color is represented by a string.
---
--- https://www.luart.org/doc/console/color.html
Console.color = {}


---@type boolean
--- ***READ/WRITE***
---
--- The console.cursor property is a readwrite property that indicate if the console cursor is visible or not.
---
--- https://www.luart.org/doc/console/cursor.html
Console.cursor = {}


---@type string
--- ***READ/WRITE***
---
--- The console.echo property sets/gets the current console ECHO mode.
---
--- https://www.luart.org/doc/console/echo.html
Console.echo = {}


---@type string|File
--- ***READ/WRITE***
---
--- Get the current console font, a string value that represent the font name.
--- To set the console.font property, you can assign :
--- - A string that represent either a font name from the system fonts.
--- - A string or a  File that represent a font file (*.ttf, *.fon...)
---
--- https://www.luart.org/doc/console/font.html
Console.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the console font size, a number that represent the font size in pixels.
--- - If you use Windows Terminal as console, please note that it does not permit to change console font size programmatically, so setting this property will have no effect.
---
--- https://www.luart.org/doc/console/fontsize.html
Console.fontsize = {}


---@type boolean
--- ***READ/WRITE***
---
--- Gets/sets the console fullscreen mode.
--- - To go fullscreen, set the property to true
--- - To revert back to normal mode (original size with window frame and title bar) set the property to false.
--- - The user can revert back to normal mode by pressing ALT+RETURN.
---
--- https://www.luart.org/doc/console/fullscreen.html
Console.fullscreen = {}


---@type number
--- ***READONLY***
---
--- The console.height property gets the current console height in character. That value depends on the current console window size.
---
--- https://www.luart.org/doc/console/height.html
Console.height = {}


---@type boolean
--- ***READONLY***
---
--- The console.keyhit property checks if a key has been pressed, returning true or false otherwise.
---
--- https://www.luart.org/doc/console/keyhit.html
Console.keyhit = {}


---@type File
--- ***READ/WRITE***
---
--- The console.stderr property gets the current standard console error output File.
---
--- https://www.luart.org/doc/console/stderr.html
Console.stderr = {}


---@type File
--- ***READ/WRITE***
---
--- The console.stdin property gets the current standard console input File.
---
--- https://www.luart.org/doc/console/stdin.html
Console.stdin = {}


---@type File
--- ***READ/WRITE***
---
--- The console.stdout property gets the current standard console output  File.
---
--- https://www.luart.org/doc/console/stdout.html
Console.stdout = {}


---@type string
--- ***READ/WRITE***
---
--- The console.title gets/sets the console window title.
---
--- https://www.luart.org/doc/console/title.html
Console.title = {}


---@type boolean
--- ***READ/WRITE***
---
--- Checks if the console window is visible.
---
--- https://www.luart.org/doc/console/visible.html
Console.visible = {}


---@type number
--- ***READONLY***
---
--- The console.width property gets the current console width in character. That value depends on the current console window size.
---
--- https://www.luart.org/doc/console/width.html
Console.width = {}


---@type number
--- ***READ/WRITE***
---
--- The console.x property gets or sets the current cursor column position.
---
--- https://www.luart.org/doc/console/x.html
Console.x = {}


---@type number
--- ***READ/WRITE***
---
--- The console.y property gets or sets the current cursor line position.
---
--- https://www.luart.org/doc/console/y.html
Console.y = {}


--- Clears the console screen (equivalent of the famous DOS command cls).
--- @param color? console_color An optional string indicating the color to clear the console screen with. See console.bgcolor property to list the possible colors. If the color is not provided, use the current background color.
--- Once the console is cleared, the function revert back to the previous background color.
---
--- https://www.luart.org/doc/console/clear.html
function Console.clear(color) end

--- Hides the console window.
---
--- https://www.luart.org/doc/console/hide.html
function Console.hide() end

--- Swaps the text color and the background color of the console until another call to this function.
---
--- https://www.luart.org/doc/console/inverse.html
function Console.inverse() end

--- Position the console cursor to the specified location on the console. The position 1,1 represent the upper left corner in the console.
--- @param column number A number representing the horizontal position of the cursor from 1 to console.width
---@param line number A number representing the vertical position of the cursor from 1 to console.height
---
--- https://www.luart.org/doc/console/locate.html
function Console.locate(column, line) end

--- Reads from the console using console.stdin. The same result can be obtained using console.stdin:read()
--- @param length? number An optional number representing how much characters must be read from the console, defaulting to 1
--- @return string @Returns the characters in a string
---
--- https://www.luart.org/doc/console/read.html
function Console.read(length) end

--- Reads a key from the console and returns a corresponding character if possible. That function can read special keys (Function keys, arrows...).
--- @return string|boolean @Returns two values :
--- - A string corresponding to the pressed character (for example "A" if SHIFT+A have been pressed).
--- - A boolean value that indicates if the key pressed is special (for example, UP arrow key returns the string "H" and true).
---
--- https://www.luart.org/doc/console/readchar.html
function Console.readchar() end

---@alias mouse_button "left"|"middle"|"right"
--- Wait for the mouse to move or click inside the console.
---
---Returns three values :
--- - A number corresponding to the column position in the console when the mouse event occured.
--- - A number corresponding to the line position in the console when the mouse event occured.
--- - A string value that indicates the mouse button that was pressed or nil if the mouse only moved (without a click). Possibles values are "left", "middle" or "right"
--- @return number x
--- @return number y
--- @return mouse_button button
---
--- https://www.luart.org/doc/console/readmouse.html
function Console.readmouse() end

--- Resets the console to the default text and background colors. That function is always called before the program terminates.
---
--- https://www.luart.org/doc/console/reset.html
function Console.reset() end

--- Shows the console window.
---
--- https://www.luart.org/doc/console/show.html
function Console.show() end

--- Writes to the console using console.stdout. Contrary to console.stdout:write(), console.write() can write more than one string, each string is separated with a space character.
--- @param str1 string The strings to write to the console, separated by commas. If the argument is not a string, the function converts it internally using the tostring function.
--- - The function does not return to next line after printing the characters. If you want to add a newline character, use console.writeln() instead.
---
--- https://www.luart.org/doc/console/write.html
function Console.write(str1) end

--- Writes colored output to the console using console.stdout. The function change the color of the text (not its background). Then the function set back the text color to the previous one. Console.write() can write more than one string, each string is separated with a space character.
--- @param color console_color
---
--- https://www.luart.org/doc/console/writecolor.html
function Console.writecolor(color) end

--- Writes to the console using console.stdout, adding a last newline character. Contrary to console.stdout:writeln(), console.writeln() can write more than one string, each string is separated with a space character.
--- @param str1? string Optional strings to write to the console, separated by commas. If the argument is not a string, the function converts it internally using the tostring function.
--- Calling the function without any argument writes "\n"
---
--- https://www.luart.org/doc/console/writeln.html
function Console.writeln(str1) end
