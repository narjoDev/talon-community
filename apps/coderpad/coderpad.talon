app: coderpad
-
settings():
    # Necessary if intellisense is on
    key_wait = 9.0

trim trail:
    key(ctrl-k)
    key(ctrl-x)

cursor up: key("ctrl-alt-up")
cursor down: key("ctrl-alt-down")
cursor more: key("ctrl-d")

collapse: key("ctrl-shift-[")
unfold: key("ctrl-shift-]")
unfold all:
    key("ctrl-k")
    key("ctrl-j")
