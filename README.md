## PRACTICAL-LIST

To implement an assembler for a hypothetical language. Programs to get familiar with Lex and Yacc :
1. Write a Lex program to count the number of lines and characters in the input file.
2. Write a Lex program that implements the Caesar cipher: it replaces every letter with the one three letters after in in alphabetical order, wrapping around at Z. e.g. a is replaced by d, b by e, and so on z by c.
3. Write a Lex program that finds the longest word (defined as a contiguous string of upper and lower case letters) in the input.
4. Write a Lex program that distinguishes keywords, integers, floats, identifiers, operators, and comments in any simple programming language.
5. Write a Lex program to count the number of identifiers in a C file.
6. Write a Lex program to count the number of words, characters, blank spaces and lines in a C file.
7. Write a Lex specification program that generates a C program which takes a string “abcd” and prints the following output: abcd abc ab a
8. A program in Lex to recognize a valid arithmetic expression.
9. Write a YACC program to find the validity of a given expression (for operators + - * and /)A program in YACC which recognizes a valid variable which starts with letter followed by a digit. The letter should be in lowercase only.
10. A Program in YACC to evaluate an expression (simple calculator program for addition and subtraction, multiplication, division).
11. Program in YACC to recognize the string „abbb‟, „ab‟ „a‟ of the langauge (an b n , n>=1).
12. Program in YACC to recognize the language (an b , n>=10). (output to say input is valid or not)

## Lex
### Syntax
<b>filename.l</b>
```
%{
	//Declarations and import here
%}
%%
	//Rules here along with functionalities
%%
int main()
{
	yylex();
	//May put some functionalities here as well
	return 1;
}
```

### Compilation
```bash
$ lex filename.l 
$ gcc -o filename lex.yy.c -lfl
$ ./filename
```

## Yacc
### Syntax
<b>filename.l - Lexical Analyzer</b>
```
%{
	//Declarations and import here
%}

%%
	//Rules here and return to Yacc file
%%

int yywrap()
{
	return 1;
}
```
<b>filename.y - Syntactical Analyzer</b>
```
%{
	//Import statements here
%}

%token	//All tokens got from lex here
%left	//Stack to put your operators here. Operators declared on the same line are of equal precedence. New line operators are of higher precedence

%%
	//Grammer here
%%

int main()
{
	yyparse();
	//May put some functionalities here as well
	//exit(0) - Optional
}

int yyerror(char *s)
{
	//What happens if error encounters
	//exit(0) - Optional
}
```

### Compilation
```bash
$ yacc -d filename.y 
$ lex filename.l 
$ gcc -o filename lex.yy.c y.tab.c -w
$ ./filename
```
