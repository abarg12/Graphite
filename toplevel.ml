(* read program from a file and then print the AST *)

let () =
(*    let usage_msg = "usage: ./toplevel.native [file.gp]" in
    let channel = ref stdin in
    Arg.parse (fun file -> channel := open_in file) usage_msg;
*)
    let lexbuf = Lexing.from_channel stdin in
    let ast = Parser.program Scanner.token lexbuf in
    print_string (Ast.string_of_program ast)
