%{
/* Definition section */
#include<stdio.h>
%}

%token CARACTER_A

%token CARACTER_B

%token CARACTER_C

/* Rule Section */

%%

S: A | B |
;
A: CARACTER_A A CARACTER_C {$$=$2;} | CARACTER_A B {$$=$2;}
;
B: CARACTER_B B CARACTER_C {$$=$2;} | CARACTER_B CARACTER_C
;



%%


int main(void)
{
 return(yyparse());
}

yyerror(s)
char *s;
{
	printf("Error, No pertenece\n");
  fprintf(stderr, "%s\n",s);
}

yywrap()
{
  return(1);
}