# Exp 1 — Lexical Analyzer to Recognize Tokens & Build a Symbol Table

Uses LEX to recognize identifiers, constants, comments, and operators in C code,
and builds a symbol table for identifiers.

## Files
- `Exp1_symtab.l` — Flex source
- `input.c` — sample C input
- `build.sh` — builds and runs

## Requirements
```bash
sudo apt-get install flex gcc
```

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp1_symtab.l
gcc lex.yy.c -o symtab -lfl
./symtab input.c
```

## Verified Output
```
Identifier : int
Identifier : a
Operator : =
Constant : 10
Comment : // sum variable
Identifier : b
Operator : =
Identifier : a
Operator : +
Constant : 5

SYMBOL TABLE
S.No	Name
1	int
2	a
3	b
```
