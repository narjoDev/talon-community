from talon import Module, Context, actions

mod = Module()

mod.mode("game", "For playing games without other commands active")

ctx = Context()
ctx.matches = r"""
mode: user.game
"""

ctx.settings = {
    "speech.timeout": 0.05,
}


@mod.action_class
class Actions:
    def game_mode_enable():
        """Enable game mode"""
        actions.mode.disable("command")
        actions.mode.enable("user.game")

    def game_mode_disable():
        """Disable game mode"""
        actions.mode.disable("user.game")
        actions.mode.enable("command")
        # actions.user.mouse_release_held_buttons()
