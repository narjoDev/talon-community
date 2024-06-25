from talon import Module, Context, actions, ctrl, cron
import platform

os = platform.system().lower()

if os.startswith("windows"):
    import win32api, win32con


def mouse_move_windows(dx: int, dy: int):
    win32api.mouse_event(win32con.MOUSEEVENTF_MOVE, dx, dy)


mod = Module()
ctx = Context()

# os: windows
# and app.name: Sid Meier's Civilization VI (DX12)
# os: windows
# and app.exe: /^civilizationvi_dx12\.exe$/i

mod.apps.civilization_6 = r"""
os: windows
and app.name: Sid Meier's Civilization VI (DX12)
"""

ctx.matches = r"""
os: windows
app: civilization_6
"""

mouse_movement_flag = False


# Credit to Roku for all this
@mod.action_class
class Actions:
    def civilization_vi_mouse_movement_toggle():
        """Start or stop eye tracking - useful for hovering"""
        global mouse_movement_flag

        if mouse_movement_flag:
            actions.tracking.control_toggle(False)
            actions.tracking.control_gaze_toggle(False)
            actions.tracking.control_head_toggle(False)
            mouse_move_windows(2, 0)
        else:
            actions.tracking.control_toggle(True)
            actions.tracking.control_gaze_toggle(True)
            actions.tracking.control_head_toggle(True)

        mouse_movement_flag = not mouse_movement_flag


@ctx.action_class("user")
class Actions:
    # def on_pop():
    def noise_trigger_pop():
        # i'm not sure if toggling eye tracker on and off like
        # this is a good idea, but it's the only way I found
        # to make it so manually doing a movement doesn't
        # disable the eye tracker for 1 second

        # toggle eye tracking off
        actions.tracking.control_toggle(False)
        # nudge slightly from current position so it detects cursor
        mouse_move_windows(2, 0)
        ctrl.mouse_click(button=0, hold=16000)
        # toggle eye tracker on
        actions.tracking.control_toggle(True)
        # if you want your other on_pop logic to fire too
        # actions.next()
