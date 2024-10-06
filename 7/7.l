%{
    #include "y.tab.h"  // This will include token definitions from yacc
%}

%%

[\t\n ]+ ;  /* Ignore whitespace, tabs, and newlines */
"int"|"float"|"char"|"void" { return TYPE; }
[a-zA-Z][a-zA-Z0-9_]* { return IDEN; }
[0-9]+ { return NUM; }
. { return yytext[0]; } /* Return other single characters directly */

%%
