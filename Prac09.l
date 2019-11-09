/*9. Write a YACC program to find the validity of a given expression (for operators + - * and /)A program in YACC which recognizes a valid variable which starts with letter followed by a digit. The letter should be in lowercase only.*/
%{
	#include "y.tab.h"
%}
%%
[0-9]+ {return NUMBER;}
[a-z]+ {return ID;}
\n {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
	return 1;
}