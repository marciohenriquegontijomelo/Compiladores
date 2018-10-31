parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}



program: CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY EOF;

field_decl: type id (COMMA type id)* SEMICOLON;

decl: type ID;
method_decl: (type|VOID) ID PARE (decl (COMMA decl)*)? PARD block;

block: LCURLY var_decl* statement* RCURLY;

var_decl: type ID (COMMA ID)* SEMICOLON;

type: INT | BOOLEAN;

statement: location assign_op expr SEMICOLON
    | method_call SEMICOLON
    | IF PARE expr PARD block (ELSE block)?
    | FOR ID DEFINE expr COMMA expr block
    | RETURN expr? SEMICOLON
    | BREAK SEMICOLON
    | CONTINUE SEMICOLON
    | block ;

assign_op: DEFINE | DECL | INC;

method_call: ID PARE (expr (COMMA expr)*)? PARD | CALLOUT PARE STRING (COMMA callout_arg(COMMA callout_arg)*)? PARD;

location: ID | ID ACOLCH expr FCOLCH;

expr: location
    | method_call
    | literal
    | expr bin_op expr
    | MENUS expr
    | INTERR expr
    | PARE expr PARD;

callout_arg: expr | STRING;

bin_op: arith_op | rel_op | eq_op | cond_op;

arith_op: MAIS | MENUS | MULT | DIV | MOD;

rel_op: MAIOR | MENOR | MENORIGUAL | MAIORIGUAL;

eq_op: EQ | NEG;

cond_op: E|OU;

literal: int_literal | CHAR | BOOLEANLITERAL;

int_literal: INTLITERAL | HEXLITERAL;

id: ID | ID ACOLCH? int_literal FCOLCH?;


