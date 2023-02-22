/* Ocamlyacc parser for MicroC */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE LBRAC RBRAC COMMA PLUS MINUS TIMES DIVIDE ASSIGN COLON NEWLINE DOT ARROW
%token NOT EQ NEQ LT LEQ GT GEQ AND OR INTER UNION DIFF XOR
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID LIST STRING_T STRUCT 
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT STRING
%token NODE EDGE GRAPH 
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
%nonassoc ARROW
%right NOT

%%

program:
  decls EOF { $1 }

decl: 
   fdecl { Fdecl $1 }
 | vdecl { Bind $1 }
 | bind_assign { BindAssign $1 }

decls:
   /* nothing */ { [] }
 | decls decl { $2 :: $1 }

//(***TODO: change to allow for interchangeable formals and locals, in microC all
//          all variable declarations come before statements ***)
fdecl:
   //typ ID LPAREN formals_opt RPAREN newline_opt LBRACE NEWLINE vdecl_list stmt_list RBRACE newline_or_eof 
   typ ID LPAREN formals_opt RPAREN LBRACE func_body RBRACE 
     { { typ = $1;
         fname = $2;
         formals = List.rev $4;
         body = (List.rev (fst $7), List.rev (snd $7)) } }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { $1 }

formal_list:
    typ ID                   { [($1,$2)]     }
  | formal_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    INT      { Int    }
  | BOOL     { Bool   }
  | FLOAT    { Float  }
  | VOID     { Void   }
  | NODE     { Node   } 
  | EDGE     { Edge   }
  | GRAPH    { Graph  }
  | STRING_T { String }
  | LIST     { List   }
  | STRUCT   { Struct }

func_body:
  /* nothing */ { ([], [])               }
  | func_body vdecl { (($2 :: fst $1), snd $1) }
  | func_body stmt  { (fst $1, ($2 :: snd $1)) }


/* A list of declarations is a tuple of two lists:
     the first is the bind-assign declarations,
     the second is just variable bindings without initializations */
vdecl_list:
                           { ([], []) }
  | vdecl_list vdecl       { (fst $1, ($2 :: snd $1)) }
  | vdecl_list bind_assign { (($2 :: fst $1), snd $1) }


vdecl:
    typ ID SEMI  { ($1, $2) }

bind_assign:
    typ ID ASSIGN expr SEMI { ($1, $2, $4) }

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
    expr SEMI                            { Expr $1               }
  | RETURN expr_opt SEMI                 { Return $2             }
  | LBRACE stmt_list RBRACE                 { Block(List.rev $2)    }
  | IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) } //(* might want to change syntax of if and for *)
  | IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7)        }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt  
                                            { For($3, $5, $7, $9)   }
  | WHILE LPAREN expr RPAREN stmt           { While($3, $5)         }

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }


expr: 
    LITERAL          { Literal($1)            }
  | FLIT	           { Fliteral($1)           }
  | BLIT             { BoolLit($1)            }
  | ID               { Id($1)                 }
  | STRING           { String($1)             }
  | expr ARROW  expr { Edge($1, $3)           }
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
  | ID DOT ID        { DotOp($1, $3)          }
  | ID DOT ID ASSIGN expr 
                     { DotAssign($1, $3, $5)  }
  | LBRAC list_opt RBRAC { List($2)           }
  | STRUCT ID ASSIGN LBRACE vdecl_list RBRACE 
          { StructAssign($2, (fst $5, snd $5))}
  | GRAPH ID LPAREN list_opt RPAREN { GraphAssign($2, $4) }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }

/* lists */
list_opt:
    /* nothing */        { [] }
  | expr_list            { List.rev $1 }

expr_list:
    expr                 { [$1] }
  | expr_list COMMA expr { $3 :: $1 }

// flags_opt:
//     /* nothing */ { [] }
//   | flags_list { List.rev $1 }

// flags_list:
//     STRING { [String($1)] }
//   | flags_list COMMA STRING { String($3) :: $1 }