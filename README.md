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
   gcc lex.yy.c y.tab.c -ll
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
   lex 1b.l
   yacc -d 1b.y
   gcc lex.yy.c y.tab.c -ll
   ./a.out
   ```
   
   INPUT:
   ```bash
   aabb
   ```
   OUTPUT:
   valid

   
   
   
