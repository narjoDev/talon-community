os: windows
and app.name: Aseprite
os: windows
and app.exe: /^aseprite\.exe$/i
-

# https://www.aseprite.org/quickref/

# tools
rectangle: key("m")
oval: key("shift-m")
lasso: key("q")
poly lasso: key("shift-q")
wand: key("w")
pencil: key("b")
spray: key("shift-b")
eraser: key("e")
[eye] dropper: key("i")
# some omitted

# color bar
color switch: key("x")

# timeline

timeline: key("tab")
play: key("enter")
frame next: key("right")
frame (previous | pre): key("left")
frame first: key("home")
frame (last | final): key("end")
frame new: key("alt-n")
frame empty new: key("alt-b")

# layers
layer next: key("")
layer (last | pre): key("")
layer new | drink layer: key("shift-n")
layer new below | pour layer:
  key("space:down shift-n space:up")
