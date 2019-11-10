/*11. Program in YACC to recognize the string „abbb‟, „ab‟ „a‟ of the langauge (an bn, n>=1)*/
%{
	#include "y.tab.h"
%}
%%
a {return A;}
b {return B;}
\n|. {return yytext[0];}
%%
int yywrap()
{
	return 1;
}