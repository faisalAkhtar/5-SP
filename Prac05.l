/*5. Write a Lex program to count the number of identifiers in a C file.*/
%{
	int Identifiers=0;
%}
%%
"while"|"if"|"else"|"case"|"default"|"for"|"printf"|"scanf"|"return"|"main"|"int"|"float"|"double"|"char" {
	printf("\n Keywords   :  %s", yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* {
	printf("\n Identifier :  %s\t\t%d", yytext, ++Identifiers);
}
[0-9]+ {
	printf("\n Integer    :  %s", yytext);
}
['.'|','|'#'|'{'|'}'|'('|')'|'+'|'*'|'"'|'\''|'<'|'>'|';'|':'|'='|'\'|'%'|'&'] {
	printf("\n Symbols    :  %s", yytext);
}
[\n] ;
%%
int main()
{
	yyin= fopen("example.c","r");
	yylex();
	printf("\n-----------------------------------------------------\nTotal no. of identifiers = %d\n-----------------------------------------------------\n", Identifiers);
	return 0;
}