# Exp 2 — Lexical Analyzer using LEX Tool

Recognizes preprocessor directives, header files, keywords, identifiers,
numbers, operators and delimiters in a C program.

## Files
- `Exp2_lexer.l` — Flex source
- `iplex.c` — sample C input
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp2_lexer.l
gcc lex.yy.c -o lexer -lfl
./lexer iplex.c
```

## Verified Output
```
Preprocessor Directive : #include
Header File : <stdio.h>
Keyword : void
Identifier : main
Delimiter : (
Delimiter : )
Delimiter : {
Keyword : int
Identifier : x
Delimiter : ;
Identifier : x
Operator : =
Number : 10
Delimiter : ;
Delimiter : }

End of file
```
