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
  let node_struct = Llvm.named_struct_type context "node_struct" in
    let _ = Llvm.struct_set_body node_struct
      [| Llvm.pointer_type (L.i8_type context); 
      Llvm.i1_type context; 
      Llvm.pointer_type (L.i8_type context); |] false
    in
  let node_t = Llvm.pointer_type node_struct in
  let edge_struct = L.named_struct_type context "edge_t" in
    let _ = L.struct_set_body edge_struct 
      [| node_t;
         node_t; 
         L.i32_type context|] false
    in
  let edge_t = Llvm.pointer_type edge_struct in

  (* for linked list of graph *)
  let edge_node = L.named_struct_type context "edge_node" in
  let _ = L.struct_set_body edge_node 
    [| edge_t; (*first is our current edge*)
       Llvm.pointer_type edge_node |](*second is our next edge pointer *) false
  in
  let node_node = L.named_struct_type context "node_node" in
  let _ = L.struct_set_body node_node 
    [|  node_t; (*first is our current edge*)
        Llvm.pointer_type node_node |](*second is our next node pointer *) false
  in

  (* linked list of graph *)
  let graph_t = L.named_struct_type context "graph_tt" in
    let _ = Llvm.struct_set_body graph_t
      [|
        Llvm.pointer_type node_node;
        Llvm.pointer_type edge_node;
      |] false
  in
  let graph_ptr = Llvm.pointer_type graph_t in


  let list_node = L.named_struct_type context "list_node" in 
    let _ = L.struct_set_body list_node
            [| L.pointer_type (L.i8_type context); L.pointer_type list_node |] false
    in
  let list_t = L.pointer_type list_node
  and i32_t    = L.i32_type context
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
  | A.Node(typ) -> node_t
  | A.Edge(typ) -> edge_t
  | A.Graph(typ) -> graph_ptr
  | A.List_t -> list_t
  | _ -> raise (Unfinished "not all types implemented")
in


