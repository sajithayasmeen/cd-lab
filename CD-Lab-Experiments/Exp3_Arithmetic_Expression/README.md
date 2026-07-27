# Exp 3 — Recognize a Valid Arithmetic Expression (+, -, *, /)

Uses FLEX + BISON to check whether an input expression is a syntactically
valid arithmetic expression.

## Files
- `Exp3_art_expr.l` — Flex source
- `Exp3_art_expr.y` — Bison grammar
- `build.sh` — builds and runs

## Requirements
```bash
sudo apt-get install flex bison gcc
```

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp3_art_expr.l
bison -d Exp3_art_expr.y
gcc lex.yy.c Exp3_art_expr.tab.c -o art_expr -lfl
./art_expr
```
Type an expression and press Enter, e.g. `a+b*c-d/e`

## Verified Output
```
$ echo "a+b*c-d/e" | ./art_expr
Enter the Expression
valid Expression

$ echo "a=b" | ./art_expr
Enter the Expression
Invalid Expression
```
