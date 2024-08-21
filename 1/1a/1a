%{
int l = 0, w = 0, s = 0, c = 0;
%}

%%

[.] {l++;}
[ ] {s++;}
[\t] {s+=4;}
[a-zA-Z]+ {w++; c=c+ yyleng;}
. ;
\n return 0;

%%

int main(){
	printf("Enter the String\n");
	yylex();
	printf("No of lines = %d\n word=%d\n character=%d\n spaces=%d\n",l,w,c,s);
}	

