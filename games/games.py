from talon import Module, Context, actions

mod = Module()

mod.mode("game", "For playing games")

ctx = Context()
ctx.matches = r"""
mode: user.game
"""

ctx.settings = {
    "speech.timeout": 0.05,
}
