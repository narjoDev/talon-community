app: godot
-
settings():
  key_wait = 3.0

# text editing
cursor up: key("ctrl-shift-up")
cursor down: key("ctrl-shift-down")
cursor more: key("ctrl-d")
cursor skip: key("ctrl-alt-d")
convert [to] spaces: key("ctrl-shift-y")
convert [to] tabs: key("ctrl-shift-i")

# central view
show two D: key("ctrl-f1")
show three D: key("ctrl-f2")
show script: key("ctrl-f3")
show game: key("ctrl-f4")
show assets: key("ctrl-f5")
zen switch: key("ctrl-shift-f11")
[script] tray switch: key("ctrl-\\")

# scene navigation
scene new:
  user.command_search("new scene")
  key("enter")
scene open [<user.prose>]:
  key("ctrl-o")
  user.insert_formatted(prose, "SNAKE_CASE")
scene next: key("ctrl-tab")
scene last: key("ctrl-shift-tab")
scene (close | clothes): key("ctrl-shift-w")

# script navigation
script next: key("ctrl-shift-.")
script last: key("ctrl-shift-,")
script (close | clothes): key("ctrl-w")
script reopen: key("ctrl-shift-t")

# focus (docks)
look scene:
  user.command_search("open scene dock")
  key("enter")
look import:
  user.command_search("open import dock")
  key("enter")
look (files | file [system]):
  user.command_search("open filesystem dock")
  key("enter")
look history:
  user.command_search("open history dock")
  key("enter")
look inspector:
  user.command_search("open inspector dock")
  key("enter")
look signals:
  user.command_search("open signals dock")
  key("enter")
look groups:
  user.command_search("open groups dock")
  key("enter")

# bottom panel
panel output: key("alt-o")
panel (debug) | debugger: key("alt-d")
panel audio: key("alt-a")
panel animation: key("alt-n")
panel shader: key("alt-s")
panel max: key("shift-f12")
