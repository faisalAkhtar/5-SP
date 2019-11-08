/*6. Write a Lex program to count the number of words, characters, blank spaces and lines in a C file.*/
%{
	int newlines=0;
	int spaces=0;
	int words=0;
	int characters=0;
%}
%%
[a-zA-Z0-9_]* {
	words++;
	characters+=yyleng;
}
[\n] {
	newlines++;
	characters++;
}
[ ] {
	spaces++;
	characters++;
}
['.'|','|'#'|'{'|'}'|'('|')'|'+'|'*'|'"'|'\''|'\\'|'<'|'>'|';'|':'|'='|'\'|'%'|'&'] {
	characters++;
}
%%
int main()
{
	yyin= fopen("example.c","r");
	yylex();
	printf("\n-----------------------------------------------------\nCharacters = %d\nWords = %d\nBlank spaces = %d\nNew lines = %d\n-----------------------------------------------------\n", characters, words, spaces, newlines);
	return 0;
}