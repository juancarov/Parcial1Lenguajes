grammar Exp;

// parser
prog : expr+ EOF ;
expr : 'exp' '(' NUM ',' NUM ')' ;

// lexer
NUM : '-'? [0-9]+ ('.' [0-9]+)? ; // acepta negativos y decimales
WS  : [ \t\r\n]+ -> skip ;

