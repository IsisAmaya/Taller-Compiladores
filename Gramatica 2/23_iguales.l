%{
/* Definition section */
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

/* Rule Section */
%%
1 {
		yylval=atoi(yytext);
		return NUMBER1;

	}

2 {
		yylval=atoi(yytext);
		return NUMBER2;

	}
3 {
		yylval=atoi(yytext);
		return NUMBER3;

	}
[\t] ;

[\n] return 0;

. return yytext[0];

%%

