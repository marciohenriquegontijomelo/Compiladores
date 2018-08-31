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


ID  : (LETRA|'_')(LETRA|NUM|'_')*;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC|NUM|LETRA) '\'';
INTILITERAL : '0x'(NUM|HEXDEC)+;
STRING : '"' (ESC|~'"')* '"';
NUMBER : '-'(NUM)*;

fragment ESC :  '\\' ('n'|'t'|'\\'|'"');
fragment NUM : ('0'..'9');
fragment LETRA : ('a'..'z'|'A'..'Z');
fragment HEXDEC : ('a'..'f'|'A'..'F');

