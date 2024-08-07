code.language: html
code.language: javascriptreact
code.language: typescriptreact
-
adder <user.text>:
  name = user.formatted_text(text or "", "DASH_SEPARATED")
  user.insert_between("{name}=\"", "\"")

elm {user.code_tag}: "<{code_tag}>"
close elm {user.code_tag}: "</{code_tag}>"
pair elm {user.code_tag}:
  user.insert_between("<{code_tag}>", "</{code_tag}>")
(wrap elm | elm wrap) {user.code_tag}:
  text = edit.selected_text()
  key(delete)
  user.insert_between("<{code_tag}", ">{text}</{code_tag}>")
sows elm {user.code_tag}: "<{code_tag} />"

template show: user.insert_between("<%= ", " %>")
template dew: user.insert_between("<% ", " %>")
