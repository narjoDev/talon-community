from talon import Context, Module, actions

mod = Module()

ctx = Context()

ctx.matches = r"""
app: chrome
"""


@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("ctrl-shift-p")
        if command != "":
            actions.sleep("200ms")
            actions.insert(command)
