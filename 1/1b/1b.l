%{
#include "y.tab.h"
%}

%%

"a" { return 'a'; }
"b" { return 'b'; }
"c" { return 'c'; }
.    { return yytext[0]; }

\n   { return 0; }  // Handle newline character properly

%%

int yywrap() {
    return 1;
}

