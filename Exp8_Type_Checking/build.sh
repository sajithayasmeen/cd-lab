#!/bin/bash
# Exp 8: Type checking using LEX and YACC
set -e
flex Exp8_typecheck.l
bison -d Exp8_typecheck.y
gcc lex.yy.c Exp8_typecheck.tab.c -o typecheck -lfl
echo "Enter declarations & assignments, end each with ';', e.g.:"
echo "int a; int b; int c; a = b * c;"
./typecheck
