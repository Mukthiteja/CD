%{
    #include<stdio.h>
    #include<stdlib.h>
    int yyerror();
    int yylex();
%}

%token TYPE IDEN NUM
%left '+' '-'
%left '*' '/'

%%

S: FUN { printf("Accepted\n"); exit(0); } ;

FUN: TYPE IDEN '(' PARAMS ')' BODY ;

BODY: S1 ';' | '{' SS '}' ;

PARAMS: PARAM ',' PARAMS | PARAM | /* empty */ ;

PARAM: TYPE IDEN ;

SS: S1 ';' SS | /* empty */ ;

S1: ASSGN | E | DECL ;

DECL: TYPE IDEN | TYPE ASSGN ;

ASSGN : IDEN '=' E ;

E: E '+' E 
 | E '-' E
 | E '*' E 
 | E '/' E 
 | '-' '-' E 
 | '+' '+' E 
 | E '+' '+' 
 | E '-' '-' 
 | T ;

T: NUM | IDEN ;

%%

int main()
{
    printf("Enter input: ");
    yyparse();
    printf("Successfully parsed input\n");
    return 0;
}

int yyerror()
{
    printf("Syntax ERROR\n");  // Removed yytext from here
    exit(1);  // Exit on error
}
