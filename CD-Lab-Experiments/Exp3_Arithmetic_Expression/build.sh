#!/bin/bash
# Exp 3: Recognize a valid arithmetic expression (+, -, *, /)
set -e
flex Exp3_art_expr.l
bison -d Exp3_art_expr.y
gcc lex.yy.c Exp3_art_expr.tab.c -o art_expr -lfl
echo "Enter an expression when prompted, e.g. a+b*c-d/e"
./art_expr
