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
      typ = ty;
      fname = name; 
      formals = fs;
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("printf", Int, [(Int, "x")]); 
                                                 ("array_get", List_t, [(List_t, "arr");(Int, "idx")]);
                                                 ("array_set", List_t, [(List_t, "arr");(Int, "idx"); (Void, "poly")]);
                                                 ]
  in

  (* TODO: make it so that you can search built in methods for graphs, etc. *)
  let built_in_graph_meths =
    let add_bind map (name, ty, forms) = StringMap.add name {
      typ = ty;
      fname = name;
      formals = forms;
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("add", Graph(Int, []), [(Node(Int), "to_add")]); ]
  in

  let built_in_node_meths =
    let add_bind map (name, ty, forms) = StringMap.add name {
      typ = ty;
      fname = name;
      formals = forms;
      body = Block[] } map
    in List.fold_left add_bind StringMap.empty [ ("mark", Node(Uninitialized), []); ]
  in
    

  (* this is where we're gonna add more invariants later heeheehoohoo*)
  let invariants = ["tree"; "connected"]  in
  let fields = ["flag"; "data"; "name"] in
  let graph_meths = built_in_graph_meths in
  let node_meths = built_in_node_meths in 
  let node_fields = ["flag"; "data"; "name"] in
  let edge_fields = ["src"; "dst"; "weight"] in

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
  
  (* let find_method m data_structs = (* needs to  *)
    let meths = graph_meths (* instead of hard coding graph meths, make it so that you can pattern match and find which ds you want*)
    in  
    try StringMap.find m meths
    with Not_found -> raise (Failure ("method " ^ m ^ " not found in data struct")) 
  in *)

  let find_method m data_structs scope = 
    let ds = find_loc_variable scope data_structs in (*data_structs is the name, we need the actual type of it *)
    let meths = (match ds with 
        Graph(_, _) -> graph_meths
      | Node(_) -> node_meths
      | _ -> raise (Failure ("Data Struct " ^ string_of_typ ds ^ " not found")))
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

  let assert_field x field m =
    match find_variable m x with
        Node(_) -> find_node_field field
      | Edge(_) -> find_edge_field field
      | _ -> raise (Failure (x ^ " is not a node or edge"))
  in

  let get_field_ty x field m =
    match field with
        "flag" -> Bool  
      | "name" -> String 
      | "data" ->
        let xty = find_variable m x in
        (match xty with 
            Node(dty) -> dty
          | actual -> raise (Failure("semant/field_ty: " ^ x ^ " must be of node type. Actual: " ^ string_of_typ actual)))
      | "src" -> 
        let xty = find_variable m x in
        (match xty with 
            Edge(dty) -> Node(dty)
          | actual -> raise (Failure("semant/field_ty: " ^ x ^ " must be of edge type. Actual: " ^ string_of_typ actual)))
      | "dst" -> 
        let xty = find_variable m x in
        (match xty with 
            Edge(dty) -> Node(dty)
          | actual -> raise (Failure("semant/field_ty: " ^ x ^ " must be of edge type. Actual: " ^ string_of_typ actual)))
      | "weight" -> Int
      | _ -> raise (Failure ("Field " ^ field ^ " does not exist in " ^ x))
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
    | Edge(src, dst) ->
      let (src_ty, src_sx) = expr scope funcs src in
      let (dst_ty, dst_sx) = expr scope funcs dst in
      let (src_dty, dst_dty) = match (src_ty, dst_ty) with
          (Node(_src_dty), Node(_dst_dty)) -> (_src_dty, _dst_dty)
        | _ -> raise (Failure ("semant/edge: " ^ string_of_expr (Edge(src, dst)) ^ " cannot form an edge"))
      in
      let src_data_ty = match src_ty with 
          _ when src_ty = dst_ty -> 
              match dst_ty with 
                Node(x) -> x
              | _ -> raise (Failure ("semant/edge: " ^ string_of_expr (Edge(src, dst)) ^ " must point to node types"))
        | _ -> raise (Failure ("edge source and destination must be nodes of the same type"))
      in
      (Edge(src_data_ty), (SEdge((src_ty, src_sx), (dst_ty, dst_sx))))
    | Assign(x, e) ->
      (match e with 
          Call("array_get", _) -> 
            let (rt, e') = expr scope funcs e in
            (rt, SAssign(x, (rt, e')))
        | _ ->
          let lt = find_variable scope x in
          let (rt, e') = expr scope funcs e in
          let err = "illegal assignment " ^ x ^ " : " ^ string_of_typ lt ^ " = " ^ string_of_typ rt in
          if lt = rt then (rt, SAssign(x, (rt, e'))) else raise (Failure err))
    | DotOp(var, field) ->
      (* node.field access *)

      (* assert field is correct *)
      let _ = assert_field var field scope in

      (* get the type of field *)
      let field_ty = get_field_ty var field scope in 

      (field_ty, SDotOp(var, field))
    | DotAssign(var, field, e) -> 
        (* node.field = value *)

        (* assert field is correct *)
        let _ = assert_field var field scope in
        (* get the type of field *)
        let field_ty = get_field_ty var field scope in
        (* expr returns (scope, (A.typ, S.sx)) *)
        let (e_ty, e_sx) = expr scope funcs e in

        let err = "illegal assignment " ^ var ^ "." ^ field ^ " : " ^ string_of_typ field_ty ^ " = " ^ string_of_typ e_ty in
       (*(match field_ty with
            (* if field is Uninitialized, bind to type of expression *)
            Uninitialized ->
              (* let field_bound_scope = bind_var scope var (Node(e_ty)) in *)
              (e_ty, SDotAssign(var, field, (e_ty, e_sx)))
          | _ ->*)
            (if field_ty = e_ty
            then (e_ty, SDotAssign(var, field, (e_ty, e_sx)))
            else raise (Failure err))
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
        let (t1, e1') = expr scope funcs e1 in
        let (t2, e2') = expr scope funcs e2 in
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
      in (ty, SBinop((t1, e1'), op, (t2, e2')))
    | Setop(e1, setop, e2) as e -> 
        let (t1, e1') = expr scope funcs e1 in
        let (t2, e2') = expr scope funcs e2 in

        let same = t1 = t2 in
        let (typ, fields) = match t1 with 
          Graph(typ, fields) -> (typ, fields)
          | _ -> raise (
            Failure ("illegal set operator " ^
                          string_of_typ t1 ^ " " ^ string_of_setop setop ^ " " ^
                          string_of_typ t2 ^ " in " ^ string_of_expr e))
        in 
        let ty = match setop with
          Union | Inter | Xor | Diff when same && t1 = Graph(typ, fields) -> Graph(typ, fields)
        | _ -> raise (
          Failure ("illegal binary operator " ^
                    string_of_typ t1 ^ " " ^ string_of_setop setop ^ " " ^
                    string_of_typ t2 ^ " in " ^ string_of_expr e))
        in 
        (ty, SSetop((t1, e1'), setop, (t2, e2')))
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
        let sexp = expr scope funcs arg1 in
        (f.typ, SCall(fname, [sexp]))
      else
      if fname = "array_set"
      then
        let [list_name; idx; value;] = args in
        let a1 = expr scope funcs list_name in
        let a2 = expr scope funcs idx       in
        let a3 = expr scope funcs value     in
        (f.typ, SCall(fname, [a1;a2;a3])) 
      else
        let rec check_args m (actuals, formals) = match (actuals, formals) with
            ([], []) -> []
          | (x::xs, y::ys) ->
              let (rt, _) = y in
              let lsexpr = expr m funcs x in
              let (lt, le) = lsexpr in
              if lt = rt
                then
                  lsexpr::check_args m (xs, ys)
              else raise (Failure("invalid args: " ^ string_of_typ lt ^ " != " ^ string_of_typ rt))
          | _ -> raise (Failure("invalid number of args"))
        in
        let sexprs = check_args scope (args, f.formals) in
        (f.typ, SCall(fname, sexprs))
    | DotCall(ds, mname, args) ->
      let md = find_method mname ds scope in 
      let rec check_args m (actuals, formals) = match (actuals, formals) with
        ([], []) -> []
      | (x::xs, y::ys) ->
        let (rt, _) = y in
        let lsexpr = expr m funcs x in
        let (lt, le) = lsexpr in
        if lt = rt then lsexpr::check_args m (xs, ys)
        else raise (Failure("invalid dotcall args: " ^ string_of_typ lt ^ " != " ^ string_of_typ rt))
      | _ -> raise (Failure("invalid number of args"))
      in let sexprs = check_args scope (args, md.formals)
      in
      (md.typ, SDotCall(ds, mname, sexprs))
    (* | DotCall(oname, mname, args) -> (*find_method takes a data structure and a fname and throws error if not there*)
      (* graph_name.add(node_name); *)

      (* why do we need to check this by hardcoding?
      graph methods should be able to handle any node
      we cannot expect a node<?> because we don't know <?> *)
      let o_ty = find_variable scope oname in
      (match o_ty with
          Graph(typ, flags) ->
            (match mname with
                "add" ->
                  (match args with
                      [Id(nname)] ->
                        let sexpr = expr scope funcs (Id(nname)) in
                        let (node_ty, node_sx) = sexpr in
                        (match node_ty with
                            Node(d_ty) ->
                              (node_ty, SDotCall(oname, mname, [sexpr]))
                          | _ -> raise (Failure("dotcall: graph. " ^ mname ^ " not yet implemented for non-node"))
                        )
                    | _ -> raise (Failure("dotcall: graph. " ^ mname ^ " expects id as arg"))
                  )
              | _ -> raise (Failure("dotcall: graph. " ^ mname ^ " not yet implemented"))
            (* (scope, (node_ty, SDotCall(oname, mname, sargs))) *)
            )
        | _ -> raise (Failure("dotcall: non-graph not yet implemented"))
      )*)
    | List(elist) ->
        let rec convert_es es scope funcs = match es with
            [] -> []
          | e::es -> let se = (expr scope funcs e) in
                            se :: convert_es es scope funcs
        in
        (List_t, SList(convert_es elist scope funcs))
    | _ -> raise (Failure("expr: " ^ string_of_expr e ^ " not implemented"))
in


  (*** confirm that expression evaluates to a boolean ***)
  let check_bool_expr scope funcs e = 
    let (t', e') = expr scope funcs e
    and err = "expected Boolean expression in " ^ string_of_expr e
    in if t' != Bool then raise (Failure err) else (t', e')
  in

  let rec check_dty n1 n2 = match (n1, n2) with
      (Node(dty1), Node(dty2)) -> dty1 = dty2
    | (Edge(dty1), Edge(dty2)) -> dty1 = dty2
    | (Graph(typ1, fields1), Graph(typ2, fields2)) -> 
        if typ1 = typ2 && fields1 = fields2 then true else false
    | _ -> raise (Failure("node/edge typecheck failed"))
  in 

  (*let same_graph_typ t1 t2 = match (t1, t2) with  
    (Graph(typ1, fields1), Graph(typ2, fields2)) -> 
        if typ1 = typ2 && fields1 = fields2 then true else false
    | _ -> t1 = t2 
  in*)
  (* Return a semantically-checked statement i.e. containing sexprs *)
  let rec check_stmt scope funcs s =
    match s with
      Expr e -> 
        let exp = expr scope funcs e in
        SExpr (exp)
    | If(p, b1, b2) ->
          let stmt_p = check_bool_expr scope funcs p in 
          let _ = (match b1 with
                      Block bs -> []
                    | _ -> raise(Failure "Then/Else sections of If statements must ^
                                          be Blocks")) in
          let stmt_b1 = check_stmt scope funcs b1 in 
          let _ = (match b2 with
                      Block bs -> []
                    | _ -> raise(Failure "Then/Else sections of If statements must ^
                                          be Blocks")) in
          let stmt_b2 = check_stmt scope funcs b2 in 
          SIf(stmt_p, stmt_b1, stmt_b2)
    | For(e1, e2, e3, st) ->
          let stmt_st = check_stmt scope funcs st in 
          let exp_e1 = expr scope funcs e1 in 
          let exp_e2 = check_bool_expr scope funcs e2 in 
          let exp_e3 = expr scope funcs e3 in 
	        SFor(exp_e1, exp_e2, exp_e3, stmt_st)
    | While(p, s) ->
          let stmt_s = check_stmt scope funcs s in 
          let exp_p = check_bool_expr scope funcs p in 
          SWhile(exp_p, stmt_s)
    | Return e -> 
          let sast = expr scope funcs e in
          let (ty_e, _) = sast in
          let extract_func_name fname = match fname with
            | Some name -> name
            | None -> raise (Failure ("no current function specified"))
          in
          let my_func = find_func (extract_func_name scope.curr_func) funcs in 
          if my_func.typ = ty_e (*|| (same_graph_typ my_func.typ ty_e)*) then SReturn (sast)
          else raise (Failure ("function " ^ my_func.fname ^ " returning wrong type " ^ string_of_typ ty_e ^ " rather than " ^ string_of_typ my_func.typ)) 
          (** TODO: in the function body that holds 
                                    this return, look at the type of
                                    e returned and make sure it matches
                                    function return type in func def **)
      (** add another global to tell us which function nwe are in *)
    | Block(bs) -> 
        let new_scope = { variables = StringMap.empty ; parent = Some scope; curr_func = scope.curr_func } in
        SBlock(check_body new_scope funcs bs)
  
  and check_body (scope : symbol_table) funcs b_lines =
  match b_lines with
  | LocalBind(t, x)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with Not_found -> 
        match t with 
           Graph(typ, fields) ->
              let _ = List.map find_invar fields in  
              SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest
          | Node(ty) -> 
            let scope1 = (bind_var scope x t) in 
            (*let scope2 = (bind_var scope1 (x ^ ".data") Uninitialized) in *)
            (*I THINK NODES NEED TO BE (NODE of DATA)*)
            SLocalBind(t, x)::check_body scope1 funcs rest
          | Edge(ty) -> 
            let scope1 = (bind_var scope x t) in 
            (*let scope2 = (bind_var scope1 (x ^ ".src.data") Uninitialized) in 
            let scope3 = (bind_var scope2 (x ^ ".dst.data") Uninitialized) in *)
            SLocalBind(t, x)::check_body scope1 funcs rest
          | _ -> SLocalBind(t, x)::check_body (bind_var scope x t) funcs rest)
  | LocalBindAssign(t, x, e)::rest -> 
      (try
        let _ = find_loc_variable scope x in
        raise (Failure (x ^ " already declared in current scope"))
      with Not_found -> 
        let (t', sexp) = expr scope funcs e in

        let _ = (match sexp with
              SCall("array_get", _) -> ()
            | _ -> if t != t' && (not (check_dty t t')) then raise (Failure("local bind assign"))
        ) in 

        match t with 
          Graph(typ, fields) ->
              let _ = List.map find_invar fields in  
              SLocalBindAssign(t, x, (t', sexp))::check_body (bind_var scope x t) funcs rest (*CHANGEED HERE ASK ABBY*)
        (*| Edge -> 
          let scope1 = (bind_var scope x t) in 
          let scope2 = (bind_var scope1 (x ^ ".src.data") Uninitialized) in 
          let scope3 = (bind_var scope2 (x ^ ".dst.data") Uninitialized) in 
          SLocalBind(t, x)::check_body scope3 funcs rest*)
        | _ -> 
        let (_, sexp) = expr scope funcs e in
        SLocalBindAssign(t, x, (t', sexp))::check_body (bind_var scope x t) funcs rest) (*should this be the new scope?*)
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
             Graph(typ, fields) ->
                let _ = List.map find_invar fields in  
                SBind(t, x)::check_decls (bind_var scope x t) funcs rest
            | Node(ty) -> 
              let scope1 = (bind_var scope x t) in 
              (*let scope2 = (bind_var scope1 (x ^ ".data") Uninitialized) in *)
              SBind(t, x)::check_decls scope1 funcs rest
            | Edge(ty) -> 
              let scope1 = (bind_var scope x t) in 
              (*let scope2 = (bind_var scope1 (x ^ "src.data") Uninitialized) in 
              let scope3 = (bind_var scope2 (x ^ "dst.data") Uninitialized) in *)
              SBind(t, x)::check_decls scope1 funcs rest
            | _ -> SBind(t, x)::check_decls (bind_var scope x t) funcs rest)
    | BindAssign(t, x, e)::rest ->
        (try
          let _ = find_loc_variable scope x in
          raise (Failure (x ^ " already declared in current scope"))
        (* with Not_found -> 
          let (_, (t', sexp)) = expr scope funcs e in
          let _ = (match sexp with
              SCall("array_get", _) -> ()
            | _ -> if t != t' then raise (Failure("bind assign"))
          ) in 
          match t with  *)
        with Not_found ->

        (* real stuff here *)
          let (et, sx) = expr scope funcs e in
          let err = "semant/BindAssign: illegal assignment: " ^ x ^ " : " ^ string_of_typ t ^ " = " ^ string_of_typ et in


          match (t, e) with
              (List_t, _) -> SBindAssign(t, x, (et, sx))::check_decls (bind_var scope x t) funcs rest 
            | (_, Call("array_get", _)) -> SBindAssign(t, x, (et, sx))::check_decls (bind_var scope x t) funcs rest
            | _ ->

          if t != et && (not (check_dty t et))
          then raise (Failure(err))
          else SBindAssign(t, x, (et, sx))::check_decls (bind_var scope x t) funcs rest
          (* graphs cannot be assigned to something??? *)
          (* match t with 
            Graph(fields) ->
                let _ = List.map find_invar fields in  
                let (_, sexp) = expr scope funcs e in 
                SBindAssign(t,x , sexp)::check_decls (bind_var scope x t) funcs rest
            | _ -> 
                let (_, sexp) = expr scope funcs e in 
                SBindAssign(t,x , sexp)::check_decls (bind_var scope x t) funcs rest) *)
        )
        (* *)
    | Statement(s)::rest ->
      (*let node_data_typ = { changed = false; type_of = Uninitialized } in 
      let node_data_typ_ptr node_data_typ = Pointer (ref node_data_typ) in *)
      let ss = check_stmt scope funcs s in   
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
      SStatement(ss)::check_decls scope funcs rest
    | Fdecl(b)::rest -> 
      let updated_funcs = add_func b funcs in 
      let temp_scope = add_formals StringMap.empty b.formals in
      let new_scope = { variables = temp_scope ; parent = Some scope; curr_func = Some b.fname} in
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
  let globals = { variables = StringMap.empty; parent = None; curr_func = None } in

 check_decls globals functions decls 
