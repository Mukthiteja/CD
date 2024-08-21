%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

%token NUM
%left '+' '-'
%left '*' '/'

%%
S: I { printf("Result is %d\n", $1); printf("Valid\n"); }
;

I: I '+' I { $$ = $1 + $3; }
 | I '-' I { $$ = $1 - $3; }
 | I '*' I { $$ = $1 * $3; }
 | I '/' I { 
     if ($3 == 0) {
         yyerror("Division by zero");
         exit(1);
     } else {
         $$ = $1 / $3;
     }
   }
 | '(' I ')' { $$ = $2; } 
 | NUM { $$ = $1; } // just for number 8 ,7 
 | '-' I { $$ = -$2; } // Handle unary minus separately
;

%%

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "%s\n", s);
    exit(1);
}
