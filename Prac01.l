/*1. Write a Lex program to count the number of lines and characters in the input file.*/
%{
	int lines=1, ch=0;
%}
%%
\n {
	lines++;
	ch++;
}
. {
	ch++;
}
%%
int main()
{
	yyin= fopen("example.c","r");
	yylex();
	printf("\n-----------------------------------------------------\nLines = %d, characters = %d\n-----------------------------------------------------\n",lines,ch);
	return 0;
}