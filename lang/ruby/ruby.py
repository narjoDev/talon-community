from talon import Context, actions, settings, Module

mod = Module()
mod.tag("code_ruby", desc="tag for enabling ruby functions")

from ..tags.operators import Operators

ctx = Context()
ctx.matches = r"""
code.language: ruby
"""
ctx.lists["user.code_common_function"] = {
    "print": "print",
    "puts": "puts",
    "pea": "p",
    "access": "attr_accessor",
    "getter": "attr_reader",
    "setter": "attr_writer",
}
operators = Operators(
    # code_operators_array
    SUBSCRIPT=lambda: actions.user.insert_between("[", "]"),
    # code_operators_assignment
    ASSIGNMENT=" = ",
    ASSIGNMENT_OR=" ||= ",
    ASSIGNMENT_SUBTRACTION=" -= ",
    ASSIGNMENT_ADDITION=" += ",
    ASSIGNMENT_MULTIPLICATION=" *= ",
    ASSIGNMENT_DIVISION=" /= ",
    ASSIGNMENT_MODULO=" %= ",
    ASSIGNMENT_INCREMENT=" += 1",
    ASSIGNMENT_BITWISE_AND=" &= ",
    ASSIGNMENT_BITWISE_OR=" |= ",
    ASSIGNMENT_BITWISE_EXCLUSIVE_OR=" ^= ",
    ASSIGNMENT_BITWISE_LEFT_SHIFT=" <<= ",
    ASSIGNMENT_BITWISE_RIGHT_SHIFT=" >>= ",
    # code_operators_bitwise
    BITWISE_AND=" & ",
    BITWISE_OR=" | ",
    BITWISE_NOT="~",
    BITWISE_EXCLUSIVE_OR=" ^ ",
    BITWISE_LEFT_SHIFT=" << ",
    BITWISE_RIGHT_SHIFT=" >> ",
    # code_operators_lambda
    LAMBDA="->",
    # code_operators_math
    MATH_SUBTRACT=" - ",
    MATH_ADD=" + ",
    MATH_MULTIPLY=" * ",
    MATH_EXPONENT=" ** ",
    MATH_DIVIDE=" / ",
    MATH_MODULO=" % ",
    MATH_EQUAL=" == ",
    MATH_NOT_EQUAL=" != ",
    MATH_GREATER_THAN=" > ",
    MATH_GREATER_THAN_OR_EQUAL=" >= ",
    MATH_LESS_THAN=" < ",
    MATH_LESS_THAN_OR_EQUAL=" <= ",
    MATH_NOT="!",
    MATH_AND=" && ",
    MATH_OR=" || ",
)


@ctx.action_class("user")
class UserActions:
    def code_get_operators() -> Operators:
        return operators

    def code_self():
        actions.auto_insert("self")

    def code_operator_object_accessor():
        actions.auto_insert(".")

    def code_insert_null():
        actions.auto_insert("nil")

    def code_insert_is_null():
        actions.auto_insert(".nil?")

    # Technically .present? is provided by Rails
    def code_insert_is_not_null():
        actions.auto_insert(".present?")

    def code_state_do():
        actions.insert("do ")

    def code_block():
        actions.insert("do ")
        actions.user.ruby_hang_end()

    def code_state_if():
        actions.insert("if ")

    def code_state_else_if():
        actions.insert("elsif ")

    def code_state_else():
        actions.insert("else")
        actions.key("enter")

    def code_state_while():
        actions.insert("while ")

    def code_state_infinite_loop():
        actions.insert("loop ")
        actions.user.ruby_hang_end()

    def code_state_switch():
        actions.insert("case ")

    def code_state_case():
        actions.insert("when ")

    def code_state_for_each():
        actions.insert(".each do ||")
        actions.key("left")

    def code_define_class():
        actions.insert("class \n")
        # actions.insert("class ")
        # actions.user.ruby_hang_end()
        # actions.key("enter")
        # actions.key("up")
        # actions.edit.line_end()

    def code_import():
        actions.auto_insert('require ""')
        actions.key("left")

    def code_comment_line_prefix():
        actions.auto_insert("# ")

    def code_state_return():
        actions.insert("return ")

    def code_break():
        actions.insert("break ")

    def code_next():
        actions.insert("next ")

    def code_insert_true():
        actions.auto_insert("true")

    def code_insert_false():
        actions.auto_insert("false")

    def code_comment_documentation():
        actions.insert("##")
        actions.key("enter")
        actions.key("space")
        ### Extra non-standard things

    def code_insert_function(text: str, selection: str):
        parens = False
        text += f"({selection or ''})" if parens else f" {selection or ''}"
        actions.user.paste(text)
        if parens:
            actions.edit.left()

    def code_default_function(text: str):
        """Inserts function definition"""

        result = "def {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )
        actions.insert(result)
        actions.user.ruby_hang_end()


@mod.action_class
class Actions:
    def ruby_hang_end():
        """dangle closing end"""
        actions.edit.line_end()
        actions.user.insert_between("", "end")
        actions.key("enter")
        actions.key("up")
        actions.edit.line_end()
