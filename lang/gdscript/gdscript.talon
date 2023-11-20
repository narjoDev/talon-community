code.language: gdscript
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_documentation
tag(): user.code_comment_line
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_keywords
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

^virtue funky <user.text>$:
    user.code_private_function(text)

state var [<user.text>]:
    insert("var ")
    user.code_public_variable_formatter(text)
state const [<user.text>]:
    insert("const ")
    user.code_public_variable_formatter(text)

sign var [<user.text>]:
    insert("var ")
    user.code_public_variable_formatter(text)
    user.code_operator_assignment()
sign const [<user.text>]:
    insert("const ")
    user.code_public_variable_formatter(text)
    user.code_operator_assignment()
