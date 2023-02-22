(* Ocamllex scanner for MicroC *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
  | "#"      { comment lexbuf }           (* Comments *)
  | "//"     { comment lexbuf }
  | '.'      { DOT }
  | '('      { LPAREN }
  | ')'      { RPAREN }
  | '['      { LBRAC  }
  | ']'      { RBRAC  }
  | '{'      { LBRACE }
  | '}'      { RBRACE }
  | ';'      { SEMI }
  | ':'      { COLON }
  | ','      { COMMA }
  | '+'      { PLUS }
  | '-'      { MINUS }
  | '*'      { TIMES }
  | '/'      { DIVIDE }
  | '='      { ASSIGN }
  | "->"     { ARROW }
  | "=="     { EQ }
  | "!="     { NEQ }
  | '<'      { LT }
  | "<="     { LEQ }
  | ">"      { GT }
  | ">="     { GEQ }
  | "and"    { AND }
  | "or"     { OR }
  | "not"    { NOT }
  | "union"  { UNION }
  | "diff"   { DIFF }
  | "inter"  { INTER }
  | "xor"    { XOR }
  | "if"     { IF }
  | "else"   { ELSE }
  | "for"    { FOR }
  | "while"  { WHILE }
  | "return" { RETURN }
  | "int"    { INT }
  | "bool"   { BOOL }
  | "float"  { FLOAT }
  | "list"   { LIST }
  | "void"   { VOID }
  | "node"   { NODE }
  | "edge"   { EDGE }
  | "graph"  { GRAPH }
  | "string" { STRING_T }
  | "struct" { STRUCT }
  | "true"   { BLIT(true)  }
  | "false"  { BLIT(false) }
  | digits as lxm { LITERAL(int_of_string lxm) }
  | digits '.'  digit* as lxm { FLIT(lxm) }
  | ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
  | '"'['a'-'z' 'A'-'Z' '0'-'9' '_' ' ' '\n' '!' '@' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=']*'"' as lxm { STRING(lxm) }
  | eof { EOF }
  | _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and comment = parse
  "\n" { token lexbuf }
 | eof { EOF }
 | _    { comment lexbuf }
