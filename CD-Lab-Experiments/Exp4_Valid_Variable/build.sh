#!/bin/bash
# Exp 4: Recognize a valid variable (letter followed by letters/digits)
set -e
flex Exp4_valvar.l
bison -d Exp4_valvar.y
gcc lex.yy.c Exp4_valvar.tab.c -o valvar -lfl
echo "Enter a variable name when prompted, e.g. add1"
./valvar
