--- The Canvas widget draws shapes, text, and images on a window surface
--- https://www.luart.org/doc/canvas/Canvas.html

--- @class Canvas
--- @overload fun(parent, x?, y?, width?, height?): Canvas The Canvas constructor returns a Canvas instance representing a drawing surface.
---@param parent Window|Groupbox|TabItem An object that will own the Canvas.
---@param x? number An optional number that indicates the Canvas horizontal position, in pixels. Zero means the left border of the parent.
---@param y? number An optional number that indicates the Canvas vertical position, in pixels. Zero means the top border of the parent.
---@param width? number An optional number that indicates the Canvas width in pixels, autosized to fit text content if omitted.
---@param height? number An optional number that indicates the Canvas height in pixels, autosized to fit text content if omitted.
---The Canvas constructor returns a Canvas instance representing a drawing surface.
---
---https://www.luart.org/doc/canvas/Canvas-constructor.html
canvas = {}

---@alias canvas_alignment "all"|"bottom"|"top"|"right"|"left"
---@type canvas_alignment
--- ***READ/WRITE***
---
--- Get or set the Canvas alignment, which position and size will be aligned relative to its parent (alignment persists even if the size of the parent changes).
---
--- - "all" : the Canvas will be aligned along all the parent borders (and will cover the entire parent client area).
--- - "bottom" : the Canvas will be aligned along the bottom border of the parent, preserving its height.
--- - "top" : the Canvas will be aligned along the the top border of the parent, preserving its height.
--- - "right" : the Canvas will be aligned along the right border of the parent, preserving its width.
--- - "left" : the Canvas will be aligned along the left border of the parent, preserving its width.
---
--- https://www.luart.org/doc/canvas/Canvas-align.html
canvas.align = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the Canvas background color. When set, the canvas is cleared with this new color
---
--- https://www.luart.org/doc/canvas/Canvas-bgcolor.html
canvas.bgcolor = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Canvas drawing color.
--- - The color is represented by a number, an RGBA value (one byte per primary color and one byte for alpha channel).
--- - A RGBA color can be represented as an hexadecimal number : 0xRRGGBBAA , RR meaning a 8bit hexadecimal red value, and so on.
---
--- https://www.luart.org/doc/canvas/Canvas-color.html
canvas.color = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Canvas ability to respond to mouse, and any other events. When set to false, disable the Canvas (the user will not be able to interact with it), and Canvas's events won't be fired anymore.
---
--- https://www.luart.org/doc/canvas/Canvas-enabled.html
canvas.enabled = {}

---@type string
--- ***READ/WRITE***
---
--- Get or set the current Canvas font, a string representing a font family name, from the Windows system fonts.
---
--- https://www.luart.org/doc/canvas/Canvas-font.html
canvas.font = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the current Canvas font size, a number, expressed "Device-Independent Pixel" units. A DIP equals 1/96 inch.
---
---https://www.luart.org/doc/canvas/Canvas-fontsize.html
canvas.fontsize = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the current Canvas font stretch. A font's stretch factor refers to how much the font has been stretched when compared to its normal aspect ratio.
--- This property uses an integer value from 1 to 9 to specify the font stretch. Lower values indicate narrower widths, while higher values indicate wider widths
---
--- https://www.luart.org/doc/canvas/Canvas-fontstretch.html
canvas.fontstretch = {}

---@alias fontstyle "normal"|"italic"|"oblique"
---@type fontstyle
--- ***READ/WRITE***
---
--- Get or set the current Canvas font style, a string value, which may be one of the following values :
--- - "normal" : The characters in a normal, or roman, font are upright.
--- - "italic" : The characters in an italic font are truly slanted and appear as they were designed.
--- - "oblique" : The characters in an oblique font are artificially slanted.
---
--- https://www.luart.org/doc/canvas/Canvas-fontstyle.html
canvas.fontstyle = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the current Canvas font size, an integer value between 1 and 999. A smaller value indicates a lighter weight, a larger value indicates a heavier weight.
--
--- https://www.luart.org/doc/canvas/Canvas-fontweight.html
canvas.fontweight = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the height of the Canvas area. The height starts from 0 (top side of the Canvas) and increase to the bottom direction.
---
--- https://www.luart.org/doc/canvas/Canvas-height.html
canvas.height = {}


---@type Object
--- ***READ/WRITE***
---
--- Get the parent object that owns the Canvas.
---
--- https://www.luart.org/doc/canvas/Canvas-parent.html
canvas.parent = {}

