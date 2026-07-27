#!/bin/bash
# Exp 1: Lexical Analyzer with Symbol Table
set -e
flex Exp1_symtab.l
gcc lex.yy.c -o symtab -lfl
./symtab input.c
