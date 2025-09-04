%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

extern int yylex();
extern FILE *yyin;

void yyerror(const char *s);
%}

%union {
    double fval;
}

%token <fval> NUM
%token RAIZ3
%type <fval> exp

%%

input:
    /* vacío */
  | input exp '\n'   { printf("= %f\n", $2); }
  ;

exp:
    NUM                 { $$ = $1; }
  | exp '+' exp         { $$ = $1 + $3; }
  | exp '-' exp         { $$ = $1 - $3; }
  | exp '*' exp         { $$ = $1 * $3; }
  | exp '/' exp         { $$ = $1 / $3; }
  | '(' exp ')'         { $$ = $2; }
  | '-' exp             { $$ = -$2; }
  | RAIZ3 '(' exp ')'   { $$ = cbrt($3); }   /* <- aquí la raíz cúbica */
  ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(int argc, char **argv) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
    }
    yyparse();
    return 0;
}