(* add to symbol table *)
let bind_var (scope : symbol_table) x v  =
  if scope.parent = None
  then 
  { variables = scope.variables;
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
    | None -> let _ = L.dump_value (L.const_int i32_t 0) in raise Not_found
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

let set_curr_func s stable = 
    { variables = stable.variables;
      parent = stable.parent; 
      funcs = stable.funcs;
      curr_func = s; 
      global_vars = stable.global_vars; }
in

let printf_t : L.lltype = 
  L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
let printf_func : L.llvalue = 
  L.declare_function "printf" printf_t the_module in  
let strcmp_t : L.lltype =
  L.function_type i32_t [| L.pointer_type i8_t; L.pointer_type i8_t |] in
let strcmp_func : L.llvalue =
  L.declare_function "strcmp" strcmp_t the_module in
let array_get_t = 
  L.var_arg_function_type (L.pointer_type i8_t) [| L.pointer_type i8_t; i32_t |] in
let array_get_func = 
  L.declare_function "array_get" array_get_t the_module in 

let array_set_t = 
  L.var_arg_function_type (L.pointer_type i8_t) [| L.pointer_type i8_t; i32_t; L.pointer_type i8_t |] in
let array_set_func =
  L.declare_function "array_set" array_set_t the_module in

let array_len_t =
  L.var_arg_function_type (L.pointer_type i8_t) [| L.pointer_type i8_t; |] in
let array_len_func = 
  L.declare_function "array_len" array_len_t the_module in

let nodeExists_t = 
  L.var_arg_function_type i8_t [| node_t |] in
let nodeExists_func =
  L.declare_function "nodeExists" nodeExists_t the_module in

let array_add_t = 
  L.var_arg_function_type (L.pointer_type i8_t) [| L.pointer_type i8_t; i32_t; L.pointer_type i8_t |] in
let array_add_func = 
  L.declare_function "array_add" array_add_t the_module in

(* let array_delete_t =
  L.var_arg_function_type (L.pointer_type i8_t) [| L.pointer_type i8_t; i32_t; |] in
let array_delete_func = 
  L.declare_function "array_delete" array_delete_t the_module in *)

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


let add_terminal builder instr =
  (* The current block where we're inserting instr *)
match L.block_terminator (L.insertion_block builder) with
Some _ -> ()
| None -> ignore (instr builder)
in
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
  | SAssign (s, (typ, sexp)) -> 
      (match sexp with
          SCall("array_get", _) -> let e' = expr (builder, stable) (typ, sexp) in
                                let e_cast = L.build_pointercast e' (L.type_of (find_variable stable s)) "li_conv" builder in
                                let e_cast_val = L.build_load e_cast "val_ptr" builder in
                                let _ = L.build_store e_cast_val (find_variable stable s) builder in 
                                e'
        | SDotCall(_, "get", _) -> let e' = expr (builder, stable) (typ, sexp) in
                                        let e_cast = L.build_pointercast e' (L.type_of (find_variable stable s)) "li_conv" builder in
                                        let e_cast_val = L.build_load e_cast "val_ptr" builder in
                                        let _ = L.build_store e_cast_val (find_variable stable s) builder in 
                                        e'
        | _ -> let e' = expr (builder, stable) (typ, sexp) in
          let _ = L.build_store e' (find_variable stable s) builder in 
          e')
  | SCall ("printf", [e]) ->
    (match e with 
      (Int, SId s) -> L.build_call printf_func [| int_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (Float, SId s) -> L.build_call printf_func [| float_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (String, SId s) -> L.build_call printf_func [| string_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | (Bool, SId s) -> L.build_call printf_func [| int_format_str builder ; (expr (builder, stable) e) |] "printf" builder
    | _ -> L.build_call printf_func [| (expr (builder, stable) (A.String, (to_string styp e))) |] "printf" builder )
    | SCall (name, args) -> 
      (match name with  
          "array_get" -> array_get_def (builder, stable) args 
        | "array_set" -> array_set_def (builder, stable) args
        | "array_add" -> array_add_def (builder, stable) args
        | "array_len" -> array_len_def (builder, stable) args  
        | _ -> let (fdecl_opt, llvm_decl) = find_func stable name in
          let sfdecl = (match fdecl_opt with
                        Some(f) -> f
                      | _ -> raise (Failure "No function definition found"))
          in 
          let proc_args arg = expr (builder, stable) arg in
          let llargs = List.rev (List.map proc_args (List.rev args)) in
          let result = (match sfdecl.styp with 
                            A.Void -> ""
                          | _ -> name ^ "_result") in
                    L.build_call llvm_decl (Array.of_list llargs) result builder)
  | SDotOp(var, field) -> 
    let lvar = find_variable stable var in 
    let lvar' = L.build_load lvar "lvar'" builder in  
    let steven = match field with 
          "flag" -> 
            Llvm.build_struct_gep lvar' 1 "temp" builder
        | "name" -> 
            Llvm.build_struct_gep lvar' 0 "temp" builder
        | "data" -> 
            Llvm.build_struct_gep lvar' 2 "temp" builder
        | "src" -> L.build_struct_gep lvar' 0 "temp" builder
        | "dst" -> L.build_struct_gep lvar' 1 "temp" builder
        | "weight" -> L.build_struct_gep lvar' 2 "temp" builder
        | _ -> raise (Failure ("syntax error caught post parsing. Nonexistent field " ^ field))
    in 

    let steven' = match styp with 
          Uninitialized -> raise (Failure ("something went wrong " ^ field))
        | _ -> L.build_load steven (var ^ "." ^ field) builder 
    in
    (match field with 
          "flag" -> L.build_load steven (var ^ "." ^ field) builder 
        | "weight" -> L.build_load steven (var ^ "." ^ field) builder 
        | "src" -> 
          L.build_load steven "srcNode" builder
        | "dst" -> 
          L.build_load steven "srcNode" builder
        | "name" -> 
          L.build_load steven "srcNode" builder
        | _ ->
          let llvm_ty = ltype_of_typ styp in
          let new_ptr = L.build_pointercast steven' (L.pointer_type (llvm_ty)) "new_ptr" builder in
          L.build_load new_ptr (var ^ "." ^ field) builder)

    


    
    
  | SDotAssign(var, field, e) -> 
    let e' = expr (builder, stable) e in
    let (my_typ, expr) = e in
    let lvar = find_variable stable var in 
    (* bc its a pointer *)
    let lvar' = L.build_load lvar "lvar'" builder in
    let steven = match field with 
          "flag" -> 
              L.build_struct_gep lvar' 1 "temp" builder
        | "name" -> 
              L.build_struct_gep lvar' 0 "temp" builder
        | "data" -> 
              L.build_struct_gep lvar' 2 "temp" builder
        | "src" -> L.build_struct_gep lvar' 0 "temp" builder
        | "dst" -> L.build_struct_gep lvar' 1 "temp" builder
        | "weight" -> L.build_struct_gep lvar' 2 "temp" builder
        | _ -> raise (Failure ("syntax error caught post parsing. Nonexistent field " ^ field))
    in 
    let e'' = match field with 
          "flag" -> e' 
        | "weight" -> e'
        | "src" -> 
          e'
        | "dst" -> 
          e'
        | "name" -> 
          e'            
        | _ -> 
            let styp_ptr = L.build_malloc (ltype_of_typ my_typ) "bruh" builder in
            (* put data in *)
            let _ = L.build_store e' styp_ptr builder in 
            let ptr = 
              match field with 
              | "src" -> styp_ptr
              | "dst" -> styp_ptr (* must fix for data *)
              | _ -> L.build_pointercast styp_ptr (L.pointer_type (i8_t)) "name" builder 
            in
            ptr 
    in 
    L.build_store e'' steven builder 

  | SList(ses) ->
    let list_head = L.build_malloc list_t "new_list" builder in
    let _ = L.build_store (L.const_pointer_null (L.pointer_type list_node)) list_head builder in

    let rec link_list idx es prev_node = (match es with 
        [] -> 0
      | (typ, e) :: es -> let llvm_val = expr (builder, stable) (typ, e) in
        let llvm_ptr = L.build_malloc (ltype_of_typ typ) "arr_val" builder in
        let _ = L.build_store llvm_val llvm_ptr builder in
        let array_node = L.const_named_struct list_node [| L.const_pointer_null (L.pointer_type i8_t); L.const_pointer_null (L.pointer_type list_node); |] in 
        (** insert the llvm value into the node **)
        let gen_val = L.build_pointercast llvm_ptr (L.pointer_type i8_t) "i8ptr" builder in
        let node_p = L.build_malloc list_node "node_p" builder in 
        let val_ptr = L.build_struct_gep node_p 0 "valloc" builder in
        let _ = L.build_store array_node node_p builder in
        let _ = L.build_store gen_val val_ptr builder in
        (** store the pointer to the next node **)
        let _ = (if (idx = 0)
                    then 
                      (L.build_store node_p list_head builder)
                    else let p = L.build_struct_gep prev_node 1 "temp" builder in
                          L.build_store node_p p builder) in
      link_list (idx + 1) es node_p) in 
      let _ = link_list 0 ses (L.const_pointer_null list_node) in 
      (* let _ = L.dump_value (L.build_load list_head "temp" builder) in  *)
      L.build_load list_head "temp" builder


  


  | SDotCall(ds_name, mname, args) ->
    (match mname with 
      "addNode" -> add_node_def (builder, stable) styp ds_name args
    | "addEdge" -> add_edge_def (builder, stable) styp ds_name args
    | "getByName" -> get_by_name_def (builder, stable) ds_name args
    | "nameExists" -> check_name_exists_def (builder, stable) ds_name args
    | "getAllEdges" -> get_all_edges_def (builder, stable) ds_name args
    | "getAllNodes" -> get_all_nodes_def (builder, stable) ds_name args
    | "nodeExists" -> node_exists_def (builder, stable) ds_name args
    | "edgeExists" -> edge_exists_def (builder, stable) ds_name args
    | "removeNode" -> remove_node_def (builder, stable) ds_name args
    | "removeEdge" -> remove_edge_def (builder, stable) ds_name args
    | "getEdgesOf" -> get_edges_of_def (builder, stable) ds_name args
    | "set" -> array_set_def (builder, stable) ((List_t, SId(ds_name))::args)
    | "add" -> array_add_def (builder, stable) ((List_t, SId(ds_name))::args)
    | "get" -> array_get_def (builder, stable) ((List_t, SId(ds_name))::args) 
    | "len" -> array_len_def (builder, stable) ((List_t, SId(ds_name))::args) 
    | _ -> raise (Failure ("invalid methods")))
  | SEdge(n1, n2) -> 
      let n1' = expr (builder, stable) n1 in
      let n2' = expr (builder, stable) n2 in
      let edge_struct = L.build_malloc edge_struct "myEdgeStruct" builder in
      let src = Llvm.build_struct_gep edge_struct 0 "name'" builder in
      let dst = Llvm.build_struct_gep edge_struct 1 "name'" builder in
      let weight = Llvm.build_struct_gep edge_struct 2 "name'" builder in
      let _ = L.build_store n1' src builder in 
      let _ = L.build_store n2' dst builder in 
      let initWeight = L.const_int i32_t 0 in
      let _ = L.build_store initWeight weight builder in 
      edge_struct 
      
  | _ -> raise (Failure("expr: not implemented"))

(*** begin built-in func defs ***)

(** need to traverse the array for as many steps as indicated in the
    LLVM value i. Note the similarity to while loops, but we create 
    a custom predicate and body instead **)
and traverse_isteps i list (builder, stable) = 
    (** some constants that will be used to decrement counter i **)
    let zeroval = L.const_int i32_t 0 in
    let oneval  = L.const_int i32_t 1 in

    let currnode = L.build_malloc (L.pointer_type list_node) "" builder in
    let iter = L.build_malloc i32_t "" builder in
    let _ = L.build_store list currnode builder in
    let _ = L.build_store i iter builder in

    let _ = L.const_pointer_null (L.pointer_type list_node) in

    let (_, currLLVMfunc) = find_func stable stable.curr_func in 
    let pred_bb = L.append_block context "traverse_loop" currLLVMfunc in
    let _ = L.build_br pred_bb builder in

    let body_bb = L.append_block context "while_body" currLLVMfunc in
    (** body of traverse is stepping through linked list **) 
    let bb = L.builder_at_end context body_bb in
    let temp = L.build_load (L.build_struct_gep (L.build_load currnode "" bb) 1 "temp" bb) "temp" bb in

    (* let _ = L.build_store temp next_ptr bb in *)
    let _ = L.build_store (L.build_sub (L.build_load iter "" bb) oneval "subtract" bb) iter bb in
    let _ = L.build_store temp currnode bb in 
    let () = add_terminal bb (L.build_br pred_bb) in

    (** check if i has been brought down to 0, indicating finished traversal **)
    let pred_builder = L.builder_at_end context pred_bb in
    let bool_val = L.build_icmp L.Icmp.Ne (L.build_load iter "" pred_builder) zeroval "temp" pred_builder in
    (* let bool_val = L.build_icmp L.Icmp.Ne oneval zeroval "" pred_builder in *)

    let merge_bb = L.append_block context "merge" currLLVMfunc in
    (* let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in *)
    let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in 
    let _ = L.position_at_end merge_bb builder in 
    (* L.build_load next_ptr "" builder  *) 
    currnode

  and count_steps list (builder, stable) =
    let currnode = L.build_malloc (L.pointer_type list_node) "" builder in
    let zeroval = L.const_int i32_t 0 in
    let oneval  = L.const_int i32_t 1 in
    let iter = L.build_malloc i32_t "" builder in
 
    let _ = L.build_store (L.const_int i32_t 0) iter builder in
    let _ = L.build_store list currnode builder in
 
    let (_, currLLVMfunc) = find_func stable stable.curr_func in
 
        (* let start_bb = L.insertion_block builder in *)
        let bool_val_if = L.build_is_null list "" builder in
 
        let merge_bb_if = L.append_block context "merge" currLLVMfunc in
        let branch_instr = L.build_br merge_bb_if in
 
        let then_bb_if = L.append_block context "then" currLLVMfunc in
        let then_builder_if = L.builder_at_end context then_bb_if in
        let _ = L.build_store zeroval iter then_builder_if in
        (* let _ = L.build_call printf_func [| int_format_str then_builder_if ; (L.const_int i32_t 69) |] "printf" then_builder_if in *)
 
        (* let _ = L.build_call printf_func [| int_format_str builder ; (L.const_int i32_t 69) |] "printf" in *)
 
        let () = add_terminal then_builder_if branch_instr in
 
        let else_bb_if = L.append_block context "else" currLLVMfunc in
        let else_builder_if = L.builder_at_end context else_bb_if in
            let pred_bb = L.append_block context "traverse_loop" currLLVMfunc in
            let _ = L.build_br pred_bb else_builder_if in
 
            let body_bb = L.append_block context "while_body" currLLVMfunc in
            (** body of traverse is stepping through linked list **)
            let bb = L.builder_at_end context body_bb in
 
            let temp = L.build_load (L.build_struct_gep (L.build_load currnode "" bb) 1 "temp" bb) "temp" bb in
 
            (* let _ = L.build_store temp next_ptr bb in *)
            let _ = L.build_store (L.build_add (L.build_load iter "" bb) oneval "add" bb) iter bb in
            let _ = L.build_store temp currnode bb in
            let () = add_terminal bb (L.build_br pred_bb) in
 
            (** check if i has been brought down to 0, indicating finished traversal **)
            let pred_builder = L.builder_at_end context pred_bb in
            let bool_val = L.build_is_not_null (L.build_load currnode "" pred_builder) "" pred_builder in
 
            let merge_bb = L.append_block context "merge" currLLVMfunc in
            let m_build = L.builder_at_end context merge_bb in
            let () = add_terminal m_build (L.build_br merge_bb_if) in
            let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in
            (* let _ = L.position_at_end merge_bb builder in  *)
 
        let () = add_terminal else_builder_if branch_instr in
        let _ = L.build_cond_br bool_val_if then_bb_if else_bb_if builder in
 
        let _ = L.position_at_end merge_bb_if builder in
    iter
(* and array_delete_def (builder, stable) args = 
    (match args with
        (typ, SId(list_id)) :: index :: [] ->
          let list_dp = find_variable stable list_id in 
          let list_p = L.build_load list_dp "list" builder in
          let idx = expr (builder, stable) index in

          let zeroval = L.const_int i32_t 0 in
          

          let todeletev = traverse_isteps idx list_p (builder, stable) in
          let todelete = L.build_load todeletev "" builder in 
          let iminus1 = L.build_alloca i32_t "iter" builder in
          let _ = L.build_store (L.build_sub idx (L.const_int i32_t 1) "temp" builder) iminus1 builder in
          let beforev = traverse_isteps iminus1 list_p (builder, stable) in
          let before = L.build_load afterv "" builder in 

          (* let before_next = L.build_struct_gep before 1 "next" builder in 
          let _ = L.build_store node_p before_next builder in 
          if (L.is_null after) 
                  then list_dp
                  else let _ = L.build_store after (L.build_struct_gep node_p 1 "next" builder) builder in list_dp *)

          L.build_load targetptr "retval" builder

      | _ -> raise (Failure "wrong args to array_delete")) *)

and array_get_def (builder, stable) args = 
    (match args with
      (typ, SId(list_id)) :: index :: [] -> 
            let list_dp = find_variable stable list_id in 
            (* let _ = L.dump_value list_dp in  *)
            let list_p = L.build_load list_dp "list" builder in
            let idx = expr (builder, stable) index in
            let targetv = traverse_isteps idx list_p (builder, stable) in
            let target = L.build_load targetv "" builder in
            let targetptr = L.build_struct_gep target 0 "temp" builder in
            let value = L.build_load targetptr "retval" builder in
            value

      | _ -> raise (Failure "wrong args to array_get")) 

and array_set_def (builder, stable) args =
    match args with
        (typ, SId(list_id)) :: index :: (vtyp, exp) :: [] ->
            let llvm_val = expr (builder, stable) (vtyp, exp) in
            let llvm_ptr = L.build_malloc (ltype_of_typ vtyp) "arr_val" builder in
            let _ = L.build_store llvm_val llvm_ptr builder in
            let llvm_i8 = L.build_pointercast llvm_ptr (L.pointer_type i8_t) "i8ptr" builder in
            let list_dp = find_variable stable list_id in 
            let list_p = L.build_load list_dp "list" builder in
            let idx =  expr (builder, stable) index in
            let targetv = traverse_isteps idx list_p (builder, stable) in
            let target = L.build_load targetv "" builder in 
            let targetptr = L.build_struct_gep target 0 "temp" builder in 
            L.build_store llvm_i8 targetptr builder
        | _ -> raise (Failure "wrong args to array_set")

and array_len_def (builder, stable) args =
    match args with
        (typ, SId(list_id)) :: [] ->
            let list_dp = find_variable stable list_id in 
            let list_p = L.build_load list_dp "list" builder in

            let counterp = count_steps list_p (builder, stable) in
            let counter = L.build_load counterp "" builder in
            counter
        | _ -> raise (Failure "wrong args to array_set")



        and array_add_def (builder, stable) args =
    match args with
      (typ, SId(list_id)) :: index :: (vtyp, exp) :: [] ->
        let llvm_val = expr (builder, stable) (vtyp, exp) in
        let llvm_ptr = L.build_malloc (ltype_of_typ vtyp) "arr_val" builder in
        let _ = L.build_store llvm_val llvm_ptr builder in
        let zeroval = L.const_int i32_t 0 in 
        let oneval  = L.const_int i32_t 1 in

        let array_node = L.const_named_struct list_node [| L.const_pointer_null (L.pointer_type i8_t); L.const_pointer_null (L.pointer_type list_node); |] in 
        (** generalize the value to an i8_t pointer **)
        let llvm_i8 = L.build_pointercast llvm_ptr (L.pointer_type i8_t) "i8ptr" builder in

        (** create the node variable **)
        let node_p = L.build_malloc list_node "node_p" builder in 
        let val_ptr = L.build_struct_gep node_p 0 "valloc" builder in
        let _ = L.build_store array_node node_p builder in
        let _ = L.build_store llvm_i8 val_ptr builder in


        (** get the list **)
        let list_dp = find_variable stable list_id in 
        let list_p = L.build_load list_dp "list" builder in
        let idx = expr (builder, stable) index in
        let idxminusone = L.build_malloc i32_t "" builder in
        let _ = L.build_store (L.build_sub idx oneval "" builder) idxminusone builder in


        (** if you want to add to beginning of list **)
            let (_, currLLVMfunc) = find_func stable stable.curr_func in 
            (* let start_bb = L.insertion_block builder in *)
            let bool_val = L.build_icmp L.Icmp.Eq zeroval idx "" builder in

            let merge_bb = L.append_block context "merge" currLLVMfunc in
            let branch_merge = L.build_br merge_bb in

            let then_bb = L.append_block context "then" currLLVMfunc in
            let then_builder = L.builder_at_end context then_bb in
            let curnextptr = L.build_struct_gep node_p 1 "" then_builder in (**TODO: this line is a guestimate :o*) 
            let _ = L.build_store list_p curnextptr then_builder in (**TODO: this line is a guestimate :o*) 
            let _ = L.build_store node_p list_dp then_builder in  (**TODO: this line is a guestimate :o*) 


            (* let (then_builder, _) = stmt ((L.builder_at_end context then_bb), stable) then_stmt in *)
            let () = add_terminal then_builder branch_merge in

            let else_bb = L.append_block context "else" currLLVMfunc in
            let else_builder = L.builder_at_end context else_bb in

            let beforev = traverse_isteps (L.build_load idxminusone "" else_builder) list_p (else_builder, stable) in
            let before = L.build_load beforev "" else_builder in 
            let beforeptr = L.build_struct_gep before 1 "temp" else_builder in 
            let _ = L.build_store node_p beforeptr else_builder in    

            let targetv = traverse_isteps idx list_p (else_builder, stable) in
            let target = L.build_load targetv "" else_builder in 

            let curnext = L.build_struct_gep node_p 1 "temp" else_builder in

            let _ = L.build_store target curnext else_builder in

            let () = add_terminal else_builder branch_merge in 
            let _ = L.build_cond_br bool_val then_bb else_bb builder in

            let _ = L.position_at_end merge_bb builder in 
            list_p


        (* let beforev = traverse_isteps idx list_p (builder, stable) in
        let before = L.build_load beforev "" builder in 

        let iplus1 = L.build_malloc i32_t "iter" builder in
        let _ = L.build_store (L.build_add idx oneval "temp" builder) iplus1 builder in

        let afterv = traverse_isteps (L.build_load iplus1 "" builder) list_p (builder, stable) in
        let after = L.build_load afterv "" builder in 

        let before_next = L.build_struct_gep before 1 "next" builder in 
        let _ = L.build_store node_p before_next builder in 
        if (L.is_null after) 
                then list_dp
                else let _ = L.build_store after (L.build_struct_gep node_p 1 "next" builder) builder in list_dp *)

      | _ -> raise (Failure "wrong args to array_add")

and get_all_nodes_def (builder, stable) ds_name lst = 
        

        let ds = find_variable stable ds_name in 
        let ds' = L.build_load ds "graph_ptr" builder in 
              
        let nodesList = L.define_global "nodesList" (L.const_pointer_null (list_t)) the_module in 
   

        let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in

        let llNodes = L.build_load llNodesPtr "head" builder in

        let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in

        let _ = L.build_store llNodes llNodes' builder in

        

        let (_, currLLVMfunc) = find_func stable stable.curr_func in

        

        (* is the curr node null? *)

        let pred_bb = L.append_block context "while" currLLVMfunc in

        let _ = L.builder_at_end context pred_bb in

        let pred_builder = L.builder_at_end context pred_bb in

        let x = L.build_load llNodes' "putMeHere" pred_builder in

        let bool_val = L.build_is_not_null x "curr" pred_builder in

        

        (* body of the while, including the if/else *)

        let body_bb = L.append_block context "while_body" currLLVMfunc in

        let body_builder = L.builder_at_end context body_bb in

        

        (* conditional for if currNode*)

        let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in

        let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in

        let currNode = L.build_load currNodePtr "stored_nodeA'" body_builder in

        (* labelling the blocks for if else *)

        

        let then_bb = L.append_block context "then" currLLVMfunc in

        let else_bb = L.append_block context "else" currLLVMfunc in

        let merge_bb = L.append_block context "merge" currLLVMfunc in

        

        let _ = L.build_br then_bb body_builder in

                (* then basic block and builder that returns a true if found *)

        let then_builder = L.builder_at_end context then_bb in

        (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)

        

        let curr_node = L.build_malloc list_node "node" then_builder in 

        let curr_node_ptr_ptr = L.build_struct_gep curr_node 0 "nodes" then_builder in

        let curr_node_next_ptr = L.build_struct_gep curr_node 1 "nodes" then_builder in

        let nodeForList = L.build_malloc node_t "please_work" then_builder in

        let _ = L.build_store currNode nodeForList then_builder in 

        let currNodeVoidPtr = L.build_pointercast nodeForList (L.pointer_type i8_t) "currNodeVoidPtr" then_builder in 

        let _ = L.build_store currNodeVoidPtr curr_node_ptr_ptr then_builder in 

        let next = L.build_load nodesList "nextNodes" then_builder in 

        let _ = L.build_store next curr_node_next_ptr then_builder in

        let _ = L.build_store curr_node nodesList then_builder in 

        let _ = L.build_br else_bb then_builder in

                (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)

        (*hopefully this builds the proper return instruction *)

        (* if we haven't found our node *)

        let else_builder = L.builder_at_end context else_bb in

        

        (* get the head of our node linked list *)

        let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in

        let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in

        let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in

        let _ = L.build_store load_next_ptr llNodes' else_builder in

        let _ = L.build_br pred_bb else_builder in

        

        (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)

        let _ = L.builder_at_end context merge_bb in

        

        (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)

        let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

        

        let _ = L.build_br pred_bb builder in

        let _ = L.position_at_end merge_bb builder in

        (* placeholder *)
        L.build_load nodesList "return" builder

and check_name_exists_def (builder, stable) ds_name lst =
    let to_find = match lst with 
      x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
    in 
    (* added so we can just return once  *)
    let ret_ptr = L.build_alloca i1_t "ret_true" builder in
    let bool = L.const_int (ltype_of_typ A.Bool) 0 in
    let _ = L.build_store bool ret_ptr builder in 

    (* retrieve pointer of node to find and graph to traverse *)
    let to_find' = expr (builder, stable) to_find in
    let ds = find_variable stable ds_name in
    let ds' = L.build_load ds "graph_ptr" builder in 


    (* get the head of our node linked list *)
    let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in
    let llNodes = L.build_load llNodesPtr "head" builder in
    let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in
    let _ = L.build_store llNodes llNodes' builder in

    let (_, currLLVMfunc) = find_func stable stable.curr_func in

    (* is the curr node null?  *)
    let pred_bb = L.append_block context "while" currLLVMfunc in
    let _ = L.builder_at_end context pred_bb in
    let pred_builder = L.builder_at_end context pred_bb in
    let x = L.build_load llNodes' "putMeHere" pred_builder in
    let bool_val = L.build_is_not_null x "curr" pred_builder in

    (* body of the while, including the if/else *)
    let body_bb = L.append_block context "while_body" currLLVMfunc in
    let body_builder = L.builder_at_end context body_bb in

    (* conditional for if currNode*)
    let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in
    let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
    let currNode = L.build_load currNodePtr "stored_node'" body_builder in
    (* labelling the blocks for if else *)

    let if_bb = L.append_block context "if" currLLVMfunc in
    let then_bb = L.append_block context "then" currLLVMfunc in
    let else_bb = L.append_block context "else" currLLVMfunc in
    let merge_bb = L.append_block context "merge" currLLVMfunc in

    let _ = L.build_br if_bb body_builder in

    let if_builder = L.builder_at_end context if_bb in

    let namePtr = L.build_struct_gep currNode 0 "namePtr" if_builder in 
    let nodeName = L.build_load namePtr "nodeName" if_builder in 
    let if_found_bool_val = L.build_call strcmp_func [| to_find';
                                                  nodeName
                                                |] "strcmp" if_builder in

    let zero = L.const_int (ltype_of_typ A.Int) 0 in
    let equal = L.build_icmp L.Icmp.Eq if_found_bool_val zero "equal" if_builder in

    let _ = L.build_cond_br equal then_bb else_bb if_builder in


    (* then basic block and builder that returns a true if found *)
    let then_builder = L.builder_at_end context then_bb in
    let _ = L.build_store equal ret_ptr then_builder in 

    (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
    let _ = L.build_br merge_bb then_builder in
    (*hopefully this builds the proper return instruction *)

    (* if we haven't found our node *)
    let else_builder = L.builder_at_end context else_bb in
    let _ = L.build_store equal ret_ptr else_builder in 

    (* get the head of our node linked list *)
    let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in
    let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
    let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in
    let _ = L.build_store load_next_ptr llNodes' else_builder in
    let _ = L.build_br pred_bb else_builder in


    (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
    let _ = L.builder_at_end context merge_bb in

    (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
    let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

    let _ = L.build_br pred_bb builder in
    let _ = L.position_at_end merge_bb builder in
    
    L.build_load ret_ptr "toRtrn" builder


and get_by_name_def (builder, stable) ds_name lst =
  let to_find = match lst with 
  x::[] -> x
  | _ -> raise (Failure ("too many arguments"))
  in 
  (*let ret_nd = L.build_alloca ()*)

  let ret_nd = L.build_malloc  (L.pointer_type node_struct) "ret_nd" builder in 
  let _ = L.build_store (L.const_pointer_null (L.pointer_type node_struct)) ret_nd builder in 
  (*let loaded_null_ptr = L.build_load nullPtr "null_ptr_loaded" builder in
  let _ = L.build_store loaded_null_ptr ret_nd builder in*)

  (* retrieve pointer of node to find and graph to traverse *)
  let to_find' = expr (builder, stable) to_find in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our node linked list *)
  let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in
  let llNodes = L.build_load llNodesPtr "head" builder in
  let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in
  let _ = L.build_store llNodes llNodes' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llNodes' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in
  let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currNode = L.build_load currNodePtr "stored_node'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in

  let namePtr = L.build_struct_gep currNode 0 "namePtr" if_builder in 
  let nodeName = L.build_load namePtr "nodeName" if_builder in 
  let if_found_bool_val = L.build_call strcmp_func [| to_find';
                                                nodeName
                                              |] "strcmp" if_builder in

  let zero = L.const_int (ltype_of_typ A.Int) 0 in
  let equal = L.build_icmp L.Icmp.Eq if_found_bool_val zero "equal" if_builder in

  let _ = L.build_cond_br equal then_bb else_bb if_builder in


  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)
  let _ = L.build_store currNode ret_nd then_builder in 

  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_builder in
  (*hopefully this builds the proper return instruction *)
 
  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in
  let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llNodes' else_builder in
  let _ = L.build_br pred_bb else_builder in

 
  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
 
  (* placeholder *)
   (* raise (Failure ("")) *)
  L.build_load ret_nd "toRtrn" builder
  (* let the_str = L.const_pointer_null (L.pointer_type i8_t) in *)
  (*L.build_store nodeName res then_builder*)
  (* L.build_call printf_func [|nodeName|] "printf" builder *)
        
and get_all_edges_def (builder, stable) ds_name lst = 

  let ds = find_variable stable ds_name in 
  let ds' = L.build_load ds "graph_ptr" builder in 

      
  let edgesList = L.define_global "edgesList" (L.const_pointer_null (list_t)) the_module in 

  let llEdgesPtr = L.build_struct_gep ds' 1 "edges" builder in
  let llEdges = L.build_load llEdgesPtr "head" builder in
  let llEdges' = L.define_global "llEdges" (L.const_pointer_null (L.pointer_type edge_node)) the_module in
  let _ = L.build_store llEdges llEdges' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null? *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llEdges' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llEdges' "putMeHere" body_builder in
  let currEdgePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currEdge = L.build_load currEdgePtr "stored_nodeA'" body_builder in
  (* labelling the blocks for if else *)

  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br then_bb body_builder in
          (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)

  let curr_edge = L.build_malloc list_node "node" then_builder in 
  let curr_edge_ptr_ptr = L.build_struct_gep curr_edge 0 "nodes" then_builder in
  let curr_edge_next_ptr = L.build_struct_gep curr_edge 1 "nodes" then_builder in
  let edgeForList = L.build_malloc edge_t "please_work" then_builder in
  let _ = L.build_store currEdge edgeForList then_builder in 
  let currEdgeVoidPtr = L.build_pointercast edgeForList (L.pointer_type i8_t) "currEdgeVoidPtr" then_builder in 
  let _ = L.build_store currEdgeVoidPtr curr_edge_ptr_ptr then_builder in 
  let next = L.build_load edgesList "nextEdges" then_builder in 
  let _ = L.build_store next curr_edge_next_ptr then_builder in
  let _ = L.build_store curr_edge edgesList then_builder in 
  let _ = L.build_br else_bb then_builder in
          (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  (*hopefully this builds the proper return instruction *)
  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llEdges' "toBeHere" else_builder in
  let llEdgesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llEdgesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llEdges' else_builder in
  let _ = L.build_br pred_bb else_builder in

  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
  (* placeholder *)
  L.build_load edgesList "return" builder  

and add_node_def (builder, stable) styp ds_name lst =

  let to_add = match lst with 
      x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 

  let n_to_add = expr (builder, stable) to_add in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in  
  let nodes = L.build_struct_gep ds' 0 "nodes" builder in (*ptr to our linked list of nodes*)
  let nodes_hd = L.build_load nodes "nodes_hd" builder in (*the head of our linked list*)

  let new_node = L.build_malloc node_node "new_node" builder in (*create a new node head to add*)
  let lst_rst = L.build_struct_gep new_node 1 "lst_rst'" builder in (* where we will put the rest of the list *)
  let node_ptr = L.build_struct_gep new_node 0 "node_ptr" builder in (* where we will point to node being added *)
  let _ = L.build_store nodes_hd lst_rst builder in (* add ptr to rest of nodes list *)
  let _ = L.build_store n_to_add node_ptr builder in (* point to newly added node *)


  L.build_store new_node nodes builder
and add_edge_def (builder, stable) styp ds_name lst =
  let to_add = match lst with 
      x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 
  let e_to_add = expr (builder, stable) to_add in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 
  let edges = L.build_struct_gep ds' 1 "edges" builder in (*ptr to our linked list of nodes*)
  let edges_hd = L.build_load edges "edges_hd" builder in (*the head of our linked list*)
  
  let new_edge = L.build_malloc edge_node "new_edge" builder in (*create a new node head to add*)
  let lst_rst = L.build_struct_gep new_edge 1 "lst_rst'" builder in (* where we will put the rest of the list *)
  let edge_ptr = L.build_struct_gep new_edge 0 "edge_ptr" builder in (* where we will point to node being added *)
  let _ = L.build_store edges_hd lst_rst builder in (* add ptr to rest of nodes list *)
  let _ = L.build_store e_to_add edge_ptr builder in (* point to newly added node *)

let src_ptr = L.build_struct_gep e_to_add 0 "src_ptr" builder in
  let dst_ptr = L.build_struct_gep e_to_add 1 "dst_ptr" builder in
  let src = L.build_load src_ptr "src'" builder in
  let dst = L.build_load dst_ptr "dst'" builder in

  let src_exists_loaded = ll_node_exists_then_add_node_def (builder, stable) ds_name src in
  let dst_exists_loaded = ll_node_exists_then_add_node_def (builder, stable) ds_name dst in
  let (_, currLLVMfunc) = find_func stable stable.curr_func in
  
  let if_bb = L.append_block context "if" currLLVMfunc in
    let else_bb = L.append_block context "else" currLLVMfunc in
    let merge_bb = L.append_block context "merge" currLLVMfunc in
  
    let _ = L.build_br if_bb builder in
  
    let if_builder = L.builder_at_end context if_bb in
    let _ = L.build_cond_br src_exists_loaded merge_bb else_bb if_builder in
  
    let else_builder = L.builder_at_end context else_bb in

    let _ = add_ll_node_def (else_builder, stable) styp ds_name src in
    let _ = L.build_br merge_bb else_builder in
    let _ = L.position_at_end merge_bb builder in

    let if_bb2 = L.append_block context "if" currLLVMfunc in
      let else_bb2 = L.append_block context "else" currLLVMfunc in
      let merge_bb2 = L.append_block context "merge" currLLVMfunc in
    
      let _ = L.build_br if_bb2 builder in
    
      let if_builder2 = L.builder_at_end context if_bb2 in
      let _ = L.build_cond_br dst_exists_loaded merge_bb2 else_bb2 if_builder2 in
    
      let else_builder2 = L.builder_at_end context else_bb2 in
  
      let _ = add_ll_node_def (else_builder2, stable) styp ds_name dst in
      let _ = L.build_br merge_bb2 else_builder2 in
      let _ = L.position_at_end merge_bb2 builder in
  


  L.build_store new_edge edges builder
and add_ll_node_def (builder, stable) styp ds_name n_to_add =
  let ds = find_variable stable ds_name in 
  let ds' = L.build_load ds "graph_ptr" builder in 

  let nodes = L.build_struct_gep ds' 0 "nodes" builder in (*ptr to our linked list of nodes*)
  let nodes_hd = L.build_load nodes "nodes_hd" builder in (*the head of our linked list*)

  let new_node = L.build_malloc node_node "new_node" builder in (*create a new node head to add*)
  let lst_rst = L.build_struct_gep new_node 1 "lst_rst'" builder in (* where we will put the rest of the list *)
  let node_ptr = L.build_struct_gep new_node 0 "node_ptr" builder in (* where we will point to node being added *)
  let _ = L.build_store nodes_hd lst_rst builder in (* add ptr to rest of nodes list *)
  let _ = L.build_store n_to_add node_ptr builder in (* point to newly added node *)

  L.build_store new_node nodes builder
and ll_node_exists_then_add_node_def (builder, stable) ds_name to_find' =
  (* added so we can just return once  *)
  let ret_ptr = L.build_alloca i1_t "ret_true" builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 0 in
  let _ = L.build_store bool ret_ptr builder in 

  (* retrieve pointer of node to find and graph to traverse *)
  (* let to_find' = expr (builder, stable) to_find in *)
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our node linked list *)
  let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in
  let llNodes = L.build_load llNodesPtr "head" builder in
  let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in
  let _ = L.build_store llNodes llNodes' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llNodes' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in
  let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currNode = L.build_load currNodePtr "stored_node'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq currNode to_find' "found?" if_builder in
  let _ = L.build_cond_br if_found_bool_val then_bb else_bb if_builder in

  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_builder in 

  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_builder in
  (*hopefully this builds the proper return instruction *)

  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in
  let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llNodes' else_builder in
  let _ = L.build_br pred_bb else_builder in


  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in

  L.build_load ret_ptr "returnVal" builder
and node_exists_def (builder, stable) ds_name lst =
  let to_find = match lst with 
      x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 
  (* added so we can just return once  *)
  let ret_ptr = L.build_alloca i1_t "ret_true" builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 0 in
  let _ = L.build_store bool ret_ptr builder in 

  (* retrieve pointer of node to find and graph to traverse *)
  let to_find' = expr (builder, stable) to_find in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our node linked list *)
  let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in
  let llNodes = L.build_load llNodesPtr "head" builder in
  let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in
  let _ = L.build_store llNodes llNodes' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llNodes' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in
  let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currNode = L.build_load currNodePtr "stored_node'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq currNode to_find' "found?" if_builder in
  let _ = L.build_cond_br if_found_bool_val then_bb else_bb if_builder in

  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_builder in 

  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_builder in
  (*hopefully this builds the proper return instruction *)

  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in
  let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llNodes' else_builder in
  let _ = L.build_br pred_bb else_builder in


  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
  
  (* placeholder *)
  L.build_load ret_ptr "returnVal" builder
and edge_exists_def (builder, stable) ds_name lst =
  let to_find = match lst with 
    x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 
  (* added so we can just return once  *)
  let ret_ptr = L.build_alloca i1_t "ret_true" builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 0 in
  let _ = L.build_store bool ret_ptr builder in 

  (* retrieve pointer of node to find and graph to traverse *)
  let to_find' = expr (builder, stable) to_find in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our node linked list *)
  let llEdgesPtr = L.build_struct_gep ds' 1 "edges" builder in
  let llEdges = L.build_load llEdgesPtr "head" builder in
  let llEdges' = L.define_global "llEdges" (L.const_pointer_null (L.pointer_type edge_node)) the_module in
  let _ = L.build_store llEdges llEdges' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llEdges' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llEdges' "putMeHere" body_builder in
  let currEdgePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currEdge = L.build_load currEdgePtr "stored_node'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq currEdge to_find' "found?" if_builder in
  let _ = L.build_cond_br if_found_bool_val then_bb else_bb if_builder in

  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_builder in 

  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_builder in
  (*hopefully this builds the proper return instruction *)
  
  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llEdges' "toBeHere" else_builder in
  let llEdgesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llEdgesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llEdges' else_builder in
  let _ = L.build_br pred_bb else_builder in

  
  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
   
  (* placeholder *)
  L.build_load ret_ptr "returnVal" builder
and remove_node_def (builder, stable) ds_name lst =

  let to_remove = match lst with 
      x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 
  let ret_ptr = L.build_alloca i1_t "ret_true" builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 0 in
  let _ = L.build_store bool ret_ptr builder in 

  (* retrieve pointer of node to find and graph to traverse *)
  let to_remove' = expr (builder, stable) to_remove in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our node linked list *)
  let llNodesPtr = L.build_struct_gep ds' 0 "nodes" builder in
  let llNodes = L.build_load llNodesPtr "head" builder in
  let llNodes' = L.define_global "llNodes" (L.const_pointer_null (L.pointer_type node_node)) the_module in
  let prevNode = L.define_global "prevNode" (L.const_pointer_null (L.pointer_type node_node)) the_module in
  let _ = L.build_store llNodes prevNode builder in
  let _ = L.build_store llNodes llNodes' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llNodes' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llNodes' "putMeHere" body_builder in
  let currNodePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currNode = L.build_load currNodePtr "stored_node'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let then_then_bb = L.append_block context "then" currLLVMfunc in
  let then_else_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq currNode to_remove' "found?" if_builder in
  let _ = L.build_cond_br if_found_bool_val then_bb else_bb if_builder in

  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)

  (* if statement here *)
  let load_struct_ptr = L.build_load llNodes' "toBeHere" then_builder in
  let load_NodePtr = L.build_load prevNode "toBeHere" then_builder in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq load_struct_ptr load_NodePtr "found?" then_builder in
  let _ = L.build_cond_br if_found_bool_val then_else_bb then_then_bb then_builder in


  let then_then_builder = L.builder_at_end context then_then_bb in

  let loadPrevNode = L.build_load prevNode "loadHere" then_then_builder in 
  let nxtNodePtr = L.build_struct_gep loadPrevNode 1 "nxtNode" then_then_builder in 
  let currNodeNextPtr = L.build_struct_gep load_struct_ptr 1 "nodesmore" then_then_builder in
  let currNodeNext = L.build_load currNodeNextPtr "stored_nodemore'" then_then_builder in
  let _ = L.build_store currNodeNext nxtNodePtr then_then_builder in 
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_then_builder in 
  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_then_builder in

  
  let then_else_builder = L.builder_at_end context then_else_bb in
  let llNodesPtr_original = L.build_struct_gep ds' 0 "llNodesPtr_original" then_else_builder in
  let currNodeNextPtr = L.build_struct_gep load_struct_ptr 1 "nodesmore" then_else_builder in
  let currNodeNext = L.build_load currNodeNextPtr "stored_nodemore'" then_else_builder in
  let _ = L.build_store currNodeNext llNodesPtr_original then_else_builder in 
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_else_builder in 

  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_else_builder in
  (*hopefully this builds the proper return instruction *)
  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llNodes' "toBeHere" else_builder in
  let llNodesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llNodesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llNodes' else_builder in
  let _ = L.build_br pred_bb else_builder in

  
  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in

  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
    
  (* placeholder *)
  L.build_load ret_ptr "returnVal" builder
and remove_edge_def (builder, stable) ds_name lst =

  let to_remove = match lst with 
      x::[] -> x
     | _ -> raise (Failure ("too many arguments"))
  in 
  let ret_ptr = L.build_alloca i1_t "ret_true" builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 0 in
  let _ = L.build_store bool ret_ptr builder in


  (* retrieve pointer of edge to find and graph to traverse *)
  let to_remove' = expr (builder, stable) to_remove in
  let ds = find_variable stable ds_name in
  let ds' = L.build_load ds "graph_ptr" builder in 


  (* get the head of our edge linked list *)
  let llEdgesPtr = L.build_struct_gep ds' 1 "edges" builder in
  let llEdges = L.build_load llEdgesPtr "head" builder in
  let llEdges' = L.define_global "llEdges" (L.const_pointer_null (L.pointer_type edge_node)) the_module in
  let prevEdge = L.define_global "prevEdge" (L.const_pointer_null (L.pointer_type edge_node)) the_module in
  let _ = L.build_store llEdges prevEdge builder in
  let _ = L.build_store llEdges llEdges' builder in


  let (_, currLLVMfunc) = find_func stable stable.curr_func in


  (* is the curr edge null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llEdges' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in


  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in


  (* conditional for if currEdge*)
  let load_struct_ptr = L.build_load llEdges' "putMeHere" body_builder in
  let currEdgePtr = L.build_struct_gep load_struct_ptr 0 "edges" body_builder in
  let currEdge = L.build_load currEdgePtr "stored_edge'" body_builder in
  (* labelling the blocks for if else *)


  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let then_then_bb = L.append_block context "then" currLLVMfunc in
  let then_else_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in


  let _ = L.build_br if_bb body_builder in


  let if_builder = L.builder_at_end context if_bb in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq currEdge to_remove' "found?" if_builder in
  let _ = L.build_cond_br if_found_bool_val then_bb else_bb if_builder in


  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)


  (* if statement here *)
  let load_struct_ptr = L.build_load llEdges' "toBeHere" then_builder in
  let load_EdgePtr = L.build_load prevEdge "toBeHere" then_builder in
  let if_found_bool_val = L.build_icmp L.Icmp.Eq load_struct_ptr load_EdgePtr "found?" then_builder in
  let _ = L.build_cond_br if_found_bool_val then_else_bb then_then_bb then_builder in




  let then_then_builder = L.builder_at_end context then_then_bb in


  let loadPrevEdge = L.build_load prevEdge "loadHere" then_then_builder in
  let nxtEdgePtr = L.build_struct_gep loadPrevEdge 1 "nxtEdge" then_then_builder in
  let currEdgeNextPtr = L.build_struct_gep load_struct_ptr 1 "edgesmore" then_then_builder in
  let currEdgeNext = L.build_load currEdgeNextPtr "stored_edgemore'" then_then_builder in
  let _ = L.build_store currEdgeNext nxtEdgePtr then_then_builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_then_builder in
  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_then_builder in


  
  let then_else_builder = L.builder_at_end context then_else_bb in
  let llEdgesPtr_original = L.build_struct_gep ds' 1 "llEdgesPtr_original" then_else_builder in
  let currEdgeNextPtr = L.build_struct_gep load_struct_ptr 1 "edgesmore" then_else_builder in
  let currEdgeNext = L.build_load currEdgeNextPtr "stored_edgemore'" then_else_builder in
  let _ = L.build_store currEdgeNext llEdgesPtr_original then_else_builder in
  let bool = L.const_int (ltype_of_typ A.Bool) 1 in
  let _ = L.build_store bool ret_ptr then_else_builder in


  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  let _ = L.build_br merge_bb then_else_builder in
  (*hopefully this builds the proper return instruction *)
  (* if we haven't found our edge *)
  let else_builder = L.builder_at_end context else_bb in


  (* get the head of our edge linked list *)
  let load_struct_ptr = L.build_load llEdges' "toBeHere" else_builder in
  let llEdgesPtr' = L.build_struct_gep load_struct_ptr 1 "llEdgesPtr" else_builder in
  let load_next_ptr = L.build_load llEdgesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llEdges' else_builder in
  let _ = L.build_br pred_bb else_builder in


  
  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the edge*)
  let _ = L.builder_at_end context merge_bb in


  (* go to body if we still have edges to check out, go to merge cond. if we are out of edges *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in


  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
  
  (* placeholder *)

  L.build_load ret_ptr "returnVal" builder
and get_edges_of_def (builder, stable) ds_name lst =

  let to_find = match lst with 
    x::[] -> x
    | _ -> raise (Failure ("too many arguments"))
  in 
  let to_find' = expr (builder, stable) to_find in
  let ds = find_variable stable ds_name in 
  let ds' = L.build_load ds "graph_ptr" builder in 

  let edgesList = L.define_global "edgesList" (L.const_pointer_null (list_t)) the_module in 

  let llEdgesPtr = L.build_struct_gep ds' 1 "edges" builder in
  let llEdges = L.build_load llEdgesPtr "head" builder in
  let llEdges' = L.define_global "llEdges" (L.const_pointer_null (L.pointer_type edge_node)) the_module in
  let _ = L.build_store llEdges llEdges' builder in

  let (_, currLLVMfunc) = find_func stable stable.curr_func in

  (* is the curr node null?  *)
  let pred_bb = L.append_block context "while" currLLVMfunc in
  let _ = L.builder_at_end context pred_bb in
  let pred_builder = L.builder_at_end context pred_bb in
  let x = L.build_load llEdges' "putMeHere" pred_builder in
  let bool_val = L.build_is_not_null x "curr" pred_builder in

  (* body of the while, including the if/else *)
  let body_bb = L.append_block context "while_body" currLLVMfunc in
  let body_builder = L.builder_at_end context body_bb in

  (* conditional for if currNode*)
  let load_struct_ptr = L.build_load llEdges' "putMeHere" body_builder in
  let currEdgePtr = L.build_struct_gep load_struct_ptr 0 "nodes" body_builder in
  let currEdge = L.build_load currEdgePtr "stored_nodeA'" body_builder in
  (* labelling the blocks for if else *)

  let if_bb = L.append_block context "if" currLLVMfunc in
  let then_bb = L.append_block context "then" currLLVMfunc in
  let else_bb = L.append_block context "else" currLLVMfunc in
  let merge_bb = L.append_block context "merge" currLLVMfunc in

  let _ = L.build_br if_bb body_builder in

  let if_builder = L.builder_at_end context if_bb in
  let currEdgeSrcPtr = L.build_struct_gep currEdge 0 "nodes" if_builder in
  let currEdgeDstPtr = L.build_struct_gep currEdge 1 "nodes" if_builder in
  let currEdgeSrc = L.build_load currEdgeSrcPtr "currEdgeSrc'" if_builder in
  
  let currEdgeDst = L.build_load currEdgeDstPtr "currEdgeDst'" if_builder in
    
  let if_src = L.build_icmp L.Icmp.Eq currEdgeSrc to_find' "foundSrc?" if_builder in
  let if_dst = L.build_icmp L.Icmp.Eq currEdgeDst to_find' "foundDst?" if_builder in
  let if_found = L.build_or if_src if_dst "if_found" if_builder in
  let _ = L.build_cond_br if_found then_bb else_bb if_builder in

  (* then basic block and builder that returns a true if found *)
  let then_builder = L.builder_at_end context then_bb in
  (*let ret_ptr = L.build_alloca i1_t "ret_true" then_builder in*)

  let curr_edge = L.build_malloc list_node "node" then_builder in 
  let curr_edge_ptr_ptr = L.build_struct_gep curr_edge 0 "nodes" then_builder in
  let curr_edge_next_ptr = L.build_struct_gep curr_edge 1 "nodes" then_builder in
  let edgeForList = L.build_malloc edge_t "please_work" then_builder in
  let _ = L.build_store currEdge edgeForList then_builder in 
  let currEdgeVoidPtr = L.build_pointercast edgeForList (L.pointer_type i8_t) "currEdgeVoidPtr" then_builder in 
  let _ = L.build_store currEdgeVoidPtr curr_edge_ptr_ptr then_builder in 
  let next = L.build_load edgesList "nextEdges" then_builder in 
  let _ = L.build_store next curr_edge_next_ptr then_builder in
  let _ = L.build_store curr_edge edgesList then_builder in 
  let _ = L.build_br else_bb then_builder in
  (*replaced return with below *) (*let _ = L.build_ret ret_ptr then_builder in*)
  (*hopefully this builds the proper return instruction *)
  
  (* if we haven't found our node *)
  let else_builder = L.builder_at_end context else_bb in

  (* get the head of our node linked list *)
  let load_struct_ptr = L.build_load llEdges' "toBeHere" else_builder in
  let llEdgesPtr' = L.build_struct_gep load_struct_ptr 1 "llNodesPtr" else_builder in
  let load_next_ptr = L.build_load llEdgesPtr' "toBeHerenow" else_builder in
  let _ = L.build_store load_next_ptr llEdges' else_builder in
  let _ = L.build_br pred_bb else_builder in

  
  (* make sure merge bb returns a FALSE if we get to it, i.e. if we did not find the node*)
  let _ = L.builder_at_end context merge_bb in

  (* go to body if we still have nodes to check out, go to merge cond. if we are out of nodes *)
  let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in
  let _ = L.build_br pred_bb builder in
  let _ = L.position_at_end merge_bb builder in
    
  L.build_load edgesList "return" builder  
in

(*** end built-in func defs ***)


let rec sb_lines (builder, stable) (ls : sb_line list) = match ls with
    (SLocalBind (typ, s)) :: ls -> sb_lines (bind (builder, stable) (typ, s)) ls
  | (SLocalBindAssign (typ, s, e)) :: ls -> sb_lines (bindassign (builder, stable) (typ, s, e)) ls
  | (SLocalStatement sstmt) :: ls -> sb_lines (stmt (builder, stable) sstmt) ls
  | [] -> (builder, stable)

(*** Statements go here ***)
and stmt (builder, stable) = function
    SExpr (typ, sexp) -> 
      (match (typ, sexp) with
          (A.List_t, SAssign(s, (typ, SDotCall(ds, "getEdgesOf", args)))) -> bindassign (builder, stable) (A.List_t, s, (typ, SDotCall(ds, "getEdgesOf", args)))
        | (A.List_t, SAssign(s, (typ,SList(es)))) -> bindassign (builder, stable) 
                                                    (A.List_t, s, (typ, SList(es)))
        | _ -> let _ = expr (builder, stable) (typ, sexp) in (builder, stable))

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
  | SFor (e1, e2, e3, body) -> stmt (builder, stable) 
        (SBlock [SLocalStatement(SExpr e1); 
                SLocalStatement (SWhile(e2, SBlock [SLocalStatement(body) ; 
                                  SLocalStatement(SExpr e3)]))])
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
     (* | _ -> (builder, stable) *)


and  bind (builder, stable) = function
    (typ, s) -> 
        if stable.parent = None then 
          let init = match typ with
              A.Float -> L.const_float (ltype_of_typ typ) 0.0
            | A.Int -> L.const_int (ltype_of_typ typ) 0
            | A.Bool -> L.const_int (ltype_of_typ typ) 0
            | A.String -> L.const_pointer_null (L.pointer_type i8_t)
            | A.Node(ntyp) -> L.const_pointer_null node_t 
            | A.Edge(t) -> L.const_pointer_null edge_t 
            | A.Graph(t) -> L.const_pointer_null graph_ptr 
            | A.List_t -> L.const_pointer_null (L.pointer_type list_node)
            | _ -> raise (Failure "no global default value set")
          in 
          let new_glob = L.define_global s init the_module in
          let _ = match typ with 
              A.Node(ntyp) -> 
                  let node = L.build_malloc node_struct "node" builder in 
                  let data = L.build_malloc (ltype_of_typ ntyp) "data" builder in 
                  let name = L.build_malloc (ltype_of_typ A.String) "name" builder in 
                  let data_ptr = L.build_pointercast data (L.pointer_type (i8_t)) "data_ptr" builder in
                  let name_ptr = L.build_pointercast name (L.pointer_type (i8_t)) "name_ptr" builder in 
                  let name' = Llvm.build_struct_gep node 0 "name'" builder in
                  let data' = Llvm.build_struct_gep node 2 "data'" builder in
    
                  let _ = L.build_store name_ptr name' builder in 
                  let _ = L.build_store data_ptr data' builder in 
                  let _ = L.build_store node new_glob builder in
                  true
              | A.Graph(ntyp) -> 
                  let graph = L.build_malloc graph_t "node" builder in 
                  let nodes = L.const_pointer_null (L.pointer_type node_node) in 
                  let edges = L.const_pointer_null (L.pointer_type edge_node) in 
                  let nodes' = Llvm.build_struct_gep graph 0 "name'" builder in
                  let edges' = Llvm.build_struct_gep graph 1 "data'" builder in
    
                  let _ = L.build_store nodes nodes' builder in 
                  let _ = L.build_store edges edges' builder in 
                  let _ = L.build_store graph new_glob builder in
                  true
              | A.Edge(ntyp) -> 
                  let edge = L.build_malloc edge_struct "edge" builder in 
                  let noNode = L.const_pointer_null node_t in 
                  let src' = Llvm.build_struct_gep edge 0 "src''" builder in
                  let dst' = Llvm.build_struct_gep edge 1 "dst''" builder in
    
                  let _ = L.build_store noNode src' builder in 
                  let _ = L.build_store noNode dst' builder in 
                  let _ = L.build_store edge new_glob builder in
                true 
              | _ -> true
          in 
          let stable' = bind_var stable s new_glob in
          (builder, stable')
        else
          let new_var = L.build_alloca (ltype_of_typ typ) s builder in
          let _ = match typ with 
               A.Node(typ) -> 
                  let node = L.build_malloc node_struct "node" builder in 
                  let data = L.build_malloc (ltype_of_typ typ) "data" builder in 
                  let name = L.build_malloc (ltype_of_typ A.String) "name" builder in 
                  let data_ptr = L.build_pointercast data (L.pointer_type (i8_t)) "data_ptr" builder in
                  let name_ptr = L.build_pointercast name (L.pointer_type (i8_t)) "name_ptr" builder in 
                  let name' = Llvm.build_struct_gep node 0 "name'" builder in
                  let data' = Llvm.build_struct_gep node 2 "data'" builder in
    
                  let _ = L.build_store name_ptr name' builder in 
                  let _ = L.build_store data_ptr data' builder in 
                  let _ = L.build_store node new_var builder in
                  true
              | A.Graph(ntyp) -> 
                  let graph = L.build_malloc graph_t "node" builder in 
                  let nodes = L.const_pointer_null (L.pointer_type node_node) in 
                  let edges = L.const_pointer_null (L.pointer_type edge_node) in 

                  let nodes' = Llvm.build_struct_gep graph 0 "name'" builder in
                  let edges' = Llvm.build_struct_gep graph 1 "data'" builder in
    
                  let _ = L.build_store nodes nodes' builder in 
                  let _ = L.build_store edges edges' builder in 
                  let _ = L.build_store graph new_var builder in
                  true
              | A.Edge(ntyp) -> 
                  let edge = L.build_malloc edge_struct "edge" builder in 
                  let noNode = L.const_pointer_null node_t in 
                  let src' = Llvm.build_struct_gep edge 0 "name'" builder in
                  let dst' = Llvm.build_struct_gep edge 1 "data'" builder in
    
                  let _ = L.build_store noNode src' builder in 
                  let _ = L.build_store noNode dst' builder in 
                  let _ = L.build_store edge new_var builder in
                  true 
              | _ ->  true 
          in 
          let stable' = bind_var stable s new_var in
          (builder, stable')
          
(* Bind assignments are declaration-assignment one-liners *)
and bindassign (builder, stable) = function 
  (typ, s, e) ->   
 
    let e' =
        (match e with
                (_, SCall("array_get", _)) -> let exp = expr (builder, stable) e in
                              let e_cast = L.build_pointercast exp (L.pointer_type (ltype_of_typ typ)) "li_conv" builder in
                              L.build_load e_cast "val_ptr" builder
              | (_, SDotCall(_, "get", _)) -> let exp = expr (builder, stable) e in
                                              let e_cast = L.build_pointercast exp (L.pointer_type (ltype_of_typ typ)) "li_conv" builder in
                                              L.build_load e_cast "val_ptr" builder
              | _ -> expr (builder, stable) e) in

    if stable.parent = None then
          let init = match typ with
              A.Float -> L.const_float (ltype_of_typ typ) 0.0
            | A.Int -> L.const_int (ltype_of_typ typ) 0
            | A.Bool -> L.const_int (ltype_of_typ typ) 0
            | A.String -> L.const_pointer_null (L.type_of e')
            | A.Graph(t) -> L.const_pointer_null graph_ptr    
            | A.Node(t) -> L.const_pointer_null node_t           
            | A.Edge(t) -> L.const_pointer_null edge_t   
            | A.List_t -> L.const_pointer_null (L.pointer_type list_node)
            | _ -> raise (Failure "no global default value set")
          in 
          let new_glob = L.define_global s init the_module in
          let _ = match typ with 
              A.Node(ntyp) -> 
                  let node = L.build_malloc node_struct "node" builder in 
                  let data = L.build_malloc (ltype_of_typ ntyp) "data" builder in 
                  let name = L.build_malloc (ltype_of_typ A.String) "name" builder in 
                  let data_ptr = L.build_pointercast data (L.pointer_type (i8_t)) "data_ptr" builder in
                  let name_ptr = L.build_pointercast name (L.pointer_type (i8_t)) "name_ptr" builder in 
                  let name' = Llvm.build_struct_gep node 0 "name'" builder in
                  let data' = Llvm.build_struct_gep node 2 "data'" builder in
  
                  let _ = L.build_store name_ptr name' builder in 
                  let _ = L.build_store data_ptr data' builder in 
                  let _ = L.build_store node new_glob builder in
                  true
              | A.Graph(ntyp) -> 
                let graph = L.build_malloc graph_t "node" builder in 
                let nodes = L.const_pointer_null (L.pointer_type node_node) in 
                let edges = L.const_pointer_null (L.pointer_type edge_node) in 

                let nodes' = Llvm.build_struct_gep graph 0 "name'" builder in
                let edges' = Llvm.build_struct_gep graph 1 "data'" builder in
  
                let _ = L.build_store nodes nodes' builder in 
                let _ = L.build_store edges edges' builder in 
                let _ = L.build_store graph new_glob builder in
                true
              | A.Edge(ntyp) -> 
                  let edge = L.build_malloc edge_struct "edge" builder in 
                  let noNode = L.const_pointer_null node_t in 
                  let src' = Llvm.build_struct_gep edge 0 "name'" builder in
                  let dst' = Llvm.build_struct_gep edge 1 "data'" builder in
    
                  let _ = L.build_store noNode src' builder in 
                  let _ = L.build_store noNode dst' builder in 
                  let _ = L.build_store edge new_glob builder in
                  true 
              | _ -> true
          in 
          let _ = L.build_store e' new_glob builder in
          let stable' = bind_var stable s new_glob in
          (builder, stable')
    else
        let new_var = L.build_alloca (L.type_of e') s builder in
        let _ = L.build_store e' new_var builder in (*in node? *)
        let stable' = bind_var stable s new_var in
        (builder, stable')

and fdecl (builder, stable) f =
        let name = f.sfname in 
        let formal_types = Array.of_list (List.map (fun (t, _) -> ltype_of_typ t) f.sformals) in
        let ftype = L.function_type (ltype_of_typ f.styp) formal_types in
        let llvm_func = L.define_function name ftype the_module in
        let stable' = add_func name (Some f, llvm_func) stable in
        let stable'' = set_curr_func name stable' in
        let builder' = L.builder_at_end context (L.entry_block llvm_func) in 
        let stable''' = List.fold_left2 (fun stable_accum (t, x) p -> 
                                          let local = L.build_alloca (ltype_of_typ t) x builder' in
                                          let _ = L.build_store p local builder' in
                                          let _ = L.set_value_name x p in
                                          bind_var stable_accum x local) 
                                      stable'' f.sformals (Array.to_list (L.params llvm_func)) in
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
let init_stable = add_func "printf" (None, printf_func) init_stable in
let init_stable = add_func "strcmp" (None, strcmp_func) init_stable in
let init_stable = add_func "array_get" (None, array_get_func) init_stable in
let init_stable = add_func "array_set" (None, array_set_func) init_stable in
let init_stable = add_func "array_add" (None, array_add_func) init_stable in
let init_stable = add_func "array_len" (None, array_len_func) init_stable in
(* let init_stable = add_func "array_delete" (None, array_delete_func) init_stable in *)
(*let init_stable = add_func "addNode" (None, addNode) init_stable in *)
let init_stable = add_func "nodeExists" (None, nodeExists_func) init_stable in 

let (builder', stable') = program (builder, init_stable) decls in 
(* let _ = L.build_ret_int builder in  *)
let _ = L.build_ret (L.const_int i32_t 0) builder' in
the_module
