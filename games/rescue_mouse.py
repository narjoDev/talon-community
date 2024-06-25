from talon import Module, actions

mod = Module()


@mod.action_class
class Actions:
    def game_mode_rescue_mouse():
        """Reactivate mouse"""
        actions.tracking.control_toggle(True)
        actions.tracking.control_gaze_toggle(True)
        actions.tracking.control_head_toggle(True)
