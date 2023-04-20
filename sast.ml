(* Semantically-checked Abstract Syntax Tree and functions for printing it *)

open Ast
(*binop, uniop, dotcall*)
type sexpr = typ * sx
and sx =
    SLiteral of int 
  | SBoolLit of bool
  | SString of string
  | SFliteral of string 
  | SId of string
  | SBinop of sexpr * op * sexpr
  | SSetop of sexpr * setop * sexpr
  | SCall of string * sexpr list
  | SUnop of uop * sexpr
  | SAssign of string * sexpr
  | SDotCall of string * string * sexpr list
  | SDotOp of string * string
  | SDotAssign of string * string * sexpr
  | SList of sexpr list
  | SDict of (string * ((typ * string * sexpr) list)
                     * ((typ * string) list))
  | SEdge of sexpr * sexpr
  | SNoexpr


type sstmt =
    SExpr of sexpr
  | SReturn of sexpr
  | SBlock of sb_line list
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt
and sb_line =
  | SLocalBind of bind
  | SLocalBindAssign of typ * string * sexpr (*CHANGED HERE ASK ABBY*)
  | SLocalStatement of sstmt
(*and sblock_body = sb_line list*)

type sdecl = 
    SStatement of sstmt
  | SBindAssign of typ * string * sexpr
  | SBind of bind 
  | SFdecl of sfunc_decl 

and sfunc_decl = {
  styp : typ;
  sfname : string;
  sformals : bind list;
  sbody : sstmt;
}

type sprogram = sdecl list

(*** Printing Functions Below ***)
let string_of_svdecl(t, id) = string_of_typ t ^ " " ^ id ^ ";\n"

let rec string_of_sbind_assign (t, id, e) = 
  string_of_typ t ^ " " ^ id ^ " = " ^ string_of_sexpr e ^ ";\n"
and
string_of_sexpr (t, e) =
  "(" ^ string_of_typ t ^ " : " ^ (match e with
    SLiteral(l) -> string_of_int l
  | SBoolLit(l) -> string_of_bool l
  | SString(s) -> s
  | SFliteral(f) -> f
  | SCall(f, el) ->
    f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SBinop(e1, o, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2 
  | SSetop(e1, setop, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_setop setop ^ " " ^ string_of_sexpr e2 
  | SId(s) -> s
  | SUnop(o, e) -> string_of_uop o ^ string_of_sexpr e
  | SAssign(n, e) -> n ^ " = " ^ string_of_sexpr e
  | SDotCall(n1, n2, el) -> n1 ^ "." ^ n2 ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SDotOp(n1, n2) -> n1 ^ "." ^ n2
  | SDotAssign(n1, n2, e) -> n1 ^ "." ^ n2 ^ " = " ^ string_of_sexpr e
  | SList(es) -> "[" ^ String.concat ", " (List.map string_of_sexpr es) ^ "]"
  | SDict(id, bind_assigns, binds) -> "dict " ^ id ^ " = " ^ "{\n" ^ 
                    String.concat "" (List.map string_of_sbind_assign bind_assigns) ^
                    String.concat "" (List.map string_of_svdecl binds) ^ "}"
  | SEdge(e1, e2) -> string_of_sexpr e1 ^ " -> " ^ string_of_sexpr e2
  | SNoexpr -> ""
 ) ^ ")"

let rec string_of_sstmt stmt = match stmt with
    SExpr(expr)   -> string_of_sexpr expr ^ ";\n"
  | SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n"
  | SBlock(sbs) -> "{\n" ^  string_of_sblines sbs ^ "}\n"
  | SIf(e, s, SBlock([])) ->
      "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
  | SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
      string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
  | SFor(e1, e2, e3, s) ->
      "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
      string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
  | SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s
and string_of_sblines = function
    [] -> "" 
  | SLocalBind b :: ds -> string_of_vdecl b ^ string_of_sblines ds
  | SLocalBindAssign(typ, s, e) :: ds -> s ^ " = " ^ string_of_sexpr e ^ ";\n" ^ string_of_sblines ds (*CHANGEED HERE ASK ABBY*)
  | SLocalStatement s :: ds -> string_of_sstmt s ^ string_of_sblines ds 

let string_of_sfdecl sfdecl =
  string_of_typ sfdecl.styp ^ " " ^
  sfdecl.sfname ^ "(" ^ String.concat ", " (List.map (fun (t, id) -> string_of_typ t ^ " " ^ id) sfdecl.sformals) ^
  ") \n" ^ string_of_sstmt sfdecl.sbody

let rec string_of_sprogram = function 
    [] -> ""
  | SStatement s :: ds -> string_of_sstmt s ^ string_of_sprogram ds
  | SBindAssign(typ, s, e) :: ds -> s ^ " = " ^ string_of_sexpr e ^ ";\n" ^ string_of_sprogram ds
  | SBind b :: ds -> string_of_vdecl b ^ string_of_sprogram ds
  | SFdecl f :: ds -> string_of_sfdecl f ^ string_of_sprogram ds
