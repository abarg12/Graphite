(* Abstract Syntax Tree and functions for printing it *)

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or 

type setop = Inter | Diff | Union | Xor

type uop = Neg | Not

type typ = Int | Bool | Float | Void | Node | Edge | Graph | String |
           List | Struct 

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
  | DotOp of string * string 
  | DotAssign of string * string * expr
  | List of expr list
  | StructAssign of (string * (((typ * string * expr) list) 
                               * ((typ * string) list)))
  | Edge of expr * expr
  | GraphAssign of string * expr list
  | Noexpr

type bind_assign = typ * string * expr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt

type func_body = bind list * stmt list

type func_decl = {
    typ : typ;
    fname : string;
    formals : bind list;
    body : func_body;
  }
  
type decl = 
    Bind of bind
  | BindAssign of bind_assign
  | Fdecl of func_decl

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

let string_of_typ = function
    Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | Node -> "node"
  | Edge -> "edge"
  | Graph -> "graph"
  | String -> "string"
  | List -> "list"
  | Struct -> "struct"

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
  | String(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Setop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_setop o ^ " " ^ string_of_expr e2
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | DotOp(i1, i2) -> i1 ^ "." ^ i2
  | DotAssign(i1, i2, e1) -> i1 ^ "." ^ i2 ^ " = " ^ string_of_expr e1 ^ ";"
  | List(e) -> "[" ^ String.concat ", " (List.map string_of_expr e) ^ "]"
  | StructAssign(id, (init_binds, binds)) -> "struct " ^ id ^ " = " ^ "{\n" ^ 
                   String.concat "" (List.map string_of_bind_assign init_binds) ^ 
                   String.concat "" (List.map string_of_vdecl binds) ^ "}"
  | Edge(e1, e2) -> string_of_expr e1 ^ " -> " ^ string_of_expr e2
  | GraphAssign(id, flags) -> "graph " ^ id ^ "(" ^ String.concat ", " (List.map string_of_expr flags) ^ ")"
  | Noexpr -> ""

let rec string_of_stmt stmt = match stmt with
    Block(stmt) ->
      "{\n" ^  String.concat "" (List.map string_of_stmt stmt) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n"
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n"
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ") " ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ") " ^
      string_of_stmt s1 ^ "else " ^ string_of_stmt s2 
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s

let string_of_func_body (bs, ds) = String.concat "" (List.map string_of_vdecl bs) ^
                                   String.concat "" (List.map string_of_stmt ds) 

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map snd fdecl.formals) ^
  ") \n{\n" ^
  (string_of_func_body fdecl.body) ^
  "}\n"

let rec string_of_program = function 
    [] -> ""
  | Bind b :: ds -> string_of_vdecl b ^ string_of_program ds
  | Fdecl f :: ds -> string_of_fdecl f ^ string_of_program ds
  | BindAssign b :: ds -> string_of_bind_assign b ^ string_of_program ds
