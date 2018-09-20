parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}


program: CLASS PROGRAM LCURLY (field_decl)* (method_decl)* RCURLY;

field_decl: ( type id | type id ACOLCH intileral FCOLCH) 
		(COMMA (type id | type id ACOLCH intileral FCOLCH) )* SEMICOLON;

method_decl: (type | VOID) (id) PARE (type id (COMMA (type id))* PARD block;

block: LCURLY (var_decl)* (statement)* RCURLY;

var_decl: type (id (COMMA id))* SEMICOLON;

type: INT | BOOLEAN;

statement: location assign_op expr SEMICOLON
	| method_call SEMICOLON
	| IF PARE expr PARD block (ELSE block)*
	| FOR id DEFINE expr SEMICOLON expre block
	| RETURN expr* SEMICOLON
	| BREAK SEMICOLON
	| CONTINUE SEMICOLON
	| block;

assign_op: DEFINE | DECL | INC;

method_call: method_name PARE (expr (COMMA expr))* PARD
	| CALLOUT PARE string_literal (callout_arg (COMMA callout_arg))* PARD;

method_name: id;

location: id
	| id ACOLCH expr FCOLCH;

expr: location
	| method_call
	| literal
	| expr bin_op expr
	| MENUS expr
	| INTERR expr
	| PARE expr PARD;

callout_arg: expr | string_literal;

bin_op: arith_op | rel_op | eq_op | cond_op;

arith_op: MAIS | MENUS | MULT | DIV | MOD;

rel_op: MAIOR | MENOR | MENORIGUAL | MAIORIGUAL;

eq_op: EQ | NEG;

cond_op: E | OU;

literal: int_literal | char_literal | bool_literal;

id: alpha alpha_num*;

alpha_num: alpha | digit;

alpha: LETRA;

digit: NUM;

hex_digit: digit | HEXDEC*;

int_literal: decimal_literal | hex_literal;

decimal_literal: digit digit*;

hex_literal: 0X hex_digit hex_digit*;

bool_literal: BOOLEANLITERAL;

char_literal: CHAR*;

string_literal: CHAR*;



