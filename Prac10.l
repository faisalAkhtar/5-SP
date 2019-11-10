/*10. A Program in YACC to evaluate an expression (simple calculator program for addition and subtraction, multiplication, division).*/
%{
	#include "y.tab.h"
	int yylval;
%}
%%
[0-9]+ {yylval=atoi(yytext);return NUM;}
[a-zA-Z]+ {return ID;}
\n {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
	return 1;
}