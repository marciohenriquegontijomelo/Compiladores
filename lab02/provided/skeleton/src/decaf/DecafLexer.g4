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
INT : 'int';
BOOLEAN : 'boolean';
BOOLEANLITERAL : 'true'|'false';
BREAK : 'break';
CALLOUT : 'callout';
CLASS : 'class';

PROGRAM : 'Program';

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


WS_ : [ \t\r\n]+ -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

ID  : (LETRA|'_')(LETRA|NUMBER|'_')*;
CHAR : '\'' (ESC|LETRA|NUMBER|SYMBOLCHAR) '\'';
STRING : '"'(LETRA|NUMBER|SYMBOLSTR)* '"';
INTILITERAL : NUMBER(NUMBER)*;
HEXLITERAL : '0x'(NUMBER|HEXDEC)+;

fragment ESC :  '\\' ('n'|'t'|'\\'|'"');
fragment LETRA : ('a'..'z'|'A'..'Z');
fragment NUMBER: ('0'..'9');
fragment SYMBOLSTR : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
fragment SYMBOLCHAR : (' '|'!'|'#'|'$'|'%'|'&'|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~');
fragment HEXDEC : ('a'..'f'|'A'..'F');

