%{
#include "y.tab.h"
%}

%%
"if"          { return IF; }
"else"        { return ELSE; }
"("           { return LPAREN; }
")"           { return RPAREN; }
"{"           { return LF; }
"}"           { return RF; }
[a-zA-Z_][a-zA-Z0-9_]* { return EXP; } // Match identifiers like a, B, C
[ \t\n]+      { /* ignore whitespace */ }
.             { return yytext[0]; }
%%