---@type boolean
--- ***READ/WRITE***
---
--- Get or set the Canvas visibility on screen, a true value means that the Canvas is shown, a false value means that the Canvas is hidden.
--- - The Canvas.visible property is also affected by the Canvas:show() and Canvas:hide() methods.
---
--- https://www.luart.org/doc/canvas/Canvas-visible.html
canvas.visible = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the Canvas area width. The width starts from 0 (left side of the Canvas) and increases to the right direction.
---
--- https://www.luart.org/doc/canvas/Canvas-width.html
canvas.width = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Canvas horizontal position. The horizontal position start from 0 (left side of the parent widget) and increase to the right (right side of the parent widget).
---
--- https://www.luart.org/doc/canvas/Canvas-x.html
canvas.x = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the Canvas vertical position. The vertical position start from 0 (top side of the parent widget) and increase to the bottom side of the parent widget.
---
--- https://www.luart.org/doc/canvas/Canvas-y.html
canvas.y = {}


---Events---

--- This event is fired when the user has clicked on the Canvas.
--- @param x number The horizontal position of the mouse in the Canvas area.
---@param y number The vertical position of the mouse in the Canvas area.
--- https://www.luart.org/doc/canvas/Canvas-onClick.html
function canvas:onClick(x, y) end

--- This event is fired when the user has clicked on the Canvas with the right mouse button.
--- 
--- https://www.luart.org/doc/canvas/Canvas-onContext.html
function canvas:onContext() end

--- This event is fired when the Canvas object has just been created (just after the Canvas:constructor() call).
--- 
--- https://www.luart.org/doc/canvas/Canvas-onCreate.html
function canvas:onCreate() end

--- This event is fired when the Canvas is hidden (with a call to Canvas:hide() or setting the Canvas.visible property to false).
--- 
--- https://www.luart.org/doc/canvas/Canvas-onHide.html
function canvas:onHide() end

--- @class canvas_buttons
--- @field left boolean
--- @field right boolean
--- @field middle boolean
--- @field control boolean
--- @field shift boolean

--- This event is fired when the user moves the mouse pointer over the Canvas.
--- @param x number
---@param y number
---@param buttons canvas_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/canvas/Canvas-onHover.html
function canvas:onHover(x, y, buttons) end

--- This event is fired when the mouse cursor leaves the Canvas.
--- 
--- https://www.luart.org/doc/canvas/Canvas-onLeave.html
function canvas:onLeave() end

--- This event is fired when the user press a mouse button while being over the Canvas.
---@param x number
---@param y number
---@param buttons canvas_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
--- https://www.luart.org/doc/canvas/Canvas-onMouseDown.html
function canvas:onMouseDown(x, y, buttons) end

---This event is fired when the user releases a mouse button while being over the Canvas.
---@param x number
---@param y number
---@param buttons canvas_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
---
---https://www.luart.org/doc/canvas/Canvas-onMouseUp.html
function canvas:onMouseUp(x, y, buttons) end

--- This event is fired when the user rotates the mouse wheel while being over the Canvas.
--- @param delta number A number that indicates the distance the wheel is rotated, expressed in multiples or divisions of 120.
--- A positive value indicates that the wheel was rotated forward, away from the user, a negative value indicates that the wheel was rotated backward, toward the user.
---@param buttons canvas_buttons A table which fields indicates if mouse buttons or special keys have been pressed during the move :
--- - "left": true if left mouse button is pressed, false otherwise
--- - "right": true if right mouse button is pressed, false otherwise
--- - "middle": true if middle mouse button is pressed, false otherwise
--- - "control": true if the CONTROL key is pressed, false otherwise
--- - "shift": true if the SHIFT mouse button is pressed, false otherwise
--- 
--- https://www.luart.org/doc/canvas/Canvas-onMouseWheel.html
function canvas:onMouseWheel(delta, buttons) end

--- This event is fired continuously to redraw the Canvas. You can put all your drawing operations inside this event handler function.
--- 
--- https://www.luart.org/doc/canvas/Canvas-onPaint.html
function canvas:onPaint() end

--- This event is fired when the Canvas is shown (with a call to Canvas:show() or setting the Canvas.visible property to true).
--- 
--- https://www.luart.org/doc/canvas/Canvas-onShow.html
function canvas:onShow() end

---Methods---

---Starts drawing operations on the Canvas.
---
---https://www.luart.org/doc/canvas/Canvas-begin.html
function canvas:begin() end

--- Captures the current canvas content and saves it as a file on the disk.
--- @param file File A  File or a filename as a string.
--- The image format is determined by the file extension, which may be one of the following values : .bmp, .png, .jpg|.jpeg, .bmp, .tiff|.tif and .gif.
---
--- https://www.luart.org/doc/canvas/Canvas-capture.html
function canvas:capture(file) end

--- Centers the Canvas on the parent widget.
---
--- https://www.luart.org/doc/canvas/Canvas-center.html
function canvas:center() end

