/*8. A program in Lex to recognize a valid arithmetic expression.*/
%{
	int braces=0;
%}
%%
"(" {
	if(braces>=0)
		braces++;
}
")" {
	braces--;
}
[0-9a-zA-Z]* {;}
['+'|'-'|'*'|'/'|'%'] {;}
\n {
	if(braces==0)
		printf("-----------------------------------------------------\nValid arithmetic expression\n-----------------------------------------------------\n");
	exit(0);
}
. {
	printf("-----------------------------------------------------\nInvalid arithmetic expression\n-----------------------------------------------------\n");
	exit(0);
}
%%
int main()
{
	yylex();
	return 0;
}