%{
#include <stdio.h>

int flag = 0;
int c = 0;
%}

%%
"//".* { 
    c++;
    fprintf(yyout, " ");
}

"/*" { 
    flag = 1; 
}

"*/" { 
    if(flag == 1) { 
        c++;
        flag = 0;
    }
    fprintf(yyout, " ");
}

[^*"/"]+ {
    if(flag == 1) {
        fprintf(yyout, " ");
    }
}

. {
    if(flag == 1) {
        fprintf(yyout, " ");
    }
}

%%

int main() {
    yyin = fopen("v.txt", "r");
    yyout = fopen("v1.txt", "w");

    if(yyin == NULL) {
        printf("Error opening input file\n");
        return 1;
    }

    if(yyout == NULL) {
        printf("Error opening output file\n");
        fclose(yyin);
        return 1;
    }

    yylex();
    printf("Number of comment lines = %d\n", c);

    fclose(yyin);
    fclose(yyout);

}

