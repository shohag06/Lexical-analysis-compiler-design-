%{
#include<stdio.h>
%}

%%

[ ]+ {printf("White spaces ignored.\n");}
\\\\.*[\n]? {printf("%s is a comment.\n",yytext);}

[0-9]+ {printf("Number.\n");}

^[A-Z]+[0-9a-zA-Z]* {printf("capital letter.\n");}

[*]?[a-z]+[+-]*[a-z]* {printf("an operator\n");}

[0-9]+[.][0-9]+ {printf("Double/Float Number.\n");}

^[aeiou][a-z]*[aeiou]$ {printf("vowel\n");}

. {printf("Unexpected\n %s\n",yytext);}

%%

main(){
	yylex();
}

int yywrap()
{
return 1;
}