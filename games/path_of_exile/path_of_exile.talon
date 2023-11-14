os: windows
and app.exe: PathOfExile.exe
and mode: user.game
-

# Mouse

control mouse: tracking.control_toggle()
touch:
  mouse_click(0)
  user.mouse_drag_end()
righty:
  mouse_click(1)
mid click:
  mouse_click(2)
<user.modifiers> touch:
  key("{modifiers}:down")
  mouse_click(0)
  key("{modifiers}:up")
<user.modifiers> righty:
  key("{modifiers}:down")
  mouse_click(1)
  key("{modifiers}:up")
drag:
  user.mouse_drag(0)
riddle:
  user.mouse_drag(1)
release: user.mouse_drag_end()
copy mouse position: user.copy_mouse_position()

# Generic Keys

<user.letter>: key(letter)
press <user.keys>: key(keys)
enter: key(enter)
tab: key(tab)
scrape: key(escape)
<user.number_key>: key("{number_key}")

# Specific Commands

pickup:
  user.mouse_drag_end()
  key(f:down)
full: key(f:up)

# menu buttons with positions
# control mouse
# ingame panels
# skills
# advanced movement
