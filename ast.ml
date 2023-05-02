(* Abstract Syntax Tree and functions for printing it *)

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or 

type setop = Inter | Diff | Union | Xor

type uop = Neg | Not

type typ = Int | Bool | Float | Void | Node of typ | Edge of typ | String |
           List | Dict | Uninitialized | Graph of (typ * string list)
(* "Uninitialized" is a temp type holder used for node *)

type bind = typ * string

type expr =
    Literal of int
  | Fliteral of string
  | BoolLit of bool
  | Id of string
  | String of string
  | Binop of expr * op * expr
  | Unop of uop * expr
  | Setop of expr * setop * expr
  | Assign of string * expr
  | Call of string * expr list
  | DotCall of string * string * expr list
  | DotOp of string * string 
  | DotAssign of string * string * expr
  | List of expr list
  | Dict of (string * ((typ * string * expr) list) 
                      * ((typ * string) list))
  | Edge of expr * expr
  | Noexpr

type bind_assign = typ * string * expr

type stmt =
    Block of b_line list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt
and
b_line = 
    LocalBind of bind
  | LocalBindAssign of bind_assign
  | LocalStatement of stmt
(*and
block_body = b_line list*)

type func_decl = {
    typ : typ;
    fname : string;
    formals : bind list;
    body : stmt;
  }
  
type decl = 
    Bind of bind
  | BindAssign of bind_assign
  | Fdecl of func_decl
  | Statement of stmt

type program = decl list 

(* Pretty-printing functions *)

let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mult -> "*"
  | Div -> "/"
  | Equal -> "=="
  | Neq -> "!="
  | Less -> "<"
  | Leq -> "<="
  | Greater -> ">"
  | Geq -> ">="
  | And -> "and"
  | Or -> "or"

let string_of_setop = function
    Union -> "union"
  | Inter -> "inter"
  | Xor -> "xor"
  | Diff -> "diff"

let string_of_uop = function
    Neg -> "-"
  | Not -> "not"

let rec string_of_typ = function
    Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | Uninitialized -> "" (*for later -- is this dumb lol? *)
  | Node(t) -> "node<" ^ string_of_typ t ^ ">"
  | Edge(t) -> "edge<" ^ string_of_typ t ^ ">"
  | Graph((typ, flags)) -> "graph <" ^ string_of_typ typ ^ ", " ^ String.concat ", " (List.map (fun (x) -> x) flags) ^ ">"
  | String -> "string"
  | List_t -> "list"
  | Dict -> "dict"

let string_of_vdecl (t, id) = string_of_typ t ^ " " ^ id ^ ";\n"

let rec string_of_bind_assign (t, id, e) = 
  string_of_typ t ^ " " ^ id ^ " = " ^ string_of_expr e ^ ";\n"
and 
string_of_expr = function
    Literal(l) -> string_of_int l
  | Fliteral(l) -> l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | Id(s) -> s
  | String(s) -> "\"" ^ s ^ "\""
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Setop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_setop o ^ " " ^ string_of_expr e2
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | DotOp(i1, i2) -> i1 ^ "." ^ i2
  | DotAssign(i1, i2, e1) -> i1 ^ "." ^ i2 ^ " = " ^ string_of_expr e1
  | DotCall(i1, i2, el) -> i1 ^ "." ^ i2 ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | List(e) -> "[" ^ String.concat ", " (List.map string_of_expr e) ^ "]"
  | Dict(id, init_binds, binds) -> "dict " ^ id ^ " = " ^ "{\n" ^ 
                   String.concat "" (List.map string_of_bind_assign init_binds) ^ 
                   String.concat "" (List.map string_of_vdecl binds) ^ "}"
  | Edge(e1, e2) -> string_of_expr e1 ^ " -> " ^ string_of_expr e2
  | Noexpr -> ""

let rec string_of_stmt stmt = match stmt with
    Block(bs) ->
      "{\n" ^  string_of_blines bs ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n"
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n"
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ") " ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ") " ^
      string_of_stmt s1 ^ "else " ^ string_of_stmt s2 
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s
and 
string_of_blines = function
    [] -> ""
  | LocalBind b :: ds -> string_of_vdecl b ^ string_of_blines ds
  | LocalBindAssign b :: ds -> string_of_bind_assign b ^ string_of_blines ds
  | LocalStatement s :: ds -> string_of_stmt s ^ string_of_blines ds 

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map (fun (t, id) -> string_of_typ t ^ " " ^ id) fdecl.formals) ^
  ") \n" ^ string_of_stmt fdecl.body

let rec string_of_program = function 
    [] -> ""
  | Bind b :: ds -> string_of_vdecl b ^ string_of_program ds
  | Fdecl f :: ds -> string_of_fdecl f ^ string_of_program ds
  | BindAssign b :: ds -> string_of_bind_assign b ^ string_of_program ds
  | Statement s :: ds -> string_of_stmt s ^ string_of_program ds
