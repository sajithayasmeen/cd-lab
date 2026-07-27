#!/bin/bash
# Exp 2: Lexical Analyzer using LEX Tool
set -e
flex Exp2_lexer.l
gcc lex.yy.c -o lexer -lfl
./lexer iplex.c
