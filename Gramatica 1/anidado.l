%{
/* Definition section */
#include<stdio.h>
#include "y.tab.h"
%}

/* Rule Section */
%%
[\t] ;

[\n] return 0;

. return yytext[0];
%%

