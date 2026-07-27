# Exp 6 — Calculator using LEX and YACC

Evaluates arithmetic expressions (+, -, *, /) with correct operator precedence.

> Note: the original textbook code only defined `#define YYSTYPE double`
> inside the `.y` file. Since the `.l` file includes the generated
> `tab.h` *without* that define, the lexer and parser disagreed on the
> type of `yylval` (int vs double), so the calculator always printed a
> garbage answer. This version adds `#define YYSTYPE double` to the
> `.l` file too, and uses `$1` instead of an unset `$$` in the top-level
> print action, so it now computes the correct result.

## Files
- `Exp6_cal.l` — Flex source
- `Exp6_cal.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp6_cal.l
bison -d Exp6_cal.y
gcc lex.yy.c Exp6_cal.tab.c -o calc -lfl
./calc
```
Type an expression and press Enter, e.g. `2+2`

## Verified Output
```
$ echo "2+2" | ./calc
Enter the expression:
Answer: 4

$ echo "10*5-3" | ./calc
Answer: 47

$ echo "20/4+1" | ./calc
Answer: 6
```
