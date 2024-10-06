<h1>Compiler Design Lab Program</h1>
<br>
<h1>Description<h1>
   
Here we will see the execution of the lab program with commands.The commands is given for the ubantu system.

<h1>Commands</h1>

<h3>lex Installation</h3>
To install Lex and Yacc (or their equivalents, Flex and Bison) on Ubuntu, follow these steps:

1. **Update Package List:**
   Run the following command to update the package list:
   ```bash
   sudo apt-get update
   ```

2. **Install Flex (Lex Equivalent):**
   Install Flex by running the command:
   ```bash
   sudo apt-get install flex
   ```

3. **Install Bison (Yacc Equivalent):**
   Install Bison by running the command:
   ```bash
   sudo apt-get install bison
   ```

6. **Verify Installation:**
   After installation, you can verify that Flex and Bison are installed correctly by checking their versions:
   ```bash
   flex --version
   bison --version
   ```

<h1>Programs Execution with input and output</h1>

1. **Number 1a**
   Navigate to the program directory than
   ```bash
   lex 1a.l
   gcc lex.yy.c -ll
   ./a.out
   ```
   INPUT:
   Enter the String:
   ```bash
   Ise department in RVCE.
   ```
   OUTPUT:
   No of lines = 1
    word=4
    character=19
    spaces=4

  **Number 1b**
   Navigate to the program directory than
 
   ```bash
   lex 1b.l
   yacc -d 1b.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   
   INPUT:
   ```bash
   aabb
   ```
   OUTPUT:
   valid
   
2. **Number 2a**
   Navigate to the program directory than
   ```bash
   lex 2a.l
   gcc lex.yy.c -ll
   ./a.out
   ```
   INPUT:
   Enter the Number:
   ```bash
   111 -5423 0 8.1 -1.34
   ```
   OUTPUT:
   Number of positive integers = 2
   Number of negative integers = 1
   Number of positive fractions = 1
   Number of negative fractions = 1

   
  **Number 2b**
   Navigate to the program directory than
 
   ```bash
   lex 2b.l
   yacc -d 2b.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   
   INPUT:
   Enter an expression:
   ```bash
   1+23
   ```
   OUTPUT:
   Result is 24
   Valid

3. **Number 3a**
   Navigate to the program directory than
   ```bash
   lex 3a.l
   gcc lex.yy.c -ll
   ./a.out
   ```
   INPUT:
   v.txt
   OUTPUT:
   Number of comment lines = 5
   
  **Number 3b**
   Navigate to the program directory than
 
   ```bash
   lex 3b.l
   yacc -d 3b.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   INPUT:
   ```bash
   for(int=0;i<n;i++){}
   ```
   OUTPUT:
   Number of nested FOR's are: 1
   
4. **Number 4a**
   Navigate to the program directory than
   ```bash
   lex 4a.l
   gcc lex.yy.c -ll
   ./a.out
   ```
   INPUT:d.c file
   
   OUTPUT:
No. of identifiers=6
,keywords=1,operators=0
   
  **Number 4b**
   Navigate to the program directory than
 
   ```bash
   lex 4b.l
   yacc -d 4b.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   INPUT:
   ```bash
   if(a<B){if(C==0){}}
   ```
   OUTPUT:
   Number of nested IF's are: 2 

**Number 5**
Navigate to the program directory than
   ```bash
   lex 5.l
   yacc -d 5.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   INPUT:
   ```bash
   int a[10], b, c;
   float x, y;
   char name[50];
   double z;
   ```
   OUTPUT:
   Total number of variables declared: 7

   **Number 6**
   Navigate to the program directory than
   ```bash
   lex 6.l
   yacc -d 6.y
   cc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   INPUT:
   Enter the Expression (e.g. a = b + c;):
   ```bash
   a=b+c;
   ```
   OUTPUT:
   Three-Address Code:
   T = b + c
   U = a = T

   Quadruple Code:
   0	+	b	c	T
   1	=	a	T	U

   Triple Code:
   0	+	b	c
   1	=	a	T




   

   
   
   
