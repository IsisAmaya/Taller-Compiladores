%{
/* Definition section */
#include<stdio.h>
%}


/* Rule Section */


%%


S: '(' S ')' {$$=$2;}
| '[' S ']' {$$=$2;}
| '{' S '}' {$$=$2;}
|
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
