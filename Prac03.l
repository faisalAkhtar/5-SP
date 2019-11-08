/*3. Write a Lex program that finds the longest word (defined as a contiguous string of upper and lower case letters) in the input.*/
%{
	int count=0;
	char str[15];
%}
%%
[a-zA-Z]+ {
	if(yyleng>count) {
		count=yyleng;
		for(int i=0; i<count; i++) {
			str[i]=yytext[i];
		}
	}
}
%%
int main()
{
	yylex();
	printf("\n-----------------------------------------------------\nLargest word length: %d\n",count);
	for(int i=0; i<count; i++)
		printf("%c",str[i]);
	printf("\n-----------------------------------------------------\n");
	return 0;
}