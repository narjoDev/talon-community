code.language: html
code.language: javascriptreact
code.language: typescriptreact
-
elm {user.code_tag}: "<{code_tag}>"
close elm {user.code_tag}: "</{code_tag}>"
pair elm {user.code_tag}: user.insert_between("<{code_tag}>", "</{code_tag}>")
sows elm {user.code_tag}: "<{code_tag} />"
template show: user.insert_between("<%= ", " %>")
template dew: user.insert_between("<% ", " %>")
