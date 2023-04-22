%{
/* Definition section */
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

/* Rule Section */
%%
a {
		yylval=atoi(yytext);
		return CARACTER_A;

	}

b {
		yylval=atoi(yytext);
		return  CARACTER_B;

	}
c {
		yylval=atoi(yytext);
		return  CARACTER_C;

	}
[\t] ;

[\n] return 0;

. return yytext[0];

%%

