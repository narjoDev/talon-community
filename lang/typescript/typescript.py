from talon import Context, actions, settings

ctx = Context()
ctx.matches = r"""
code.language: typescript
code.language: typescriptreact
# Make typescript win over javascript
mode: command
"""

ctx.lists["user.code_type"] = {
    "boolean": "boolean",
    "integer": "int",
    "string": "string",
    "null": "null",
    "undefined": "undefined",
    "number": "number",
    "any": "any",
    "void": "void",
    "unknown": "unknown",
    "never": "never",
}


@ctx.action_class("user")
class UserActions:
    def code_private_function(text: str):
        """Inserts private function declaration"""
        result = "private function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_protected_function(text: str):
        result = "protected function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_protected_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_public_function(text: str):
        result = "public function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    def code_insert_type_annotation(type: str):
        actions.insert(f": {type}")

    def code_insert_return_type(type: str):
        actions.insert(f": {type}")
