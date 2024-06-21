from talon import Module, Context, actions

mod = Module()

mod.apps.civilization_6 = """
os: windows
and app.name: Sid Meier's Civilization VI (DX12)
"""

ctx = Context()
ctx.matches = """
mode: user.game
app: civilization_6
"""
