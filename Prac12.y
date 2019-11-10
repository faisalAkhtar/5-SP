/*12. Program in YACC to recognize the language (an b , n>=10). (output to say input is valid or not)*/
%{
%}

%token A B

%%
S : A A A A A A A A A A T B '\n'	{printf("Valid string\n");exit(0);}
T : T A | A | ;
%%

int main()
{
	printf("Enter a string : ");
	yyparse();
	return 0;
}

int yyerror(char *s)
{
	printf("Invalid string\n");
	return 1;
}