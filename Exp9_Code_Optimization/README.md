# Exp 9 — Simple Code Optimization Techniques

Implements constant folding, algebraic simplification (x+0, x-0, x*1, x/1),
and strength reduction (x*2 -> x+x) while parsing TAC-style assignment
statements.

## Files
- `Exp9_optimize.l` — Flex source
- `Exp9_optimize.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp9_optimize.l
bison -d Exp9_optimize.y
gcc lex.yy.c Exp9_optimize.tab.c -o optimize -lfl
./optimize
```
Type statements ending in `;`, then Ctrl+D, e.g.:
```
a = 2 + 4;
b = d * 1;
c = s * 2;
```

## Verified Output
```
$ printf "a = 2 + 4;\nb = d * 1;\nc = s * 2;\n" | ./optimize
// Constant Folding: 2+4 -> 6
a = 6
// Algebraic Simplification: x*1 -> x
b = d
// Strength Reduction: x*2 -> x+x
c = s + s
```
