(* Semantic checking for the MicroC compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

type symbol_table = {
  variables : typ StringMap.t;
  parent : symbol_table option;
  curr_func : string option;
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
    let add_bind map (name, ty, fs) = StringMap.add name {
      typ = Void; fname = name; 
      formals = fs;
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("printf", Int, [(Int, "x")]); 
                                                 ("array_get", List_t, [(List_t, "arr");(Int, "idx")])]
  in

  (* TODO: make it so that you can search built in methods for graphs, etc. *)
  let built_in_graph_meths =
    let add_bind map (name, ty) = StringMap.add name {
      typ = Graph(["none"]);
      fname = name;
      formals = [(ty, "x")];
      body = Block[] } map
    in  
    List.fold_left add_bind StringMap.empty [ ("add", Node(Richard)); ]
  in
    

  (* this is where we're gonna add more invariants later heeheehoohoo*)
  let invariants = ["tree"; "connected"]  in
  let node_fields = ["flag"; "data"; "name"] in
  let edge_fields = ["src"; "dst"; "weight"] in
  let graph_meths = built_in_graph_meths in 

  let rec find_elt x lst message = match lst with 
      y::rest when x = y -> x  
    | y::rest -> find_elt x rest message
    | [] -> raise (Failure (message ^ " '" ^ x ^ "' does not exist"))
  in 

  (* make sure that an invariant is a valid invariant *)
  let find_invar x = 
    find_elt x invariants "invariant"
  in 

  let find_node_field x = 
    find_elt x node_fields "node field" 
  in

  let find_edge_field x = 
    find_elt x edge_fields "edge field" 
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
               parent = scope.parent; curr_func = scope.curr_func }
  in

  (* Return a semantically-checked expression, i.e., with a type *)
  let rec expr scope funcs e =
    match e with
      Literal l -> (scope, (Int, SLiteral l))
    | BoolLit l -> (scope, (Bool, SBoolLit l))
    | String s -> (scope, (String, SString s))
    | Fliteral f -> (scope, (Float, SFliteral f))
    | Noexpr -> (scope, (Void, SNoexpr))
    | Id s -> (scope, (find_variable scope s, SId s))
    | Assign(x, e) ->
      (* check if x \in scope *)
      (match e with 
          Call("array_get", _) -> 
            let (new_scope, (rt, e')) = expr scope funcs e in
            (new_scope, (rt, SAssign(x, (rt, e'))))
        | _ -> let lt = find_variable scope x in
          let (new_scope, (rt, e')) = expr scope funcs e in
          let err = "illegal assignment " ^ x ^ " : " ^ string_of_typ lt ^ " = " ^ string_of_typ rt in
          if lt = rt then (new_scope, (rt, SAssign(x, (rt, e')))) else raise (Failure err))
    | DotOp(var, field) -> 
      let _ = 
        match find_variable scope var with 
            Node(typ) -> find_node_field field
          | Edge -> find_edge_field field
          | _ -> raise (Failure (var ^ " is not a node or edge"))
      in 
      let ty = match field with 
            "flag" -> Bool  
          | "name" -> String 
          | "data" -> let node_ty = find_variable scope var in 
              (match node_ty with 
                 Node(x) -> x 
                | _ -> node_ty)
          | "src" -> Node(Richard)
          | "dst" -> Node(Richard)
          | "weight" -> Int
          | _ -> raise (Failure ("nonexistant field call"))
          (* maybe check to make sure its not temp *)
      in 
      (scope, (ty, SDotOp(var, field)))
    | DotAssign(var, field, e) -> 
        let _ = 
          match find_variable scope var with 
              Node(ty) -> find_node_field field
            | Edge -> find_edge_field field
            | _ -> raise (Failure (var ^ " is not a node or edge"))
        in 
        let lt = match field with 
              "flag" -> Bool
            | "name" -> String 
            | "data" -> let x = find_variable scope var in 
                  (match x with 
                    Node(x) -> x 
                  | _ -> raise (Failure (var ^ " is not a node or edge")))
            | "src" -> Node(Richard) 
            | "dst" -> Node(Richard) 
            | "weight" -> Int
            | x -> raise (Failure (x))
        in          
        let (_, (rt, e')) = expr scope funcs e in
        let new_scope = match lt with 
              Richard -> bind_var scope var (Node(rt))
            | _ -> scope 
        in 
        let err = "illegal assignment " ^ var ^ "." ^ field ^ " : " ^ string_of_typ lt ^ " = " ^ string_of_typ rt in
        if lt = rt || lt = Richard then (new_scope, (rt, SDotAssign(var, field, (rt, e')))) else raise (Failure err)
    | Unop(op, e) as ex -> 
        let (new_scope, (t, e')) = expr scope funcs e in
        let ty = match op with
          Neg when t = Int || t = Float -> t
        | Not when t = Bool -> Bool
        | _ -> raise (Failure ("illegal unary operator " ^ 
                                string_of_uop op ^ string_of_typ t ^
                                " in " ^ string_of_expr ex))
        in (new_scope, (ty, SUnop(op, (t, e'))))
    | Binop(e1, op, e2) as e -> 
        let (new_scope, (t1, e1')) = expr scope funcs e1 in
        let (new_scope2, (t2, e2')) = expr new_scope funcs e2 in
        (* All binary operators require operands of the same type *)
        let same = t1 = t2 in
        (* Determine expression type based on operator and operand types *)
        let ty = match op with
        (* floats not implemented yet *)
          Add | Sub | Mult | Div when same && t1 = Int   -> Int
        | Add | Sub | Mult | Div when same && t1 = Float -> Float
        | Equal | Neq            when same               -> Bool
        | Less | Leq | Greater | Geq
                    when same && (t1 = Int || t1 = Float) -> Bool (* CHANGE HERE *)
        | And | Or when same && t1 = Bool -> Bool
        | _ -> raise (
      Failure ("illegal binary operator " ^
                    string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                    string_of_typ t2 ^ " in " ^ string_of_expr e))
      in (new_scope2, (ty, SBinop((t1, e1'), op, (t2, e2'))))
    | Setop(e1, setop, e2) as e -> 
        let (new_scope, (t1, e1')) = expr scope funcs e1 in
        let (new_scope2, (t2, e2')) = expr new_scope funcs e2 in

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
        (new_scope2, (ty, SSetop((t1, e1'), setop, (t2, e2'))))
    | Call(fname, args) ->
      let f = find_func fname funcs in
      if fname = "printf"
      then
        let get_arg1 args = match args with
            [] -> raise (Failure ("printf expects 1 arg"))
          | [arg1] -> arg1
          | _ -> raise (Failure("printf expects 1 arg"))
        in
        let arg1 = get_arg1 args in
        let (scope', sexp) = expr scope funcs arg1 in
        (scope', (f.typ, SCall(fname, [sexp])))
      else
        let rec check_args m (actuals, formals) = match (actuals, formals) with
            ([], []) -> []
          | (x::xs, y::ys) ->
              let (rt, _) = y in
              let (m', lsexpr) = expr m funcs x in
              let (lt, le) = lsexpr in
              if lt = rt
                then
                  lsexpr::check_args m' (xs, ys)
              else raise (Failure("invalid args: " ^ string_of_typ lt ^ " != " ^ string_of_typ rt))
          | _ -> raise (Failure("invalid number of args"))
        in
        let sexprs = check_args scope (args, f.formals) in
        (scope, (f.typ, SCall(fname, sexprs)))
    | DotCall(ds, mname, args) -> (*find_method takes a data structure and a fname and throws error if not there*)
      let md = find_method mname ds in 
      let param_length = List.length md.formals in
        if List.length args != param_length then raise (Failure ("wrong arg num"))
        else let check_call (mt, _) e =
          let (new_scope, (et, e')) = expr scope funcs e in (* double check that this wildcard is fine here*)
            if mt = et then (mt, e')
            else raise (Failure ("wrong formal type"))
      in let args' = List.map2 check_call md.formals args
      in
      (scope, (md.typ, SDotCall(ds, mname, args'))) (* TODO: figure out way to make scope here is new_scope*)
    | List(elist) ->
        let rec convert_es es scope funcs = match es with
            [] -> []
          | e::es -> let (scope, se) = (expr scope funcs e) in
                            se :: convert_es es scope funcs
        in
        (scope, (List_t, SList(convert_es elist scope funcs))) 
    | _ -> raise (Failure("expr: not implemented"))

in


  (*** confirm that expression evaluates to a boolean ***)
  let check_bool_expr scope funcs e = 
    let (new_scope, (t', e')) = expr scope funcs e
    and err = "expected Boolean expression in " ^ string_of_expr e
    in if t' != Bool then raise (Failure err) else (new_scope, (t', e'))
  in


  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt scope funcs s =
    match s with
      Expr e -> 
        let (new_scope, exp) = expr scope funcs e in
        (new_scope, SExpr (exp))
    | If(p, b1, b2) ->
          let (new_scope1, stmt_p) = check_bool_expr scope funcs p in 
          let _ = (match b1 with
                      Block bs -> []
                    | _ -> raise(Failure "Then/Else sections of If statements must ^
                                          be Blocks")) in
          let (new_scope2, stmt_b1) = check_stmt new_scope1 funcs b1 in 
          let _ = (match b2 with
                      Block bs -> []
                    | _ -> raise(Failure "Then/Else sections of If statements must ^
                                          be Blocks")) in
          let (new_scope3, stmt_b2) = check_stmt new_scope2 funcs b2 in 
          (new_scope3, SIf(stmt_p, stmt_b1, stmt_b2))
    | For(e1, e2, e3, st) ->
          let (new_scope1, stmt_st) = check_stmt scope funcs st in 
          let (new_scope2, exp_e1) = expr new_scope1 funcs e1 in 
          let (new_scope3, exp_e2) = check_bool_expr new_scope2 funcs e2 in 
          let (new_scope4, exp_e3) = expr new_scope3 funcs e3 in 
	        (new_scope4, SFor(exp_e1, exp_e2, exp_e3, stmt_st))
    | While(p, s) ->
          let (new_scope1, stmt_s) = check_stmt scope funcs s in 
          let (new_scope2, exp_p) = check_bool_expr new_scope1 funcs p in 
          (new_scope2, SWhile(exp_p, stmt_s))
    | Return e -> 
          let (new_scope1, sast) = expr scope funcs e in
          let (ty_e, _) = sast in
          let extract_func_name fname = match fname with
            | Some name -> name
            | None -> raise (Failure ("no current function specified"))
          in
          let my_func = find_func (extract_func_name scope.curr_func) funcs in 
          if my_func.typ = ty_e then (new_scope1, SReturn (sast)) 
          else raise (Failure ("function " ^ my_func.fname ^ "returning wrong type")) 
          (** TODO: in the function body that holds 
                                    this return, look at the type of
                                    e returned and make sure it matches
                                    function return type in func def **)
      (** add another global to tell us which function nwe are in *)
    | Block(bs) -> 
        let new_scope = { variables = StringMap.empty ; parent = Some scope; curr_func = scope.curr_func } in
        (scope, SBlock(check_body new_scope funcs bs))
  
  and check_body (scope : symbol_table) funcs b_lines =
  match b_lines with
  | LocalBind(t, x)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with Not_found -> 
        match t with 
           Graph(fields) ->
              let _ = List.map find_invar fields in  
              SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest
          | Node(ty) -> 
            let scope1 = (bind_var scope x t) in 
            let scope2 = (bind_var scope1 (x ^ ".data") Richard) in 
            (*I THINK NODES NEED TO BE (NODE of DATA)*)
            SLocalBind(t, x)::check_body scope2 funcs rest
          | Edge -> 
            let scope1 = (bind_var scope x t) in 
            let scope2 = (bind_var scope1 (x ^ ".src.data") Richard) in 
            let scope3 = (bind_var scope2 (x ^ ".dst.data") Richard) in 
            SLocalBind(t, x)::check_body scope3 funcs rest
          | _ -> SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest)
  | LocalBindAssign(t, x, e)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with Not_found -> 
        let (_, (t', sexp)) = expr scope funcs e in

        let _ = (match sexp with
              SCall("array_get", _) -> ()
            | _ -> if t != t' then raise (Failure("local bind assign"))
        ) in 

        match t with 
          Graph(fields) ->
              let _ = List.map find_invar fields in  
              let (_, sexp) = expr scope funcs e in
              SLocalBindAssign(t, x, sexp)::check_body (bind_var scope x t) funcs rest (*CHANGEED HERE ASK ABBY*)
        (*| Edge -> 
          let scope1 = (bind_var scope x t) in 
          let scope2 = (bind_var scope1 (x ^ ".src.data") Richard) in 
          let scope3 = (bind_var scope2 (x ^ ".dst.data") Richard) in 
          SLocalBind(t, x)::check_body scope3 funcs rest*)
        | _ -> 
        let (_, sexp) = expr scope funcs e in
        SLocalBindAssign(t, x, sexp)::check_body (bind_var scope x t) funcs rest) (*should this be the new scope?*)
  | LocalStatement(s)::rest -> 
      let (scope2, ss) = check_stmt scope funcs s in
      SLocalStatement(ss)::check_body scope2 funcs rest
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
            | Node(ty) -> 
              let scope1 = (bind_var scope x t) in 
              let scope2 = (bind_var scope1 (x ^ ".data") Richard) in 
              SBind(t, x)::check_decls scope2 funcs rest
            | Edge -> 
              let scope1 = (bind_var scope x t) in 
              let scope2 = (bind_var scope1 (x ^ "src.data") Richard) in 
              let scope3 = (bind_var scope2 (x ^ "dst.data") Richard) in 
              SBind(t, x)::check_decls scope3 funcs rest
            | _ -> SBind(t, x)::check_decls (bind_var scope x t) funcs rest)
    | BindAssign(t, x, e)::rest ->
        (try
          let _ = find_loc_variable scope x in
          raise (Failure (x ^ " already declared in current scope"))
        with Not_found -> 
          let (_, (t', sexp)) = expr scope funcs e in
          let _ = (match sexp with
              SCall("array_get", _) -> ()
            | _ -> if t != t' then raise (Failure("bind assign"))
          ) in 
          match t with 
            Graph(fields) ->
                let _ = List.map find_invar fields in  
                let (_, sexp) = expr scope funcs e in 
                SBindAssign(t,x , sexp)::check_decls (bind_var scope x t) funcs rest
            | _ -> 
                let (_, sexp) = expr scope funcs e in 
                SBindAssign(t,x , sexp)::check_decls (bind_var scope x t) funcs rest)
    | Statement(s)::rest ->
      (*let node_data_typ = { changed = false; type_of = Richard } in 
      let node_data_typ_ptr node_data_typ = Pointer (ref node_data_typ) in *)
      let (scope2, ss) = check_stmt scope funcs s in   
      (*let (t, e') = match s with 
         Expr e -> 
            match e with 
               DotAssign(var, field, e) -> expr scope funcs e
      in 
      let new_scope = match node_data_typ.changed with    
            true -> 
              match s with 
              bind_var scope x node_data_typ.type_of
          | false -> scope 
      in *)
      SStatement(ss)::check_decls scope2 funcs rest
    | Fdecl(b)::rest -> 
      let updated_funcs = add_func b funcs in 
      let temp_scope = add_formals StringMap.empty b.formals in
      let new_scope = { variables = temp_scope ; parent = Some scope; curr_func = Some b.fname} in
      let (_, sstmt) = check_stmt new_scope updated_funcs b.body in
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
  let globals = { variables = StringMap.empty; parent = None; curr_func = None } in

 check_decls globals functions decls 
