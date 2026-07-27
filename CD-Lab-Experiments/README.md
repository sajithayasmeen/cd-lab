# CS4501 — Compiler Design Lab (Experiments 1–6)

Chennai Institute of Technology · Dept. of CSE

Each experiment is in its own folder with:
- The `.l` (Flex) and, where needed, `.y` (Bison) source files
- A `build.sh` script that compiles and runs it
- A `README.md` with exact commands and verified output
- Any sample input file it needs

All six were actually compiled and executed to confirm they work before
being added here (two of them — Exp 5 and Exp 6 — had bugs in the
original grammar that would not have compiled/worked as-is; see the
notes in their individual READMEs for what was fixed and why).

## One-time setup (Ubuntu/Debian/WSL)
```bash
sudo apt-get update
sudo apt-get install -y flex bison gcc
```

## Running any experiment
```bash
cd Exp<N>_.../
chmod +x build.sh
./build.sh
```

## Folder index
| # | Folder | Experiment |
|---|--------|------------|
| 1 | `Exp1_Lexical_Analyzer_SymbolTable` | Lexical analyzer for identifiers/constants/comments/operators + symbol table |
| 2 | `Exp2_Lexical_Analyzer_LEX` | Lexical analyzer for keywords, identifiers, numbers, operators, delimiters, preprocessor directives |
| 3 | `Exp3_Arithmetic_Expression` | Recognize a valid arithmetic expression (+, -, *, /) |
| 4 | `Exp4_Valid_Variable` | Recognize a valid variable name |
| 5 | `Exp5_Control_Structures` | Recognize valid C control-structure syntax (if/while/for/switch) |
| 6 | `Exp6_Calculator` | Calculator with operator precedence using LEX + YACC |

## Pushing to GitHub
```bash
git init
git add .
git commit -m "CD Lab Exp 1-6: verified working programs"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```
