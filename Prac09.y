/*9. Write a YACC program to find the validity of a given expression (for operators + - * and /)A program in YACC which recognizes a valid variable which starts with letter followed by a digit. The letter should be in lowercase only.*/
%{
#include <stdio.h>
%}

%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%
E : E '+' E
	| E '-' E
	| E '*' E
	| E '/' E
	| '-' NUMBER
	| '('E')'
	| NUMBER
	| ID
	;
%%

int main()
{
	printf("Enter the expression : ");
	yyparse();
	printf("\n-----------------------------------------------------\nExpression is valid\n-----------------------------------------------------\n");
}

int yyerror(char *s)
{
	printf("\n-----------------------------------------------------\nExpression is invalid\n-----------------------------------------------------\n");
}