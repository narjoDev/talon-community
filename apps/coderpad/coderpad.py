from talon import Context, Module, actions

mod = Module()
ctx = Context()

apps = mod.apps
apps.coderpad = r"""
tag: browser
browser.host: app.coderpad.io
"""

ctx.matches = r"""
app: coderpad
"""

ctx.tags = ["user.line_commands", "user.command_search"]


@ctx.action_class("code")
class CodeActions:
    def toggle_comment():
        actions.key("ctrl-/")


@ctx.action_class("edit")
class EditActions:
    def jump_line(n: int):
        actions.key("ctrl-g")
        actions.insert(str(n))
        actions.key("enter")

    def indent_more():
        actions.key("ctrl-]")

    def indent_less():
        actions.key("shift-tab")


@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("f1")
        if command != "":
            actions.insert(command)
