%{
#include "y.tab.h"
#include <stdlib.h>
extern int yylval;
%}

%%

[0-9]+    { yylval = atoi(yytext); return NUM; }
[-+*/()]  { return yytext[0]; }
\n        { return 0; }
[ \t]+    { /* Ignore whitespace */ }
.         { return yytext[0]; }

%%

int yywrap() {
    return 1;
}

