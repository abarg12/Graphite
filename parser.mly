%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA PLUS MINUS TIMES DIVIDE ASSIGN COLON
%token NOT EQ NEQ LT LEQ GT GEQ AND OR
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT NULL
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT
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

fdecl:
   ty ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
     { { ty = $1;
	 fname = $2;
	 formals = List.rev $4;
	 locals = List.rev $7;
	 body = List.rev $8 } }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { $1 }

formal_list:
    ty ID                   { [($1,$2)]     }
  | formal_list COMMA ty ID { ($3,$4) :: $1 }

ty:
    INT   { Int   }
  | BOOL  { Bool  }
  | FLOAT { Float }
  | NULL  { Null  }

vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 }

vdecl:
   ty ID SEMI { ($1, $2) }

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
    expr SEMI                               { Expr $1               }
  | RETURN expr_opt SEMI                    { Return $2             }
  | LBRACE stmt_list RBRACE                 { Block(List.rev $2)    }
  | IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) }
  | IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7)        }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt
                                            { For($3, $5, $7, $9)   }
  | WHILE LPAREN expr RPAREN stmt           { While($3, $5)         }

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }

expr:
    LITERAL          { IntLit($1)            }
  | FLIT	     { Fliteral($1)           }
  | BLIT             { BoolLit($1)            }
  | ID               { Id($1)                 }
  | expr PLUS   expr { BinExp($1, Add,   $3)   }
  | expr MINUS  expr { BinExp($1, Sub,   $3)   }
  | expr TIMES  expr { BinExp($1, Mult,  $3)   }
  | expr DIVIDE expr { BinExp($1, Div,   $3)   }
  | expr EQ     expr { BinExp($1, Eq, $3)   }
  | expr NEQ    expr { BinExp($1, Neq,   $3)   }
  | expr LT     expr { BinExp($1, Less,  $3)   }
  | expr LEQ    expr { BinExp($1, Leq,   $3)   }
  | expr GT     expr { BinExp($1, Grtr, $3) }
  | expr GEQ    expr { BinExp($1, Geq,   $3)   }
  | expr AND    expr { BinExp($1, And,   $3)   }
  | expr OR     expr { BinExp($1, Or,    $3)   }
  | MINUS expr %prec NOT { UnExp(Neg, $2)      }
  | NOT expr         { UnExp(Not, $2)          }
  | ID ASSIGN expr   { Assign($1, $3)         }
  | ID LPAREN args_opt RPAREN { Call($1, $3)  }
  | LPAREN expr RPAREN { $2                   }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }
