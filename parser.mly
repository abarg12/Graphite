/* Ocamlyacc parser for MicroC */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA PLUS MINUS TIMES DIVIDE ASSIGN COLON NEWLINE
%token NOT EQ NEQ LT LEQ GT GEQ AND OR INTER UNION DIFF XOR
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT STRING
%token NODE //(*TODO: how do we represent the ocaml type of a NODE? We can't just put <record> probably?*)
%token EOF

%start program
%type <Ast.program> program

%nonassoc NOELSE
%nonassoc ELSE
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left INTER UNION DIFF XOR
%left PLUS MINUS
%left TIMES DIVIDE
%right NOT

%%

program:
  decls EOF { $1 }

decls:
   /* nothing */ { ([], [])               }
 | decls vdecl { (($2 :: fst $1), snd $1) }
 | decls fdecl { (fst $1, ($2 :: snd $1)) }

//(***TODO: change to allow for interchangeable formals and locals, in microC all
//          all variable declarations come before statements ***)
fdecl:
   //typ ID LPAREN formals_opt RPAREN newline_opt LBRACE NEWLINE vdecl_list stmt_list RBRACE newline_or_eof 
   typ ID LPAREN formals_opt RPAREN newline_opt LBRACE NEWLINE func_body RBRACE newline_or_eof 
     { { typ = $1;
         fname = $2;
         formals = List.rev $4;
         body = (List.rev (fst $9), List.rev (snd $9)) } }

newline_opt: 
            { [] } 
  | NEWLINE { [] }

newline_or_eof:
    EOF           { [] }
  | NEWLINE       { [] }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { $1 }

formal_list:
    typ ID                   { [($1,$2)]     }
  | formal_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    INT   { Int   }
  | BOOL  { Bool  }
  | FLOAT { Float }
  | VOID  { Void  }
  | NODE  { Node  } //(* is this correct way to list new node type *)

func_body:
  /* nothing */ { ([], [])               }
  | func_body vdecl { (($2 :: fst $1), snd $1) }
  | func_body stmt  { (fst $1, ($2 :: snd $1)) }

vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 }

//(*** TODO: add addtional rule to allow for declarations and assignment in one line ***)
vdecl:
   typ ID newline_or_eof  { ($1, $2) }

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
    expr NEWLINE                            { Expr $1               }
  | RETURN expr_opt NEWLINE                 { Return $2             }
  | LBRACE NEWLINE stmt_list RBRACE NEWLINE { Block(List.rev $3)    }
  | IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) } //(* might want to change syntax of if and for *)
  | IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7)        }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt  
                                            { For($3, $5, $7, $9)   }
  | WHILE LPAREN expr RPAREN stmt           { While($3, $5)         }

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }


//(*** do we add node as an expression? ***)
expr:
    LITERAL          { Literal($1)            }
  | FLIT	           { Fliteral($1)           }
  | BLIT             { BoolLit($1)            }
  | ID               { Id($1)                 }
  | expr PLUS   expr { Binop($1, Add,   $3)   }
  | expr MINUS  expr { Binop($1, Sub,   $3)   }
  | expr TIMES  expr { Binop($1, Mult,  $3)   }
  | expr DIVIDE expr { Binop($1, Div,   $3)   }
  | expr EQ     expr { Binop($1, Equal, $3)   }
  | expr NEQ    expr { Binop($1, Neq,   $3)   }
  | expr LT     expr { Binop($1, Less,  $3)   }
  | expr LEQ    expr { Binop($1, Leq,   $3)   }
  | expr GT     expr { Binop($1, Greater, $3) }
  | expr GEQ    expr { Binop($1, Geq,   $3)   }
  | expr AND    expr { Binop($1, And,   $3)   }
  | expr OR     expr { Binop($1, Or,    $3)   }
  | expr UNION  expr { Setop($1, Union, $3)   }
  | expr INTER  expr { Setop($1, Inter, $3)   }
  | expr DIFF   expr { Setop($1, Diff, $3)    }
  | expr XOR    expr { Setop($1, Xor, $3)     }
  | MINUS expr %prec NOT { Unop(Neg, $2)      }
  | NOT expr         { Unop(Not, $2)          }
  | ID ASSIGN expr   { Assign($1, $3)         }
  | ID LPAREN args_opt RPAREN { Call($1, $3)  } 
  | LPAREN expr RPAREN { $2                   }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }
