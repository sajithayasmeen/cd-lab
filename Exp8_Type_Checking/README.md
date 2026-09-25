# Exp 8 — Type Checking using LEX and YACC

Builds a symbol table from declarations (`int`/`float`) and checks type
consistency when variables are assigned expressions.

## Files
- `Exp8_typecheck.l` — Flex source
- `Exp8_typecheck.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp8_typecheck.l
bison -d Exp8_typecheck.y
gcc lex.yy.c Exp8_typecheck.tab.c -o typecheck -lfl
./typecheck
```
Type declarations and assignments ending each with `;`, then Ctrl+D, e.g.:
```
int a;
int b;
int c;
a = b * c;
```

## Verified Output
```
$ printf "int a;\nint b;\nint c;\na = b * c;\n" | ./typecheck
No type mismatch in expression: a = ...

$ printf "int a;\nfloat b;\nint c;\na = b + c;\n" | ./typecheck
Type mismatch in assignment to a
```
