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
    | String s -> (String, SString s)
    | Call(fname, args) ->
      let args' = List.map (expr scope) args in
      (Void, SCall(fname, args'))
    | _ -> raise (Failure("expr: not implemented"))
  in

  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt scope s =
    match s with
      Expr e -> SExpr (expr scope e)
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
  in let globals = { variables = StringMap.empty; parent = None; }
in
check_decls globals decls
