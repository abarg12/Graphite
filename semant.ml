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


  (* Collect function declarations for built-in functions: no bodies *)
  let built_in_decls = 
    let add_bind map (name, ty) = StringMap.add name {
      typ = Void; fname = name; 
      formals = [(ty, "x")];
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("print", Int);]
  in

  let functions = built_in_decls in 
  
  (* check if binding is of void type, then add to symbol table *)
  let bind_var (scope : symbol_table) x t =
    match t with
      Void -> raise (Failure (x ^ " cannot be of void type"))
      | _ -> { variables = StringMap.add x t scope.variables;
               parent = scope.parent; }
  in

  let find_func s funcs = 
    try StringMap.find s funcs
    with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in

  (* Return a semantically-checked expression, i.e., with a type *)
  let rec expr scope funcs e =
    match e with
      Literal l -> (Int, SLiteral l)
    | BoolLit l -> (Bool, SBoolLit l)
    | String s -> (String, SString s)
    | Fliteral f -> (Float, SFliteral f)
    | Call(fname, args) ->
      let args' = List.map (expr scope funcs) args in
      ((find_func fname funcs).typ, SCall(fname, args')) 
    | _ -> raise (Failure("expr: not implemented"))
  in


  (*** confirm that expression evaluates to a boolean ***)
  let check_bool_expr scope funcs e = 
    let (t', e') = expr scope funcs e
    and err = "expected Boolean expression in " ^ string_of_expr e
    in if t' != Bool then raise (Failure err) else (t', e') 
  in

  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt scope funcs s =
    match s with
      Expr e -> SExpr (expr scope funcs e)
    | If(p, b1, b2) ->
          SIf(check_bool_expr scope funcs p, check_stmt scope funcs b1, check_stmt scope funcs b2) 
    | For(e1, e2, e3, st) ->
	        SFor(expr scope funcs e1, check_bool_expr scope funcs e2, 
               expr scope funcs e3, check_stmt scope funcs st)
    | While(p, s) ->
          SWhile(check_bool_expr scope funcs p, check_stmt scope funcs s)
    | Return e -> SReturn (expr scope funcs e) (** TODO: in the function body that holds 
                                    this return, look at the type of
                                    e returned and make sure it matches
                                    function return type in func def **)
    | Block(bs) -> 
        check_body scope funcs bs
  
  and check_body (scope : symbol_table) funcs b_lines =
  match b_lines with
  | LocalBind(t, x)::rest -> 
      (try
        let _ = find_variable scope x in
        raise (Failure (x ^ " already declared"))
      with Not_found -> check_body (bind_var scope x t) funcs rest)
  | LocalBindAssign(t, x, e)::rest -> 
      (try
        let _ = find_variable scope x in
        raise (Failure (x ^ " already declared"))
      with Not_found -> check_body (bind_var scope x t) funcs rest )
  | LocalStatement(s)::rest -> 
      let _ = check_stmt scope funcs s in
      check_body scope funcs rest
  |_ -> raise (Failure ("not implemented yet"))
   
in 

  (* Add function name to symbol table *)
  let add_func map fd = 
    let built_in_err = "function " ^ fd.fname ^ " may not be defined"
    and dup_err = "duplicate function " ^ fd.fname
    and make_err er = raise (Failure er)
    and n = fd.fname (* Name of the function *)
    in match fd with (* No duplicate functions or redefinitions of built-ins *)
          _ when StringMap.mem n built_in_decls -> make_err built_in_err
        | _ when StringMap.mem n map -> make_err dup_err  
        | _ ->  StringMap.add n fd map 
  in


  (* check for duplicates and check if bindings have void type *)
  let rec check_decls (scope : symbol_table) funcs binds =
    match binds with
      Bind(t, x)::rest ->
        (try
          let _ = find_variable scope x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var scope x t) funcs rest)
    | BindAssign(t, x, e)::rest ->
        (try
          let _ = find_variable scope x in
          raise (Failure (x ^ " already declared"))
        with Not_found -> check_decls (bind_var scope x t) funcs rest )
    | Statement(s)::rest ->
      let _ = check_stmt scope funcs s in
      check_decls scope funcs rest
    | Fdecl(b)::rest -> 
      let update_funcs = add_func funcs b in 
      let new_scope = { variables = StringMap.empty; parent = Some scope; } in
      let _ = check_stmt new_scope update_funcs b.body in
      check_decls scope update_funcs rest
    (* you have to add a new scope for this functions local variables *)
    |_ -> raise (Failure ("not implemented yet"))
  in 

  let globals = { variables = StringMap.empty; parent = None; } in
  
check_decls globals built_in_decls decls
