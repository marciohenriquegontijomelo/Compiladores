lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';


WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC|ID) '\'';
STRING : '"' (ESC|ID)* '"';
INTILITERAL : ('0x')ID+;

fragment
ESC :  '\\' ('n'|'\\'|'t'|'"');

fragment
ID  : ('a'..'z' | 'A'..'Z' | '0'..'9');
