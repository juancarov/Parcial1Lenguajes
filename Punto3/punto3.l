%{
#include "punto3.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+(\.[0-9]+)?    { yylval.fval = atof(yytext); return NUM; }
raiz3                { return RAIZ3; }
[+\-*/\n()]           { return yytext[0]; }
[ \t]                { /* ignorar espacios */ }
.                    { /* cualquier otro char lo ignoramos */ }

%%

