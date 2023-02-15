open Ast 

let () =
  let lex_buf = Lexing.from_channel stdin in
  let parsed_expr = Parser.program Scanner.token lex_buf in
  print_string (Ast.string_of_program parsed_expr)