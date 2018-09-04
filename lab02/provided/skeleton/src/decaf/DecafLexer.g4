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

ID  : (LETRA|'_')(LETRA|NUM|'_')*;

CHAR : '\'' (ESC|NUM|LETRA|SYMBOLCHAR) '\'';
HEXLITERAL : '0x'(NUM|HEXDEC)+;
STRING : '"'(LETRA|NUM|SYMBOLSTR)*'"';
INTILITERAL : NUM(NUM)*~'x';

fragment ESC :  '\\' ('n'|'t'|'\\'|'"');
fragment NUM : ('0'..'9');
fragment LETRA : ('a'..'z'|'A'..'Z');
fragment HEXDEC : ('a'..'f'|'A'..'F');

fragment SYMBOLSTR :
(' '| '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*' | '+' |','| '-' | '.' | '/' | ':' | ';' | '<' | '=' | '>' | '?' |'@'| ']' | '^' | '_' | '`' | '{' | '|' | '}' | '~' | '\\\'' | '\t' | '"' | '\\' );
fragment SYMBOLCHAR :
(' '|'!'|'#'|'$'|'%'|'&'|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~');

