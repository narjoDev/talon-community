from talon import Context, Module, actions

mod = Module()
ctx = Context()

apps = mod.apps
apps.godot = r"""
os: windows
and app.name: Godot Engine
"""

ctx.matches = r"""
app: godot
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
        # added as custom shortcut
        actions.key("ctrl-]")

    def indent_less():
        actions.key("shift-tab")


@ctx.action_class("user")
class UserActions:
    def command_search(command: str = ""):
        actions.key("ctrl-shift-p")
        if command != "":
            actions.insert(command)
