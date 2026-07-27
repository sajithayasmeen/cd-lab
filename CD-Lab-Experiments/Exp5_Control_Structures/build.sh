#!/bin/bash
# Exp 5: Recognize valid C control-structure syntax
set -e
flex Exp5_control.l
bison -d Exp5_control.y
gcc lex.yy.c Exp5_control.tab.c -o control -lfl
echo 'Enter syntax when prompted, e.g. if (x < 5) { y = 10; }'
./control
