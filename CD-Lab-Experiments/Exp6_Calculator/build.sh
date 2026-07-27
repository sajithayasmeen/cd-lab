#!/bin/bash
# Exp 6: Calculator using LEX and YACC
set -e
flex Exp6_cal.l
bison -d Exp6_cal.y
gcc lex.yy.c Exp6_cal.tab.c -o calc -lfl
echo "Enter an expression when prompted, e.g. 2+2"
./calc