--- Draws a circle on the Canvas
--- @param x number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param radius number A number representing the radius of the circle
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the circle is drawn using the current Canvas.color
---@param width? any An optional number value representing the circle border thickness, defaulting to 1
--- https://www.luart.org/doc/canvas/Canvas-circle.html
function canvas:circle(x, y, radius, brush, width) end

--- Draws a filled circle on the Canvas
--- @param x number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param radius number A number representing the radius of the circle
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the circle is drawn using the current Canvas.color
--- https://www.luart.org/doc/canvas/Canvas-fillcircle.html
function canvas:fillcircle(x, y, radius, brush) end

--- Clears the Canvas drawing surface with the current Canvas.bgcolor or with the provided RGBA color.
--- @param color? number An optional interger representing a RGBA color value to clear and fill the Canvas with, or the current Canvas background color if omitted.
--- https://www.luart.org/doc/canvas/Canvas-clear.html
function canvas:clear(color) end

--- Draws an ellipse on the Canvas
--- @param x number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param radiusx number A number representing the x-radius of the ellipse
---@param radiusy number A number representing the y-radius of the ellipse
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the circle is drawn using the current Canvas.color
---@param width? any An optional number value representing the circle border thickness, defaulting to 1
---https://www.luart.org/doc/canvas/Canvas-ellipse.html
function canvas:ellipse(x, y, radiusx, radiusy, brush, width) end

--- Draws a filled ellipse on the Canvas
--- @param x number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param radiusx number A number representing the x-radius of the ellipse
---@param radiusy number A number representing the y-radius of the ellipse
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the circle is drawn using the current Canvas.color
---
--- https://www.luart.org/doc/canvas/Canvas-fillellipse.html
function canvas:fillellipse(x, y, radiusx, radiusy, brush) end

--- Draws a rectangle on the Canvas
--- @param x0 number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y0 number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param x1 number A number representing the x coordinate of the lower right corner
---@param y1 number A number representing the y coordinate of the lower right corner
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the shape is drawn using the current Canvas.color
---@param width? any An optional number value representing the shape's border thickness, defaulting to 1
--- https://www.luart.org/doc/canvas/Canvas-rect.html
function canvas:rect(x0, y0, x1, y1, brush, width) end

--- Draws a filled rectangle on the Canvas
--- @param x0 number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y0 number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param x1 number A number representing the x coordinate of the lower right corner
---@param y1 number A number representing the y coordinate of the lower right corner
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the shape is drawn using the current Canvas.color
--- https://www.luart.org/doc/canvas/Canvas-fillrect.html
function canvas:fillrect(x0, y0, x1, y1, brush) end

--- Draws a rounded rectangle on the Canvas
--- @param x0 number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y0 number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param x1 number A number representing the x coordinate of the lower right corner
---@param y1 number A number representing the y coordinate of the lower right corner
---@param radiusx number A number representing the x-radius of the shape
---@param radiusy number A number representing the y-radius of the shape
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the shape is drawn using the current Canvas.color
---@param width? any An optional number value representing the shape's border thickness, defaulting to 1
--- https://www.luart.org/doc/canvas/Canvas-roundrect.html
function canvas:roundrect(x0, y0, x1, y1, radiusx, radiusy, brush, width) end

--- Draws a rounded rectangle on the Canvas
--- @param x0 number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y0 number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param x1 number A number representing the x coordinate of the lower right corner
---@param y1 number A number representing the y coordinate of the lower right corner
---@param radiusx number A number representing the x-radius of the shape
---@param radiusy number A number representing the y-radius of the shape
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the shape is drawn using the current Canvas.color
--- https://www.luart.org/doc/canvas/Canvas-fillroundrect.html
function canvas:fillroundrect(x0, y0, x1, y1, radiusx, radiusy, brush) end

--- Draws a line on the Canvas
--- @param x0 number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y0 number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param x1 number A number representing the x coordinate of the lower right corner
---@param y1 number A number representing the y coordinate of the lower right corner
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the shape is drawn using the current Canvas.color
---@param width? any An optional number value representing the shape's border thickness, defaulting to 1
--- https://www.luart.org/doc/canvas/Canvas-rect.html
function canvas:line(x0, y0, x1, y1, brush, width) end

--- Flips the back buffer, displaying it on the Canvas.
--- 
--- https://www.luart.org/doc/canvas/Canvas-flip.html
function canvas:flip() end

--- Hide the Canvas widget.
--- 
--- https://www.luart.org/doc/canvas/Canvas-hide.html
function canvas:hide() end

--- Resets the Canvas transformation to the default identity matrix
--- 
--- https://www.luart.org/doc/canvas/Canvas-identity.html
function canvas:identity() end

