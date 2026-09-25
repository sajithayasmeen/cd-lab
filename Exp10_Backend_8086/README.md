# Exp 10 — Compiler Back-End: TAC to 8086 Assembly

Takes three-address code (TAC) as input and generates equivalent 8086
assembly (MOV/ADD/SUB/MUL/DIV) using FLEX + BISON.

## Files
- `Exp10_backend.l` — Flex source
- `Exp10_backend.y` — Bison grammar
- `build.sh` — builds and runs

## How to run
```bash
chmod +x build.sh
./build.sh
```
Or manually:
```bash
flex Exp10_backend.l
bison -d Exp10_backend.y
gcc lex.yy.c Exp10_backend.tab.c -o backend -lfl
./backend
```
Type TAC statements ending in `;`, then Ctrl+D, e.g.:
```
t1 = a + b;
t2 = t1 - c;
t3 = t2 * d;
t4 = t3 / e;
x = t4;
```

## Verified Output
```
MOV AX, a
ADD AX, b
MOV t1, AX

MOV AX, t1
SUB AX, c
MOV t2, AX

MOV AX, t2
MUL d
MOV t3, AX

MOV AX, t3
MOV DX, 0
MOV BX, e
DIV BX
MOV t4, AX

MOV AX, t4
MOV x, AX
```
