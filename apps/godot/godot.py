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

ctx.tags = ["user.command_search", "user.line_commands", "user.multiple_cursors"]


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

    def multi_cursor_add_above():
        actions.key("ctrl-shift-up")

    def multi_cursor_add_below():
        actions.key("ctrl-shift-down")

    def multi_cursor_disable():
        actions.key("escape")

    def multi_cursor_select_more_occurrences():
        actions.key("ctrl-d")

    def multi_cursor_skip_occurrence():
        actions.key("ctrl-alt-d")