--- Creates an  Image object instance, which content is loaded from a file.
---@param file File|string A File or a filename as a string representing the file to load the image from.
---@return Image
--- The canvas module support the following file types :
--- - BMP (Windows Bitmap Format) *.bmp
--- - GIF (Graphics Interchange Format 89a) *.gif(not animated, first frame only)
--- - ICO (Icon Format) *.ico
--- - JPEG (Joint Photographic Experts Group) *.jpg | *.jpeg
--- - PNG (Portable Network Graphics) *.png
--- - TIFF (Tagged Image File Format) *.tiff | *.tif
--- - Windows Media Photo *.wmp
--- - DDS (DirectDraw Surface) *.dds
---
--- https://www.luart.org/doc/canvas/Canvas-Image.html
function canvas:Image(file) end

--- Creates an  LinearGradient object instance to be used in any Canvas drawing operation.
--- @return LinearGradient
--- @param colors table A table where :
--- - keys are a number : a relative gradient position (only positions between 0.0 to 1.0 are visible, but any other positions might impact the gradient).
--- - values are a number : a color in RGBA format.
---
--- https://www.luart.org/doc/canvas/Canvas-LinearGradient.html
function canvas:LinearGradient(colors) end

--- Creates an  RadialGradient object instance to be used in any Canvas drawing operation.
--- @return RadialGradient
--- @param colors table A table where :
--- - keys are a number : a relative gradient position (only positions between 0.0 to 1.0 are visible, but any other positions might impact the gradient).
--- - values are a number : a color in RGBA format.
---
--- https://www.luart.org/doc/canvas/Canvas-RadialGradient.html
function canvas:RadialGradient(colors) end

---@class resolution
---@field width number
---@field height number

--- Measure text size on the Canvas
--- @param text string A string representing the text to be measured
--- @return resolution
--- https://www.luart.org/doc/canvas/Canvas-measure.html
function canvas:measure(text) end

--- Draws a point on the Canvas, at the specified position
--- @param x number
---@param y number
---@param color? number An optional integer that represent a RGBA color value, defaulting to the current Canvas.color
---https://www.luart.org/doc/canvas/Canvas-point.html
function canvas:point(x, y, color) end

--- Draws text on the Canvas
--- @param text string
--- @param x number A number representing the x coordinate of the upper left corner (zero means the left side of the Canvas)
---@param y number A number representing the y coordinate of the upper left corner (zero means the top side of the Canvas)
---@param brush? any An optional value that can represent any of the following values :
--- - A RGBA color, as an integer value
--- - LinearGradient : The line will be drawn with a colored linear gradient
--- - RadialGradient : The line will be drawn with a colored radial gradient
--- - Image : The line will be drawn with a picture pattern.
---
--- When this parameter is omitted, the circle is drawn using the current Canvas.color
---
--- https://www.luart.org/doc/canvas/Canvas-print.html
function canvas:print(text, x, y, brush) end

--- Applies a rotation transformation on the Canvas
--- @param angle number A number representing the rotation angle in degrees. A positive angle creates a clockwise rotation, and a negative angle creates a counterclockwise rotation.
---@param x number
---@param y number
---https://www.luart.org/doc/canvas/Canvas-rotate.html
function canvas:rotate(angle, x, y) end

--- Applies a scale transformation on the Canvas
--- @param x number A number representing the x-axis scale factor.
---@param y number A number representing the y-axis scale factor.
---@param centerx? number The horizonal coordinate for the scale center point, defaulting to the center of the Canvas.
---@param centery? number The vertical coordinate for the scale center point, defaulting to the center of the Canvas.
---https://www.luart.org/doc/canvas/Canvas-scale.html
function canvas:scale(x, y, centerx, centery) end

---Show and activate the Canvas (events can now be fired).
---
---https://www.luart.org/doc/canvas/Canvas-show.html
function canvas:show() end

--- Applies a skew transformation on the Canvas
--- @param anglex number A number representing the x-axis skew angle in degrees.
---@param angley number A number representing the y-axis skew angle in degrees.
---@param centerx? number The horizonal coordinate for the skew center point, defaulting to the center of the Canvas.
---@param centery? number The vertical coordinate for the skew center point, defaulting to the center of the Canvas.
---https://www.luart.org/doc/canvas/Canvas-skew.html
function canvas:skew(anglex, angley, centerx, centery) end

--- Applies a translation transformation on the Canvas // TODO:
--- @param x number A number representing the translation along the x-axis.
--- @param y number A number representing the translation along the x-axis.
--- https://www.luart.org/doc/canvas/Canvas-translate.html
function canvas:translate(x, y) end

return canvas
