Here is a proper **README** file that describes the execution of the Compiler Design Lab Programs, including installation steps, commands for running the programs, and expected inputs and outputs.

---

# Compiler Design Lab Programs

## Description

This repository contains a set of lab programs for a Compiler Design course. The programs are written using **Lex** and **Yacc**, and they cover various topics in compiler design, such as lexical analysis, parsing, and code generation.

## Commands

### Installing Lex and Yacc on Ubuntu

Before running the lab programs, you need to install Lex and Yacc (or their equivalents, **Flex** and **Bison**) on your Ubuntu system. Follow the steps below:

1. **Update Package List**  
   Run the following command to update the package list:
   ```bash
   sudo apt-get update
   ```

2. **Install Flex (Lex Equivalent)**  
   Install Flex by running the command:
   ```bash
   sudo apt-get install flex
   ```

3. **Install Bison (Yacc Equivalent)**  
   Install Bison by running the command:
   ```bash
   sudo apt-get install bison
   ```

4. **Verify Installation**  
   After installation, verify that Flex and Bison are installed correctly by checking their versions:
   ```bash
   flex --version
   bison --version
   ```

## Program Execution

Below are the instructions for executing each program. Make sure you navigate to the program directory before running the commands.

### 1. Program 1a: Lexical Analysis
**Command:**
```bash
lex 1a.l
gcc lex.yy.c -ll
./a.out
```
**Input:**
```
Ise department in RVCE.
```
**Output:**
```
No of lines = 1
word = 4
character = 19
spaces = 4
```

### 2. Program 1b: Lex and Yacc Parsing
**Command:**
```bash
lex 1b.l
yacc -d 1b.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
aabb
```
**Output:**
```
valid
```

### 3. Program 2a: Identifying Numbers
**Command:**
```bash
lex 2a.l
gcc lex.yy.c -ll
./a.out
```
**Input:**
```
111 -5423 0 8.1 -1.34
```
**Output:**
```
Number of positive integers = 2
Number of negative integers = 1
Number of positive fractions = 1
Number of negative fractions = 1
```

### 4. Program 2b: Expression Evaluation
**Command:**
```bash
lex 2b.l
yacc -d 2b.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
1+23
```
**Output:**
```
Result is 24
Valid
```

### 5. Program 3a: Comment Line Count
**Command:**
```bash
lex 3a.l
gcc lex.yy.c -ll
./a.out
```
**Input:**
```
v.txt
```
**Output:**
```
Number of comment lines = 5
```

### 6. Program 3b: Nested FOR Loops
**Command:**
```bash
lex 3b.l
yacc -d 3b.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
for(int=0;i<n;i++){}
```
**Output:**
```
Number of nested FOR's are: 1
```

### 7. Program 4a: Identifier, Keyword, and Operator Count
**Command:**
```bash
lex 4a.l
gcc lex.yy.c -ll
./a.out
```
**Input:**
```
d.c
```
**Output:**
```
No. of identifiers = 6, keywords = 1, operators = 0
```

### 8. Program 4b: Nested IF Statements
**Command:**
```bash
lex 4b.l
yacc -d 4b.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
if(a<B){if(C==0){}}
```
**Output:**
```
Number of nested IF's are: 2
```

### 9. Program 5: Variable Declarations
**Command:**
```bash
lex 5.l
yacc -d 5.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
int a[10], b, c;
float x, y;
char name[50];
double z;
```
**Output:**
```
Total number of variables declared: 7
```

### 10. Program 6: Three-Address Code Generation
**Command:**
```bash
lex 6.l
yacc -d 6.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
a=b+c;
```
**Output:**
```
Three-Address Code:
T = b + c
U = a = T

Quadruple Code:
0	+	b	c	T
1	=	a	T	U

Triple Code:
0	+	b	c
1	=	a	T
```

### 11. Program 7: Function Syntax Validation
**Command:**
```bash
lex 7.l
yacc -d 7.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
int main(int a,int b){int x; 
x=a+b;}
```
**Output:**
```
Accepted
```

### 12. Program 8: Assembly Code Generation
**Command:**
```bash
lex 8.l
yacc -d 8.y
cc lex.yy.c y.tab.c -ll
./a.out
```
**Input:**
```
int main() { int a=5; int b=10;a=a+b; printf("sum %d\n",a);}
```
**Output:**
```
movl $5, a
movl $10, b
movl a, %eax
addl b, %eax
movl %eax, a
movl a, %edi
movl $.LC0, %rsi
call printf
.data
    .LC0: .string "Sum %d"
.text
    .globl main
main:
```

## Conclusion

Thank you
