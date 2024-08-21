%{
#include <stdio.h>

int p = 0, n = 0, pf = 0, nf = 0;
%}

%%

[+]?[0-9]+                { p++; }
[-][0-9]+                 { n++; }
[0-9]*[.][0-9]+           { pf++; }
[-][0-9]*[.][0-9]+        { nf++; }
\n                       { return 0; }
.|\n                       {/* ignore any other characters*/ }

%%

int main() {
    printf("Enter the numbers:\n");
    yylex();
    printf("Number of positive integers = %d\n", p);
    printf("Number of negative integers = %d\n", n);
    printf("Number of positive fractions = %d\n", pf);
    printf("Number of negative fractions = %d\n", nf);
    return 0;
}

