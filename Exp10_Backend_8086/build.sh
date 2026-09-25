#!/bin/bash
# Exp 10: Compiler back-end - TAC to 8086 assembly
set -e
flex Exp10_backend.l
bison -d Exp10_backend.y
gcc lex.yy.c Exp10_backend.tab.c -o backend -lfl
echo "Enter TAC statements ending with ';', e.g.:"
echo "t1 = a + b; t2 = t1 - c; x = t2;"
./backend
