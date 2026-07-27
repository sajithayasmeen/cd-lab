# Exp 4 — Recognize a Valid Variable

A valid variable starts with a letter, followed by any number of letters or digits.
Implemented using FLEX + BISON.

## Files
- `Exp4_valvar.l` — Flex source
- `Exp4_valvar.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp4_valvar.l
bison -d Exp4_valvar.y
gcc lex.yy.c Exp4_valvar.tab.c -o valvar -lfl
./valvar
```
Type a variable name and press Enter, e.g. `add1`

## Verified Output
```
$ echo "add"  | ./valvar   -> Valid variable
$ echo "add1" | ./valvar   -> Valid variable
$ echo "1add" | ./valvar   -> Invalid variable
```
