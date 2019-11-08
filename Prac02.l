Prac02.l
/*2. Write a Lex program that implements the Caesar cipher: it replaces every letter with the one three letters after in in alphabetical order, wrapping around at Z. e.g. a is replaced by d, b by e, and so on z by c.*/
%{
	char str[10];
	int i=0;
%}
%%
[a-wA-W] {str[i]=(int)str[i]+3; i++;}
[w-zW-Z] {str[i]=(int)str[i]-23; i++;}
%%
int main()
{
	printf("Enter a string: ");
	scanf("%s",str);
	yy_scan_string(str);
	yylex();
	printf("Caesar Ciphered String: %s\n",str);
	return 0;
}