new line: "\n"
double dash: "--"
triple quote: "'''"
triple grave | triple back tick | gravy: "```"
(dot dot | dotdot): ".."
ellipsis: "..."
spam: ", "
coal gap: ": "
ramma:
    key(right)
    ", "
rodda:
    key(right)
    "."
remy:
    key(right)
    ";"
race:
    key(right)
    " "
clint:
    edit.line_end()
    ","
    key(return)
arrow: "->"
(dub arrow | rocket): "=>"

# Insert delimiter pairs
<user.delimiter_pair>: user.delimiter_pair_insert(delimiter_pair)

# Wrap selection with delimiter pairs
<user.delimiter_pair> that: user.delimiter_pair_wrap_selection(delimiter_pair)
