(* Semantic checking for the MicroC compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

type symbol_table = {
  variables : typ StringMap.t;
  parent : symbol_table option;
}

let check (decls) =

  (* trickle up blocks to find nearest variable instance *)
  let rec find_variable (scope : symbol_table) (name : string) =
    try StringMap.find name scope.variables
    with Not_found ->
      match scope.parent with
        Some(parent) -> find_variable parent name
      | _ -> raise Not_found
  in

  (* check if binding is of void type, then add to symbol table *)
  let bind_var (scope : symbol_table) x t =
    match t with
      Void -> raise (Failure (x ^ " cannot be of void type"))
      | _ -> { variables = StringMap.add x t scope.variables;
               parent = scope.parent; }
  in

  (* Return a semantically-checked expression, i.e., with a type *)
  let rec expr scope e =
    match e with
      Literal l -> (Int, SLiteral l)
    | BoolLit l -> (Bool, SBoolLit l)
    | String s -> (String, SString s)
    | Call(fname, args) ->
      let args' = List.map (expr scope) args in
      (Void, SCall(fname, args'))
    | _ -> raise (Failure("expr: not implemented"))
  in


  (*** confirm that expression evaluates to a boolean ***)
  let check_bool_expr scope e = 
    let (t', e') = expr scope e
    and err = "expected Boolean expression in " ^ string_of_expr e
    in if t' != Bool then raise (Failure err) else (t', e') 
  in

  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt scope s =
    match s with
      Expr e -> SExpr (expr scope e)
    | If(p, b1, b2) ->
          SIf(check_bool_expr scope p, check_stmt scope b1, check_stmt scope b2) 
    | For(e1, e2, e3, st) ->
	        SFor(expr scope e1, check_bool_expr scope e2, 
               expr scope e3, check_stmt scope st)
    | While(p, s) ->
          SWhile(check_bool_expr scope p, check_stmt scope s)
    | Return e -> SReturn (expr scope e) (** TODO: in the function body that holds 
                                    this return, look at the type of
                                    e returned and make sure it matches
                                    function return type in func def **)
    | _ -> raise (Failure("stmt: not implemented"))
        
  in 

  (* check for duplicates and check if bindings have void type *)
  let rec check_decls (scope : symbol_table) binds =
    match binds with
      Bind(t, x)::rest ->
        (try
          let _ = find_variable scope x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var scope x t) rest)
    | BindAssign(t, x, e)::rest ->
        (try
          let _ = find_variable scope x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var scope x t) rest )
    | Statement(s)::rest ->
      let _ = check_stmt scope s in
      check_decls scope rest
    | _ -> raise (Failure ("not implemented yet"))
  in 
  
  let globals = { variables = StringMap.empty; parent = None; }

in
check_decls globals decls
