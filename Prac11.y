/*11. Program in YACC to recognize the string „abbb‟, „ab‟ „a‟ of the langauge (an bn , n>=1)*/
%{
%}

%token A B

%%
S : E '\n' 		{printf("Valid string\n");exit(0);}
E : A E B | A B
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