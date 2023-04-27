(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library:

http://llvm.moe/
http://llvm.moe/ocaml/

*)

(* We'll refer to Llvm and Ast constructs with module names *)
module L = Llvm
module A = Ast
open Sast 

module StringMap = Map.Make(String)

exception Unfinished of string

type symbol_table = {
  variables : L.llvalue StringMap.t;
  parent : symbol_table option;
  funcs : (sfunc_decl option * L.llvalue) StringMap.t;
  curr_func : string;
  global_vars : L.llvalue StringMap.t;
}

(*** Declare all the LLVM types we'll use ***)
let translate decls = 
  let context  = L.global_context () in 
  let node_t = Llvm.named_struct_type context "node_t" in
    let _ = Llvm.struct_set_body node_t
      [| Llvm.pointer_type (L.i8_type context); 
      Llvm.i1_type context; 
      Llvm.pointer_type (L.i8_type context); |] false 
    in
  let i32_t    = L.i32_type context
  and i8_t     = L.i8_type context
  and i1_t     = L.i1_type context
  and string_t = L.pointer_type (L.i8_type context)
  and float_t  = L.double_type context
  and void_t   = L.void_type context 
  and the_module = L.create_module context "Graphite" in 


(*** Define Graphite -> LLVM types here ***)
let ltype_of_typ = function
    A.Int -> i32_t
  | A.Bool  -> i1_t
  | A.Float -> float_t
  | A.Void  -> void_t   
  | A.String -> string_t 
  | A.Node -> node_t
  | _ -> raise (Unfinished "not all types implemented")
in


(* add to symbol table *)
let bind_var (scope : symbol_table) x v  =
  if scope.curr_func = "main" 
  then 
    { variables = StringMap.add x v scope.variables;
              parent = scope.parent;
              funcs = scope.funcs;
              curr_func = scope.curr_func; 
              global_vars = StringMap.add x v scope.global_vars; }
  else 
  { variables = StringMap.add x v scope.variables;
              parent = scope.parent;
              funcs = scope.funcs;
              curr_func = scope.curr_func;
              global_vars = scope.global_vars; }
in


let rec find_variable (scope: symbol_table) (name : string) = 
  try find_variable_local scope name
  with Not_found -> StringMap.find name scope.global_vars
and find_variable_local (scope : symbol_table) (name : string) =
  try StringMap.find name scope.variables
  with Not_found ->
    match scope.parent with
      Some p -> find_variable p name
    | None -> raise Not_found
in


let rec find_func (scope : symbol_table) (name : string) =
  try StringMap.find name scope.funcs
  with Not_found ->
    match scope.parent with
      Some p -> find_func p name
    | None -> raise Not_found
in

(* Add function name to symbol table *)
(* func is the llvm func type *)
let add_func s func stable = 
    { variables = stable.variables;
      parent = stable.parent; 
      funcs = StringMap.add s func stable.funcs;
      curr_func = stable.curr_func; 
      global_vars = stable.global_vars; }
in


let printf_t : L.lltype = 
  L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
let printf_func : L.llvalue = 
  L.declare_function "printf" printf_t the_module in  


(* let add_node_t : L.lltype = 
  L.var_arg_function_type void_t [| L.pointer_type i8_t ; L.pointer_type i8_t |] in *)
(* let add_node_func : L.llvalue = 
  L.declare_function "add_node" add_node_t the_module in *) 

(*** will have to cast the pointer types to the actual types when being called
     L.pointer_type i8_t is LLVM's equivalent of void pointers in C ***)


let to_string styp e = match e with
    (_, SLiteral i) -> SString((string_of_int i) ^ "\n")
  | (_, SString s) -> SString (s ^ "\n")
  | (_, SBoolLit b) -> (match b with
      true -> SString("1\n")
    | _ -> SString("0\n") )
  | (_, SFliteral f) -> SString (f ^ "\n")
  | _ -> raise (Failure("type to string not implemented for non-literals"))
in

  
let int_format_str = L.build_global_stringptr "%d\n" "fmt" 
and float_format_str = L.build_global_stringptr "%g\n" "fmt"  
(*** we treat booleans as integers when printing to avoid the 
     mysterious B that was being printed otherwise ***)
(* and bool_format_str = L.build_global_stringptr "%B\n" "fmt" *)
and string_format_str = L.build_global_stringptr "%s\n" "fmt" in

(*** Expressions go here ***)
let rec expr (builder, stable) ((styp, e) : sexpr) = match e with
    SLiteral i -> L.const_int i32_t i
  | SBoolLit b -> L.const_int i1_t (if b then 1 else 0) 
  | SFliteral f -> L.const_float_of_string float_t f
  | SString s -> L.build_global_stringptr s "" builder
  | SNoexpr -> L.const_int i32_t 0
  | SBinop (e1, op, e2) ->
      let (t, _) = e1
      and e1' = expr (builder, stable) e1
      and e2' = expr (builder, stable) e2 in
      if t = A.Float then (match op with 
        A.Add     -> L.build_fadd
      | A.Sub     -> L.build_fsub
      | A.Mult    -> L.build_fmul
      | A.Div     -> L.build_fdiv 
      | A.Equal   -> L.build_fcmp L.Fcmp.Oeq
      | A.Neq     -> L.build_fcmp L.Fcmp.One
      | A.Less    -> L.build_fcmp L.Fcmp.Olt
      | A.Leq     -> L.build_fcmp L.Fcmp.Ole
      | A.Greater -> L.build_fcmp L.Fcmp.Ogt
      | A.Geq     -> L.build_fcmp L.Fcmp.Oge
      | A.And | A.Or ->
          raise (Failure "internal error: semant should have rejected and/or on float")
      ) e1' e2' "tmp" builder 
      else (match op with
      | A.Add     -> L.build_add
      | A.Sub     -> L.build_sub
      | A.Mult    -> L.build_mul
      | A.Div     -> L.build_sdiv
      | A.And     -> L.build_and
      | A.Or      -> L.build_or
      | A.Equal   -> L.build_icmp L.Icmp.Eq
      | A.Neq     -> L.build_icmp L.Icmp.Ne
      | A.Less    -> L.build_icmp L.Icmp.Slt
      | A.Leq     -> L.build_icmp L.Icmp.Sle
      | A.Greater -> L.build_icmp L.Icmp.Sgt
      | A.Geq     -> L.build_icmp L.Icmp.Sge
      ) e1' e2' "tmp" builder 
  | SUnop (op, e) ->
      let (t, _) = e in
      let e' = expr (builder, stable) e in
      (match op with 
          A.Neg when t = A.Float -> L.build_fneg
        | A.Neg                  -> L.build_neg
        | A.Not                  -> L.build_not)
      e' "tmp" builder 
  | SId s -> L.build_load (find_variable stable s) s builder
  | SAssign (s, e) -> let e' = expr (builder, stable) e in
                      let _ = L.build_store e' (find_variable stable s) builder in 
                      e'
  | SCall ("printf", [e]) ->
    (match e with 
      (Int, SId s) -> L.build_call printf_func [| int_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (Float, SId s) -> L.build_call printf_func [| float_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (String, SId s) -> L.build_call printf_func [| string_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (Bool, SId s) -> L.build_call printf_func [| int_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | _ -> L.build_call printf_func [| (expr (builder, stable) (A.String, (to_string styp e))) |] "printf" builder )
  | SCall (name, args) -> 
        let (fdecl_opt, llvm_decl) = find_func stable name in
        let sfdecl = (match fdecl_opt with
                        Some(f) -> f
                      | _ -> raise (Failure "No function definition found"))
        in 
        let llargs = List.rev (List.map (expr (builder, stable)) (List.rev args)) in
        let result = (match sfdecl.styp with 
                        A.Void -> ""
                      | _ -> name ^ "_result") in
                  L.build_call llvm_decl (Array.of_list llargs) result builder
  | SDotOp(var, field) -> 
        let lvar = find_variable stable var in 
        let steven = match field with 
              "flag" -> Llvm.build_struct_gep lvar 1 "temp" builder
            | "name" -> Llvm.build_struct_gep lvar 0 "temp" builder
            | "data" -> Llvm.build_struct_gep lvar 2 "temp" builder
            | _ -> raise (Failure ("syntax error caught post parsing. Nonexistent field " ^ field))
        in 
        let steven' = match styp with 
              Richard -> raise (Failure ("data field never set in node.data " ^ field))
            | _ -> L.build_load steven (var ^ "." ^ field) builder 
        in
        (match field with 
              "flag" -> L.build_load steven (var ^ "." ^ field) builder 
            | "asdf" -> raise (Failure ("not implemented yet :0"))
            | _ ->
              let llvm_ty = ltype_of_typ styp in
              let new_ptr = L.build_pointercast steven' (L.pointer_type (llvm_ty)) "name" builder in
              L.build_load new_ptr (var ^ "." ^ field) builder)
  | SDotAssign(var, field, e) -> 
        let e' = expr (builder, stable) e in
        let (my_typ, expr) = e in
        let lvar = find_variable stable var in 
        let steven = match field with 
              "flag" -> L.build_struct_gep lvar 1 "temp" builder
            | "name" -> L.build_struct_gep lvar 0 "temp" builder
            | "data" -> L.build_struct_gep lvar 2 "temp" builder
            | _ -> raise (Failure ("syntax error caught post parsing. Nonexistent field " ^ field))
        in 
        let e'' = match field with 
             "flag" -> e' 
            | "namasdfe" -> raise (Failure ("not implemented  " ^ field))
            | _ -> 
                let styp_ptr = L.build_malloc (ltype_of_typ my_typ) "bruh" builder in 
                (* put data in *)
                let _ = L.build_store e' styp_ptr builder in 
                
                let ptr = L.build_pointercast styp_ptr (L.pointer_type (i8_t)) "name" builder in 
                ptr

        in 
        L.build_store e'' steven builder
      | _ -> raise (Failure("expr: not implemented"))
in


let add_terminal builder instr =
                          (* The current block where we're inserting instr *)
  match L.block_terminator (L.insertion_block builder) with
       Some _ -> ()
     | None -> ignore (instr builder)
in


let rec sb_lines (builder, stable) (ls : sb_line list) = match ls with
    (SLocalBind (typ, s)) :: ls -> sb_lines (bind (builder, stable) (typ, s)) ls
  | (SLocalBindAssign (typ, s, e)) :: ls -> sb_lines (bindassign (builder, stable) (typ, s, e)) ls
  | (SLocalStatement sstmt) :: ls -> sb_lines (stmt (builder, stable) sstmt) ls
  | [] -> (builder, stable)

(*** Statements go here ***)
and stmt (builder, stable) = function
    SExpr e -> let _ = expr (builder, stable) e in (builder, stable)
  | SBlock ls -> let stable' = {
          variables = StringMap.empty;
          parent = Some stable;
          funcs = StringMap.empty;
          curr_func = stable.curr_func;
          global_vars = stable.global_vars;
        } in
      let (builder', _) = sb_lines (builder, stable') ls in
      (builder', stable)
  | SIf (predicate, then_stmt, else_stmt) ->
      let (_, currLLVMfunc) = find_func stable stable.curr_func in 
      (* let start_bb = L.insertion_block builder in *)
      let bool_val = expr (builder, stable) predicate in
      let merge_bb = L.append_block context "merge" currLLVMfunc in
      let branch_instr = L.build_br merge_bb in
      let then_bb = L.append_block context "then" currLLVMfunc in
      let (then_builder, _) = stmt ((L.builder_at_end context then_bb), stable) then_stmt in
      let () = add_terminal then_builder branch_instr in
      let else_bb = L.append_block context "else" currLLVMfunc in
      let (else_builder, _) = stmt ((L.builder_at_end context else_bb), stable) else_stmt in
      let () = add_terminal else_builder branch_instr in 
      let _ = L.build_cond_br bool_val then_bb else_bb builder in
      L.builder_at_end context merge_bb, stable
  | SWhile (predicate, body) ->
      let (_, currLLVMfunc) = find_func stable stable.curr_func in 
      let pred_bb = L.append_block context "while" currLLVMfunc in
      let _ = L.build_br pred_bb builder in
      let body_bb = L.append_block context "while_body" currLLVMfunc in
      let (while_builder, _) = stmt ((L.builder_at_end context body_bb), stable) body in
      let () = add_terminal while_builder (L.build_br pred_bb) in
      let pred_builder = L.builder_at_end context pred_bb in
      let bool_val = expr (pred_builder, stable) predicate in
      let merge_bb = L.append_block context "merge" currLLVMfunc in
      let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in
      L.builder_at_end context merge_bb, stable
  | SReturn e ->  let (fdecl_opt, llvm_decl) = find_func stable stable.curr_func in 
                  let fdecl = (match fdecl_opt with
                                Some(f) -> f
                              | _ -> raise (Failure "No function definition found"))
                  in
                  let _ = (match fdecl.styp with
                      A.Void -> L.build_ret_void builder 
                    | _ -> L.build_ret (expr (builder, stable) e) builder)
                  in 
                  (builder, stable)
     | _ -> (builder, stable)


and  bind (builder, stable) = function
    (typ, s) -> 
        if stable.curr_func = "main" then 
          let init = match typ with
              A.Float -> L.const_float (ltype_of_typ typ) 0.0
            | A.Int -> L.const_int (ltype_of_typ typ) 0
            | A.Bool -> L.const_int (ltype_of_typ typ) 0
            | A.String -> L.build_global_stringptr "" "" builder
            | _ -> raise (Failure "no global default value set")
          in 
          let new_glob = L.define_global s init the_module in
          (* let () = L.set_externally_initialized false new_glob in *)
          let stable' = bind_var stable s new_glob in
          (builder, stable')
        else
          let new_var = L.build_alloca (ltype_of_typ typ) s builder in
          let stable' = bind_var stable s new_var in
          (builder, stable')

(* Bind assignments are declaration-assignment one-liners *)
and bindassign (builder, stable) = function 
  (typ, s, e) -> 
        let e' = expr (builder, stable) e in
                 (*let StringMap.add s (L.define_global s e the_module) global_vars*)
                 (* let _  = L.build_store e' (L.define_global s e' the_module) builder *)
        (* let () = L.set_value_name s e' in *)
        let new_var = L.build_alloca (ltype_of_typ typ) s builder in
        let _ = L.build_store e' new_var builder in
        let stable' = bind_var stable s new_var in 
        (builder, stable')

and fdecl (builder, stable) f =
        let name = f.sfname in 
        let formal_types = Array.of_list (List.map (fun (t, _) -> ltype_of_typ t) f.sformals) in
        let ftype = L.function_type (ltype_of_typ f.styp) formal_types in
        let llvm_func = L.define_function name ftype the_module in
        let stable' = add_func name (Some f, llvm_func) stable in
        let builder' = L.builder_at_end context (L.entry_block llvm_func) in 
        let stable'' = List.fold_left2 (fun stable_accum (t, x) p -> 
                                          let local = L.build_alloca (ltype_of_typ t) x builder' in
                                          let _ = L.build_store p local builder' in
                                          let _ = L.set_value_name x p in
                                          bind_var stable_accum x local) 
                                      stable' f.sformals (Array.to_list (L.params llvm_func)) in
        let stable''' = { variables = stable''.variables;
                          parent    = stable''.parent; 
                          funcs     = stable''.funcs;
                          curr_func = name;
                          global_vars = stable''.global_vars; }
        in 
        let _ = stmt (builder', stable''') f.sbody in
        (builder, stable')
in

(*** Analyze all the declarations in program ***) 
let rec build_decl (builder, stable) decl = match decl with
    SStatement s -> stmt (builder, stable) s
  | SBindAssign(typ, s, e) -> bindassign (builder, stable) (typ, s, e)
  | SBind (typ, n) -> bind (builder, stable) (typ, n) 
  | SFdecl f -> fdecl (builder, stable) f 
in
(** to have func type have to build before you use it -- needed for line below it **)
let ftype = L.function_type i32_t (Array.of_list []) in 
let global_main = L.define_function "main" ftype the_module in (*CHANGED TO MAIN -- Abby *)
(** builder initialized at the first line of global main -- where you want to put next llvm instruction **)
let builder = L.builder_at_end context (L.entry_block global_main) in

(** uses builder from above -- every line is a decl **)
let rec program (builder, stable) = function
    decl :: ds -> program (build_decl (builder, stable) decl) ds 
  | [] -> builder, stable
in

let empty_stable = {
  variables = StringMap.empty;
  parent = None;
  funcs = StringMap.empty;
  curr_func = "main";
  global_vars = StringMap.empty;
} in
let init_stable = add_func "main" (None, global_main) empty_stable in 
let init_stable = add_func "printf" (None, printf_func) init_stable in (* hmmm is this ok? *)
let (builder', stable') = program (builder, init_stable) decls in 
(* let _ = L.build_ret_int builder in  *)
let _ = L.build_ret (L.const_int i32_t 0) builder' in
the_module


