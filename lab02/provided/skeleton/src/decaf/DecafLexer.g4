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

IF : 'if';
ELSE : 'else';
FOR : 'for';
VOID : 'void';
INT : 'boolean';
BOOLEAN : 'boolean';
BOOLEANLITERAL : 'true'|'false';
BREAK : 'break';
CALLOUT : 'callout';
CLASS : 'class';

PROGRAM : 'program';

CONTINUE : 'continue';
RETURN : 'return';
E : '&&';
OU : '||';
DEFINE : '=';

DECL : '-=';
INC : '+=';
INTERR : '!';

EQ : '==';
NEG : '!=';
MAIOR : '>';
MAIORIGUAL : '>=';
MENOR : '<';
MENORIGUAL : '<=';
MAIS : '+';
MENUS : '-';
MULT : '*';
DIV : '/';
MOD : '%';
COMMA : ',';
COLON : ':';
SEMICOLON : ';';
ACOLCH: '[';
FCOLCH: ']';

PARD: ')';
PARE: '(';
0X: '0x';



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

