(* Semantic checking for the MicroC compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

type symbol_table = {
  variables : typ StringMap.t;
  parent : symbol_table option;
}

(* steven's microc-like global stuff *)
(*
  (* transforms all binds to bindassigns (for consistency) *)
  (* ignores non-bindings (statements, function declarations) *)
  let rec transform_binds decls = function
      Bind(t, x)         ::rest -> BindAssign(t, x, SNoexpr)::transform_binds rest
    | BindAssign(t, x, e)::rest -> BindAssign(t, x, e)      ::transform_binds rest
    | _                  ::rest ->                            transform_binds rest
  in
  let check_binds to_check = function
    let compare_names (_, n1, _) (_, n2, _) = compare n1 n2 in
    let check_it checked binding =
      in match binding with
        (Void, x, _) -> raise (Failure (x ^ " cannot be of void type"))
      | (_, n1, _) -> match checked with
                          ((_, n2, _)::_) when n1 = n2 -> raise (Failure (n1 ^ " already declared"))
                        | _ -> binding::checked
    in
    List.fold_left check_it [] (List.sort compare_names (transform_binds to_check))
  in
  let globals = check_binds decls in *)
(* end steve's microc-liek globasl*)


let check (decls) =
  let rec find_variable (scope : symbol_table) name =
    try
    (* try to find binding in nearest block *)
      StringMap.find name scope.variables
    with Not_found -> (* Try looking in outer blocks *)
      match scope.parent with
        Some(parent) -> find_variable parent name
      | _ -> raise Not_found
  in
  (* check if binding is of void type, then add to symbol table *)
  let bind_var (scope : symbol table) t x =
    match t with
      Void -> raise (Failure (x ^ " cannot be of void type"))
      _ -> StringMap.add x t scope
  in
  (* check for duplicates and check if bindings have void type *)
  let check_decls st binds =
    match binds with
      Bind(t, x)::rest ->
        try
          let _ = find_variable st x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var st t x) rest
    | BindAssign(t, x, e)::rest ->
        try
          let _ = find_variable st x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var st t x) rest
    | _ -> raise (Failure ("not implemented yet"))
    (* | Statement(s)::rest ->
        let _ = check_stmt st s in
        check_binds st' rest
    | Fdecl(fdecl)::rest -> check_fdecls           *)

  (* Return a semantically-checked expression, i.e., with a type *)
  let rec expr = function
      Literal l -> (Int, SLiteral l)
    | String s -> (String, SString s)
    | Binop(e1, op, e2) as e -> 
          let (t1, e1') = expr e1 
          and (t2, e2') = expr e2 in
          (* All binary operators require operands of the same type *)
          let same = t1 = t2 in
          (* Determine expression type based on operator and operand types *)
          let ty = match op with
            Add | Sub | Mult | Div when same && t1 = Int   -> Int
          | Add | Sub | Mult | Div when same && t1 = Float -> Float
          | Equal | Neq            when same               -> Bool
          | Less | Leq | Greater | Geq
                     when same && (t1 = Int || t1 = Float) -> Bool
          | And | Or when same && t1 = Bool -> Bool
          | _ -> raise (
	      Failure ("illegal binary operator " ^
                       string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                       string_of_typ t2 ^ " in " ^ string_of_expr e))
          in (ty, SBinop((t1, e1'), op, (t2, e2')))
    | Call(fname, args) ->
      
      let args' = List.map expr args in
      (Void, SCall(fname, args'))
      (*(Int, SCall(fname, SString fname))*)
    | _ -> raise (Failure("expr: not implemented"))
  in

  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt = function
      Expr e -> SExpr (expr e)
    | _ -> raise (Failure("stmt: not implemented"))
  in 

  (* let rec check_decl = function
      Statement s -> SStatement (check_stmt s)
    | BindAssign (typ, s, e) -> let e' = expr e in
                                SBindAssign (typ, s, e')
  (*| Bind (typ s)
    |  Fdecl           *)
    | _ -> raise (Failure("decl: not implemented"))
  in *)
 
  (* Collect all other function names into one symbol table 
  let function_decls = List.fold_left add_func built_in_decls functions
  in *)
  let globals = { variables = StringMap.empty; parent = None; } in
  check_decls globals decls
