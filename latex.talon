title: /\.tex/
-
emph:
    insert("\\emph{{}}")
    key(left)

italic:
    insert("\\textit{{}}")
    key(left)

small cap:
    insert("\\textsc{{}}")
    key(left)

big fat:
    insert("\\textbf{{}}")
    key(left)

formula | tech bears:
    insert("\\(\\)")
    key(left:2)
math block | tech squares:
    insert("\\[\\]")
    key(left:2)

tech braces:
    insert("\\{{\\}}")
    key(left:2)

tech big braces:
    insert("\\big\\{{\\big\\}}")
    key(left:6)

gantt: insert("gantt")

new line:
    insert(" \\\\\n")

monospace:
    insert("\\texttt{}")
    key(left)

text:
    insert("\\text{}")
    key(left)

sans:
    insert("\\mathsf{}")
    key(left)

blackboard:
    insert("\\mathbb{}")
    key(left)

document class {user.tex_document_classes}:
    insert("\\documentclass{{{tex_document_classes}}}")
use package {user.tex_packages}:
    insert("\\usepackage{{{tex_packages}}}")
use package bib latex:
    insert("\\usepackage[style=authoryear]{{biblatex}}")
begin {user.tex_environments}:
    insert("\\begin{{{tex_environments}}}")
    key(enter:2)
    insert("\\end{{{tex_environments}}}")
    key(up)
insert {user.tex_commands}:
    insert("\\tex_commands{{}}")
    key(left)
insert {user.tex_commands_noarg}:
    insert("\\tex_commands_noarg")
#tick {tikz_commands}:
#    insert('\\{tikz_commands} ')

greek {user.tex_greek_letters}:
    insert("\\{tex_greek_letters} ")
symbol {user.tex_symbols}:
    insert("\\{tex_symbols} ")
state to:  "-- "

template {user.tex_templates}:
    insert(tex_templates)
final {user.symbol}:
    edit.line_end()
    insert("{symbol}")
    key(enter)
append {user.symbol}:
    edit.line_end()
    insert('{symbol}')
kick:  ", "
