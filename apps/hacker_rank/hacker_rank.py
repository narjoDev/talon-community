from talon import Context, Module, actions

mod = Module()
ctx = Context()

apps = mod.apps
apps.hacker_rank = r"""
tag: browser
browser.host: www.hackerrank.com
"""

ctx.matches = r"""
app: hacker_rank
"""

ctx.tags = ["user.line_commands"]


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
