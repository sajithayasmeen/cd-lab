#!/bin/bash
# Exp 7: Generate Three Address Code (TAC) for a simple expression
set -e
flex Exp7_tac.l
bison -d Exp7_tac.y
gcc Exp7_tac.tab.c lex.yy.c -o tac -lfl
echo "Enter an expression when prompted, e.g. a = b + c * d"
./tac
