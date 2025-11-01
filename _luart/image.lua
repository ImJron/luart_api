---@class Image: Object
Image = {}

---@alias interpolation "nearest"|"linear"
--- Draws the Image on its Canvas, at the specified position
--- @param x number A number representing the horizontal position (zero means the left side of the Canvas)
---@param y number A number representing the vertical position (zero means the top side of the Canvas)
---@param ratio? number An optional number that represent a ratio to apply to to the Image width and height. The default value is 1, meaning that the original ratio will be used
---@param opacity? number An optional number representing the degree of opacity, defaulting to 1 (full opacity). A value of 0.5 means middle transparency
---@param interpolation? interpolation An optional string used to specify the quality of image scaling :
--- - "nearest" : Use the exact color of the nearest bitmap pixel to the current rendering pixel (the default).
--- - "linear" : Uses a four point sample and linear interpolation, using more processing time, but outputs a higher quality image.
---
--- https://www.luart.org/doc/canvas/Image-draw.html
function Image:draw(x, y, ratio, opacity, interpolation) end

--- Draws the Image on its Canvas, using the specified position, width, height and opacity.
--- @param x number A number representing the horizontal position (zero means the left side of the Canvas)
---@param y number A number representing the vertical position (zero means the top side of the Canvas)
---@param width number A number that represent the Image width
---@param height number A number that represent the Image height
---@param opacity? number An optional number representing the degree of opacity, defaulting to 1 (full opacity). A value of 0.5 means middle transparency
---@param interpolation? interpolation An optional string used to specify the quality of image scaling :
--- - "nearest" : Use the exact color of the nearest bitmap pixel to the current rendering pixel (the default).
--- - "linear" : Uses a four point sample and linear interpolation, using more processing time, but outputs a higher quality image.
---
--- https://www.luart.org/doc/canvas/Image-drawrect.html
function Image:drawrect(x, y, width, height, opacity, interpolation) end

--- Draws a sub part of the Image on the Canvas.
--- @param x number A number representing the horizontal position (zero means the left side of the Canvas)
---@param y number A number representing the vertical position (zero means the top side of the Canvas)
---@param subx number A number that represents upper left corner x position of the sub part in the Image.
---@param suby number A number that represents upper left corner y position of the sub part in the Image.
---@param subwidth number A number that represents the width of the sub part in the Image.
---@param subheight number A number that represents the height of the sub part in the Image.
---@param opacity? number An optional number representing the degree of opacity, defaulting to 1 (full opacity). A value of 0.5 means middle transparency
---@param interpolation? interpolation An optional string used to specify the quality of image scaling :
--- - "nearest" : Use the exact color of the nearest bitmap pixel to the current rendering pixel (the default).
--- - "linear" : Uses a four point sample and linear interpolation, using more processing time, but outputs a higher quality image.
---
---https://www.luart.org/doc/canvas/Image-drawsub.html
function Image:drawsub(x, y, subx, suby, subwidth, subheight, opacity, interpolation) end
