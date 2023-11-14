from talon import Module, Context, actions

mod = Module()

mod.apps.pathofexile = """
os: windows
and app.exe: PathOfExile.exe
"""

ctx = Context()
ctx.matches = """
mode: user.game
app: pathofexile
"""
