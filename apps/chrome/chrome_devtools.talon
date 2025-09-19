app: chrome
-
# tag(): user.command_search

# "Please" occurs too often in mixed mode dictation
^command search [<user.text>]$: user.command_search(user.text or "")
inspect: key(ctrl-shift-c)
