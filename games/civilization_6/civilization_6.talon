app: civilization_6
and mode: user.game
-

overlay: key(shift-tab)

# Text (Civilopedia)

word <user.word>: insert(word)
clear all: user.delete_all()

# Custom Clicks
copy mouse position: user.copy_mouse_position()
stay:                user.civilization_vi_mouse_movement_toggle()

# Mouse

control mouse: tracking.control_toggle()
touch:
  user.civilization_vi_mouse_movement_toggle()
  mouse_click(0)
  user.mouse_drag_end()
  user.civilization_vi_mouse_movement_toggle()
righty | march:
  user.civilization_vi_mouse_movement_toggle()
  mouse_click(1)
  user.civilization_vi_mouse_movement_toggle()
mid click:
  user.civilization_vi_mouse_movement_toggle()
  mouse_click(2)
  user.civilization_vi_mouse_movement_toggle()
<user.modifiers> touch:
  user.civilization_vi_mouse_movement_toggle()
  key("{modifiers}:down")
  mouse_click(0)
  key("{modifiers}:up")
  user.civilization_vi_mouse_movement_toggle()
<user.modifiers> righty:
  user.civilization_vi_mouse_movement_toggle()
  key("{modifiers}:down")
  mouse_click(1)
  key("{modifiers}:up")
  user.civilization_vi_mouse_movement_toggle()
drag:
  user.civilization_vi_mouse_movement_toggle()
  user.mouse_drag(0)
  user.civilization_vi_mouse_movement_toggle()
riddle:
  user.civilization_vi_mouse_movement_toggle()
  user.mouse_drag(1)
  user.civilization_vi_mouse_movement_toggle()
release: user.mouse_drag_end()

# Generic Keys

press <user.letter>: key(letter)
press <user.keys>: key(keys)
# enter: key(enter)
# tab: key(tab)
scrape: key(escape)
numb <user.number_key>: key("{number_key}")

# Global Actions

capital: key("\\")
menu: key(home)
next action | ok | go: key(enter)
city next: ']'
ready next: '.'
city last: '['
ready last: ','
quick load: key(f6)
quick save: key(f5)
flip grid: 'g'
flip source: 'q'
flip strat: '='
flip yield: 'y'

# Lenses

see appeal: '3'
see continent: '2'
see empire: '9'
see government: '5'
see political: '6'
see religion: '1'
see settler: '4'
see tourism: '7'

# Unit Actions

do alert: 'v'
do attack: 'a'
do explore: 'e'
do delete: key(delete)
do heal: 'h'
do (fortify | fort): 'f'
do (found | build): 'b'
do move: 'm'
do range: 'r'
do skip: key(space)
do sleep: 'z'

# User Interface

#civil history back
#civil history forward
map search: key(ctrl-f)
see book: key(f9)
see states: key(f2)
tree civics: 'c'
see spy: key(f3)
full screen: key(end)
see gove: key(f7)
see people: 'o'
see works: 'w'
see ranking: key(f1)
see god: 'l'
tree tech: 't'
see trade: key(f4)

# Mod Dependent

click tack: key(shift-a)