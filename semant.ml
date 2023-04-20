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

  let rec find_loc_variable (scope : symbol_table) (name : string) =
     StringMap.find name scope.variables
  in

  (* Collect function declarations for built-in functions: no bodies *)
  let built_in_decls = 
    let add_bind map (name, ty) = StringMap.add name {
      typ = Void; fname = name; 
      formals = [(ty, "x")];
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("printf", Int);]
  in

  (* TODO: make it so that you can search built in methods for graphs, etc. *)
  let built_in_graph_meths =
    let add_bind map (name, ty) = StringMap.add name {
      typ = Graph(["none"]);
      fname = name;
      formals = [(ty, "x")];
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("add", Node); ]
  in
    

  (* this is where we're gonna add more invariants later heeheehoohoo*)
  let invariants = ["tree"; "connected"]  in
  let fields = ["flag"; "data"; "name"] in
  let graph_meths = built_in_graph_meths in 

  let rec find_elt x lst message = match lst with 
      y::rest when x = y -> true  
    | y::rest -> find_elt x rest message
    | [] -> raise (Failure (message ^ " '" ^ x ^ "' does not exist"))
  in 

  (* make sure that an invariant is a valid invariant *)
  let find_invar x = 
    find_elt x invariants "invariant"
  in 

  let find_field x = 
    find_elt x fields "node field" 
  in
  
  let find_method m data_structs = (* needs to  *)
    let meths = graph_meths (* instead of hard coding graph meths, make it so that you can pattern match and find which ds you want*)
    in  
    try StringMap.find m meths
    with Not_found -> raise (Failure ("method " ^ m ^ " not found in data struct")) 
  in
  
  (* THE ONE MAP OF FUNCTIONS *)
  let functions = built_in_decls in


  let find_func s funcs = 
    try StringMap.find s funcs
    with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in
  (* Add function name to symbol table *)
  let add_func fd funcs = 
    let built_in_err = "function " ^ fd.fname ^ " may not be defined"
    and dup_err = "duplicate function " ^ fd.fname
    and make_err er = raise (Failure er)
    and n = fd.fname (* Name of the function *)
    in match fd with (* No duplicate functions or redefinitions of built-ins *)
          _ when StringMap.mem n built_in_decls -> make_err built_in_err
        | _ when StringMap.mem n funcs -> make_err dup_err  
        | _ -> StringMap.add n fd funcs 
  in

  (* check if binding is of void type, then add to symbol table *)
  let bind_var (scope : symbol_table) x t =
    match t with
      Void -> raise (Failure (x ^ " cannot be of void type"))
      | _ -> { variables = StringMap.add x t scope.variables;
               parent = scope.parent; }
  in

  (* Return a semantically-checked expression, i.e., with a type *)
  let rec expr scope funcs e =
    match e with
      Literal l -> (Int, SLiteral l)
    | BoolLit l -> (Bool, SBoolLit l)
    | String s -> (String, SString s)
    | Fliteral f -> (Float, SFliteral f)
    | Noexpr -> (Void, SNoexpr)
    | Id s -> (find_variable scope s, SId s)
    | Assign(x, e) ->
      (* check if x \in scope *)
      let lt = find_variable scope x in
      let (rt, e') = expr scope funcs e in
      let err = "illegal assignment " ^ x ^ " : " ^ string_of_typ lt ^ " = " ^ string_of_typ rt in
      if lt = rt then (rt, SAssign(x, (rt, e'))) else raise (Failure err)
    | DotOp(var, field) -> 
      let _ = find_variable scope var in
      let _ = List.map find_field fields in
      let (ty, sop)  = match field with 
            "name" -> (find_variable scope (var ^ ".name"), SDotOp(var, field))
          | "flag" -> (Bool, SDotOp(var, field))
          | "data" -> (find_variable scope (var ^ ".data"), SDotOp(var, field))
          | _ -> raise (Failure ("unexpected field"))
      in (ty, sop)
    | Unop(op, e) as ex -> 
        let (t, e') = expr scope funcs e in
        let ty = match op with
          Neg when t = Int || t = Float -> t
        | Not when t = Bool -> Bool
        | _ -> raise (Failure ("illegal unary operator " ^ 
                                string_of_uop op ^ string_of_typ t ^
                                " in " ^ string_of_expr ex))
        in (ty, SUnop(op, (t, e')))
    | Binop(e1, op, e2) as e -> 
        let (t1, e1') = expr scope funcs e1 
        and (t2, e2') = expr scope funcs e2 in
        (* All binary operators require operands of the same type *)
        let same = t1 = t2 in
        (* Determine expression type based on operator and operand types *)
        let ty = match op with
        (* floats not implemented yet *)
          Add | Sub | Mult | Div when same && t1 = Int   -> Int
        (* | Add | Sub | Mult | Div when same && t1 = Float -> Float *)
        | Equal | Neq            when same               -> Bool
        | Less | Leq | Greater | Geq
                    when same && (t1 = Int (*|| t1 = Float*)) -> Bool (* CHANGE HERE *)
        | And | Or when same && t1 = Bool -> Bool
        | _ -> raise (
      Failure ("illegal binary operator " ^
                    string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                    string_of_typ t2 ^ " in " ^ string_of_expr e))
      in (ty, SBinop((t1, e1'), op, (t2, e2')))
    | Setop(e1, setop, e2) as e -> 
        let (t1, e1') = expr scope funcs e1 
        and (t2, e2') = expr scope funcs e2 in
        let same = t1 = t2 in
        let fields = match t1 with 
          Graph(fields) -> fields
          | _ -> raise (
            Failure ("illegal set operator " ^
                          string_of_typ t1 ^ " " ^ string_of_setop setop ^ " " ^
                          string_of_typ t2 ^ " in " ^ string_of_expr e))
        in 

        let ty = match setop with
          Union | Inter | Xor | Diff when same && t1 = Graph(fields) -> Graph(fields)
        | _ -> raise (
          Failure ("illegal binary operator " ^
                    string_of_typ t1 ^ " " ^ string_of_setop setop ^ " " ^
                    string_of_typ t2 ^ " in " ^ string_of_expr e))
        in 
        (ty, SSetop((t1, e1'), setop, (t2, e2')))
    | Call(fname, args) -> (* TODO: fix call and dotcall*)
      let fd = find_func fname funcs in
      let param_length = List.length fd.formals in
        if List.length args != param_length then raise (Failure ("wrong arg num"))
        else let check_call (ft, _) e =
          let (et, e') = expr scope funcs e in
            if ft = et then (ft, e') 
            else raise (Failure ("wrong formal type"))
      in 
      let args' = List.map2 check_call fd.formals args 
      in (fd.typ, SCall(fname, args'))
    | DotCall(ds, mname, args) -> (*find_method takes a data structure and a fname and throws error if not there*)
      let md = find_method mname ds in 
      let param_length = List.length md.formals in
        if List.length args != param_length then raise (Failure ("wrong arg num"))
        else let check_call (mt, _) e =
          let (et, e') = expr scope funcs e in
            if mt = et then (mt, e')
            else raise (Failure ("wrong formal type"))
      in let args' = List.map2 check_call md.formals args
      in
      (md.typ, SDotCall(ds, mname, args'))
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
      (** add another global to tell us which function nwe are in *)
    | Block(bs) -> 
        let new_scope = { variables = StringMap.empty ; parent = Some scope; } in
        SBlock(check_body new_scope funcs bs)
  
  and check_body (scope : symbol_table) funcs b_lines =
  match b_lines with
  | LocalBind(t, x)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with -> 
        match t with 
           Graph(fields) ->
              let _ = List.map find_invar fields in  
              SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest
          | _ -> SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest)
  | LocalBindAssign(t, x, e)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with Not_found -> 
        match t with 
          Graph(fields) ->
              let _ = List.map find_invar fields in  
              SLocalBindAssign(t, x, expr scope funcs e)::check_body (bind_var scope x t) funcs rest (*CHANGEED HERE ASK ABBY*)
          | _ -> SLocalBindAssign(t, x, expr scope funcs e)::check_body (bind_var scope x t) funcs rest)
  | LocalStatement(s)::rest -> 
      let ss = check_stmt scope funcs s in
      SLocalStatement(ss)::check_body scope funcs rest
  | [] -> []
in 

  (* add built in func here *)
  (* check for duplicates and check if bindings have void type *)

  let rec add_formals map formals = match formals with
        (t, str)::rest -> add_formals (StringMap.add str t map) rest
      | [] -> map 
  in 

  let rec check_decls (scope : symbol_table) funcs decls =
    match decls with
      [] -> []
    | Bind(t, x)::rest ->
        (try
          let _ = find_loc_variable scope x in
          raise (Failure (x ^ " already declared in current scope"))
        with Not_found -> 
          match t with 
             Graph(fields) ->
                let _ = List.map find_invar fields in  
                SBind(t, x)::check_decls (bind_var scope x t) funcs rest
            | _ -> SBind(t, x)::check_decls (bind_var scope x t) funcs rest)
    | BindAssign(t, x, e)::rest ->
        (try
          let _ = find_loc_variable scope x in
          raise (Failure (x ^ " already declared in current scope"))
        with Not_found -> 
          match t with 
            Graph(fields) ->
                let _ = List.map find_invar fields in  
                SBindAssign(t,x , expr scope funcs e)::check_decls (bind_var scope x t) funcs rest
            | _ -> SBindAssign(t,x , expr scope funcs e)::check_decls (bind_var scope x t) funcs rest)
    | Statement(s)::rest ->
      let ss = check_stmt scope funcs s in
      SStatement(ss)::check_decls scope funcs rest
    | Fdecl(b)::rest -> 
      let updated_funcs = add_func b funcs in 
      let temp_scope = add_formals StringMap.empty b.formals in
      let new_scope = { variables = temp_scope ; parent = Some scope; } in
      let sstmt = check_stmt new_scope updated_funcs b.body in
      (* make sure type is of block *)
      (* add formals to scope too!!!  -- have to add return for functions *)
      SFdecl({
        styp = b.typ;
        sfname = b.fname;
        sformals = b.formals;
        sbody = sstmt;
      })::check_decls scope updated_funcs rest (* have to add fdecl*)
      (* you have to add a new scope for this functions local variables *)
  in 

  let globals = { variables = StringMap.empty; parent = None; } in
  
check_decls globals functions decls
