(* Ocamllex scanner for Graphite *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
  | "#"      { comment lexbuf }           (* Comments *)
  (* brackets *)
  | '('      { LPAREN }
  | ')'      { RPAREN }
  | '['      { LBRAC  }
  | ']'      { RBRAC  }
  | '{'      { LBRACE }
  | '}'      { RBRACE }
  (* delimiters *)
  | ';'      { SEMI }
  | '.'      { DOT }
  | ','      { COMMA }
  (* binary operators *)
  | '+'      { PLUS }
  | '-'      { MINUS }
  | '*'      { TIMES }
  | '/'      { DIVIDE }
  | '='      { ASSIGN }
  (* edge *)
  | "->"     { ARROW }    
  (* comparison operators *)
  | "=="     { EQ }
  | "!="     { NEQ }
  | '<'      { LT }
  | "<="     { LEQ }
  | ">"      { GT }
  | ">="     { GEQ }
  (* logical operators *)
  | "and"    { AND }
  | "or"     { OR }
  | "not"    { NOT }
  (* set operators *)
  | "union"  { UNION }
  | "diff"   { DIFF }
  | "inter"  { INTER }
  | "xor"    { XOR }
  (* statements *)
  | "if"     { IF }
  | "else"   { ELSE }
  | "for"    { FOR }
  | "while"  { WHILE }
  | "return" { RETURN }
  (* types *)
  | "int"    { INT }
  | "bool"   { BOOL }
  | "float"  { FLOAT }
  | "list"   { LIST }
  | "void"   { VOID }
  | "node"   { NODE }
  | "edge"   { EDGE }
  | "graph"  { GRAPH }
  | "string" { STRING_T }
  | "dict"   { DICT }
  (* boolean literals *)
  | "true"   { BLIT(true)  }
  | "false"  { BLIT(false) }
  (* other *)
  | digits as lxm { LITERAL(int_of_string lxm) }
  | digits '.'  digit* as lxm { FLIT(lxm) }
  | ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
  | '"'['a'-'z' 'A'-'Z' '0'-'9' '_' ' ' '\n' '!' '@' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '\\']*'"' as lxm { STRING(lxm) }
  | eof { EOF }
  | _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and comment = parse
  "\n" { token lexbuf }
 | eof { EOF }
 | _    { comment lexbuf }
