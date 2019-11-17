/*4. Write a Lex program that distinguishes keywords, integers, floats, identifiers, operators, and comments in any simple programming language.*/
%{
%}
%%
[0-9]+ {printf("int\n");}
[0-9]+\.[0-9]+ {printf("float\n");}
"while"|"if"|"else"|"case"|"default"|"for"|"printf"|"scanf"|"return"|"main"|"int"|"float"|"double"|"char" {printf("keyword\n");}
[a-zA-Z_][a-zA-Z0-9]* {printf("identifier\n");}
['+'|'-'|'*'|'/'] {printf("operator\n");}
"//".*\n {printf("comment\n");}
. {;}
%%
int main()
{
	yylex();
	return 0;
}