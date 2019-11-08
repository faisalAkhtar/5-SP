/*4. Write a Lex program that distinguishes keywords, integers, floats, identifiers, operators, and comments in any simple programming language.*/
%{
	int integers=0,floats=0,keywords=0,identifiers=0,comments=0,operators=0;
%}
%%
[0-9]+ {integers++;}
[0-9]+\.[0-9]+ {floats++;}
"while"|"if"|"else"|"case"|"default"|"for"|"printf"|"scanf"|"return"|"main"|"int"|"float"|"double"|"char" {keywords++;}
[a-zA-Z_][a-zA-Z0-9]* {identifiers++;}
['+'|'-'|'*'|'/'] {operators++;}
. {;}
%%
int main()
{
	yylex();
	printf("\n-----------------------------------------------------\nIntegers: %d\tFloats: %d\tKeywords: %d\tIdentifiers: %d\tOperators: %d\tComments: %d\n-----------------------------------------------------\n",integers,floats,keywords,identifiers,operators,comments);
	return 0;
}