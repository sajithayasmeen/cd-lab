# Exp 7 — Generate Three Address Code (TAC)

Uses FLEX + BISON to parse an arithmetic assignment expression and emit
three-address code using temporary variables (t1, t2, ...).

## Files
- `Exp7_tac.l` — Flex source
- `Exp7_tac.y` — Bison grammar
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
flex Exp7_tac.l
bison -d Exp7_tac.y
gcc Exp7_tac.tab.c lex.yy.c -o tac -lfl
./tac
```
Type an expression and press Enter, e.g. `a = b + c * d`

## Verified Output
```
$ echo "a = b + c * d" | ./tac
Enter the expression:
t1 = c * d
t2 = b + t1
a = t2
```
