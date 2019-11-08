/*7. Write a Lex specification program that generates a C program which takes a string “abcd” and prints the following output: abcd abc ab a*/
%{
	int i=0,j=0;
%}
%%
[a-zA-Z]* {
	for(i=0; i<yyleng; i++) {
		for(j=0; j<yyleng-i; j++) {
			printf("%c",yytext[j]);
		}
		printf("\n");
	}
}
%%
int main()
{
	yylex();
	return 0;
}