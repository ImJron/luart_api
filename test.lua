
local ui = require "ui"
require "canvas"

-- create a simple Window
local win = ui.Window("Image:drawrect sample", "fixed", 500, 400)

-- create a Canvas
local canvas = ui.Canvas(win)
canvas.align = "all"
canvas.bgcolor = 0x000000FF

local w = canvas.width
local h = canvas.height
local img = canvas:Image("C:/Users/Jron/Pictures/4ff15fd8b7814fa65ba683e21a765d2b_c5_720x720.jpeg")

function canvas:onPaint()
  self:begin()
  img:drawrect(math.random(w), math.random(h), math.random(500), math.random(400), math.random(), math.random())
  self:flip()
end

ui.run(win):wait()
            