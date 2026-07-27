# Exp 5 — Recognize Valid C Control-Structure Syntax

Recognizes if/if-else, while, for, and switch-case constructs using FLEX + BISON.

> Note: the original textbook grammar for `stmt` only expanded into
> `if_stmt | while_stmt | for_stmt | switch_stmt` with no base case
> (no simple assignment or block statement), so it could never terminate
> and Bison reported "start symbol does not derive any sentence".
> This version adds `assign_stmt` (`id = value;`) and `block`
> (`{ ... }`) rules so real control-structure statements can be parsed.

## Files
- `Exp5_control.l` — Flex source
- `Exp5_control.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp5_control.l
bison -d Exp5_control.y
gcc lex.yy.c Exp5_control.tab.c -o control -lfl
./control
```
Type a control statement and press Enter, e.g. `if (x < 5) { y = 10; }`

## Verified Output
```
$ echo "if (x < 5) { y = 10; }" | ./control
Enter a C control structure syntax:
Valid control structure syntax.
```
