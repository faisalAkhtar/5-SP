/*10. A Program in YACC to evaluate an expression (simple calculator program for addition and subtraction, multiplication, division).*/
%{
%}

%token NUM ID
%left '+' '-'
%left '*' '/'

%%
S :	  T {printf("=%d\n",$$);}
T :	  T '+' T {
		$$=$1+$3;
	}
	| T '-' T {
		$$=$1-$3;
	}
	| T '*' T {
		$$=$1*$3;
	}
	| T '/' T {
		if($3!=0) {
			$$=$1/$3;
		} else {
			printf("Error: divide by zero");
		}
	}
	| '-' T {
		$$=-$2;
	}
	| '(' T ')' {
		$$=$2;
	}
	| ID {
		$$=$1;
	}
	| NUM {
		$$=$1;
	}
	;
%%

int main()
{
	printf("-----------------------------------------------------\n\tCALCULATOR - Enter an expression\n-----------------------------------------------------\n");
	yyparse();
	return 0;
}
int yyerror(char *s)
{
	printf("\nInvalid expression\n");
	return 1;
}