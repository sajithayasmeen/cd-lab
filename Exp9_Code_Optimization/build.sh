#!/bin/bash
# Exp 9: Simple code optimization (constant folding, strength reduction, algebraic simplification)
set -e
flex Exp9_optimize.l
bison -d Exp9_optimize.y
gcc lex.yy.c Exp9_optimize.tab.c -o optimize -lfl
echo "Enter TAC-style statements ending with ';', e.g.:"
echo "a = 2 + 4; b = d * 1; c = s * 2;"
./optimize
