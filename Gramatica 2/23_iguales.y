%{
/* Definition section */
#include<stdio.h>
%}

%start E

%token NUMBER1

%token NUMBER2

%token NUMBER3

/* Rule Section */

%%

E: NUMBER1 E {$$=$2;}
| B |
;
B: NUMBER2 B C {$$=$2;}| NUMBER2 C
;
C: NUMBER3


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