code.language: html
code.language: javascriptreact
code.language: typescriptreact
-
elm {user.code_tag}: "<{code_tag}>"
close elm {user.code_tag}: "</{code_tag}>"
sows elm {user.code_tag}: "<{code_tag} />"
template show: user.insert_between("<%= ", " %>")
template do: user.insert_between("<% ", " %>")
